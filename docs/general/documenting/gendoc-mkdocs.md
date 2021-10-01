# Генератор MkDocs

## О MkDocs

[MkDocs](https://www.mkdocs.org/) - это быстрый, простой и великолепный генератор статических сайтов, предназначенный для создания проектной документации. Исходные файлы документации пишутся на Markdown и настраивается с помощью одного файла конфигурации YAML. Он прост в использовании и может быть расширен сторонними темами, плагинами и расширениями Markdown.

## Установка с pip

MkDocks требует установленного [Python](https://www.python.org/).

Прекрасной темой для MkDocs может быть [Material](https://squidfunk.github.io/mkdocs-material/). Она включает хорошую документацию по установке темы, настройке создаваемого сайта и публикации его на GitHub.

Перед установкой Material для MkDocs требуется установить [Python](https://www.python.org/downloads/).

Установка Material для MkDocs выполнится с совместимыми версиями всех зависимостей: MkDocs, Markdown, Pygments и Python Markdown Extensions. Material для MkDocs всегда стремится поддерживать последние версии, поэтому нет необходимости устанавливать эти пакеты отдельно.

## Установка с Docker

Официальный [образ Docker : squidfunk/mkdocs-material](https://hub.docker.com/r/squidfunk/mkdocs-material/) - отличный способ начать работу за несколько минут.

В составе образа версии 7.3 подключаются

- [Python](https://www.python.org/) >= 3.9.2
- [mkdocs](https://www.mkdocs.org/) >= 1.2.2
- [markdown](https://python-markdown.github.io/) >= 3.2, [Markdown: Syntax](https://daringfireball.net/projects/markdown/syntax)
- [Pygments](https://pygments.org/) >= 2.4
- [pymdown-extensions](https://facelessuser.github.io/pymdown-extensions/) >= 9.0, [документация](https://facelessuser.github.io/pymdown-extensions/)
- [mkdocs-material-extensions](https://pypi.org/project/mkdocs-material-extensions/) >= 1.0
- [mkdocs-material](https://github.com/squidfunk/mkdocs-material/releases/tag/7.3.0) 7.3

???+ question "Как добавить плагины в образ Docker?"

    См. [здесь](https://squidfunk.github.io/mkdocs-material/getting-started/#with-docker)
