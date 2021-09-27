# Генератор DocFX

## Общие сведения

[DocFX](https://dotnet.github.io/docfx/) хорош там, когда необходимо сгенерировать API-документацию из кода .NET и включить в общую документацию.

DocFX поддерживает в качестве языка разметки Markdown + YAWL, а также имеет ограниченный список выходных форматов: `HTML`. В связке с инструментом [wkhtmltopdf](https://wkhtmltopdf.org/) можно получить документацию и в `PDF`-формате.

## Поиск на русском

Для поддержки поиска необходимо в файле конфигурации `docfx.json` установить параметры:

- "postProcessors": ["ExtractSearchIndex"] - для генерации индексного файла для поиска
- "\_enableSearch": true - в "globalMetadata" - для отображения поля ввода для фразы поиска

Для поддержки поиска и русскоязычных фраз необходимо:

1. Получить с [ресурса языковых расширений для Lunr](https://github.com/MihaiValentin/lunr-languages) (поиск на клиентской стороне) файлы `lunr.stemmer.support.js`, `lunr.multi.js` и `lunr.ru.js` и поместиить их в каталог, где расположен файл `search-worker.js` в шаблоне по умолчанию.
2. В файле `search-worker.js` произвести нижеследующие изменения

```javascript
importScripts('lunr.min.js');
importScripts('lunr.stemmer.support.js', 'lunr.multi.js', 'lunr.ru.js'); // Add russian search
...
var lunrIndex = lunr(function() {
      this.pipeline.remove(lunr.stopWordFilter);
      this.use(lunr.multiLanguage('en', 'ru')); // Add russian search
      this.ref('href');
```
