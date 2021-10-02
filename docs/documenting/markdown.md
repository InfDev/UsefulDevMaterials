# Про Markdown

## Общие сведения

Markdown - это простой способ форматирования текста, который отлично смотрится на любом устройстве. Он не делает ничего такого, как изменение размера, цвета или типа шрифта - только самое необходимое, используя символы клавиатуры, которые вы уже знаете.

Проблема Markdown заключается в большом количестве реализаций ("ароматов" или "вкусов"), но в 2019 году ситуация изменяеться в лучшую сторону, так как осуществляется попытка его строгого определения под именем [CommonMark](https://commonmark.org/) в базовой его части.

![CommonMark](./../assets/images/markdown.png).

[GitHub Flavored Markdown](https://github.github.com/gfm/) - строгое надмножество CommonMark. Все функции, которые поддерживаются в пользовательском контенте GitHub и не указаны в исходной спецификации CommonMark, называются расширениями и выделяются как таковые.

В приложениях .NET для преобразования текста в формате Markdown в HTML рекомендуется использовать [Markdig](https://github.com/lunet-io/markdig) - совместимый с CommonMark, расширяемый процессор Markdown для .NET.

Расширение [Markdown Editor](https://marketplace.visualstudio.com/items?itemName=MadsKristensen.MarkdownEditor) для [Visual Studio](https://visualstudio.microsoft.com/ru/) использует Markdig и представляет собой полнофункциональный редактор Markdown с предварительным просмотром в реальном времени и подсветкой синтаксиса. Поддерживает GitHub Flavored Markdown.
