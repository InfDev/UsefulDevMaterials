---
uid: development-tools
---

# Инструменты разработки

В разделе представлены только бесплатный инструментарий для разработки.

## Visual Studio Community

[Visual Studio Community](https://visualstudio.microsoft.com/ru/vs/community/) - полнофункциональная, расширяемая и бесплатная интегрированная среда разработки для создания современных приложений Android, iOS и Windows, а также веб-приложений и облачных служб.

Поддерживаются языки программирования: C#, Visual Basic, F#, C++, HTML, JavaScript, TypeScript, Python и др.

Ограничения: может устанавливаться и запускаться на ОС Windows 7 SP1 и выше.

## Visual Studio Code

[Visual Studio Code](https://code.visualstudio.com/) - это легкий, но мощный редактор исходного кода, который работает на вашем рабочем столе и доступен для Windows, macOS и Linux. Он поставляется со встроенной поддержкой JavaScript, TypeScript и Node.js и имеет богатую экосистему расширений для других языков (таких как C++, C#, Java, Python, PHP, Go) и сред выполнения (таких как .NET и Unity).

## Git & GitHub

См. раздел [Системные\Git & GitHub](../system-tools/git-and-github.md)

- [GitHub](https://guides.github.com/) -
- [GitHub-шпаргалка](https://training.github.com/downloads/ru/github-git-cheat-sheet/) - установка, настройка и использование.
- [Что такое Git? Зачем он нужен? - канал Sergey Nemchinskiy](https://www.youtube.com/watch?v=adHqyxdWWRM)

## NuGet

[NuGet](https://www.nuget.org/) - менеджер пакетов для .NET. Инструменты клиента NuGet предоставляют возможность создавать и потреблять пакеты. NuGet Gallery - это центральное хранилище пакетов, используемое всеми авторами и потребителями пакетов.

## Swagger

[Swagger - Разработка API для всех](https://swagger.io/)

## Postman

[Postman](https://www.getpostman.com/) - платформа совместной работы для разработки API.

Позволяет создавать и выполнять любые запросы REST, SOAP и GraphQL.

## LINQPad

[LINQPad](https://www.linqpad.net/) - предназначен не только для запросов LINQ, но и для любого выражения C# / F# / VB, блока операторов или программы.

Позволяет интерактивно запрашивать базы данных на современном языке запросов. LINQPad также поддерживает все API-интерфейсы LINQ в .NET Framework, включая LINQ to XML, PLINQ, Entity Framework и LINQ to SQL.

## Notepad++

[Notepad++](https://notepad-plus-plus.org/) — свободный текстовый редактор с открытым исходным кодом для Windows с подсветкой синтаксиса большого количества языков программирования и разметки.

## SQL Server Express

[SQL Server Express](https://www.microsoft.com/ru-ru/sql-server/sql-server-editions-express) - это уменьшенная, бесплатная версия SQL Server, которая включает ядро ​​базы данных. Хотя число поддерживаемых баз данных или пользователей не ограничено, оно ограничено использованием одного процессора, 1 ГБ памяти и 10 ГБ файлов базы данных.

Для разработки приложений и, во многих случаях, для работы приложений, где требуется использование в том числе и SQL-процедур.

## SQL Server Management Studio

[SQL Server Management Studio](https://docs.microsoft.com/ru-ru/sql/ssms/) (SSMS) — это интегрированная среда для управления любой инфраструктурой SQL, от SQL Server до баз данных SQL Azure. SSMS предоставляет средства для настройки, наблюдения и администрирования экземпляров SQL Server и баз данных. С помощью SSMS можно развертывать, отслеживать и обновлять компоненты уровня данных, используемые вашими приложениями, а также создавать запросы и скрипты.

## SQLite

SQLite - реализует небольшой, быстрый, автономный, высоконадежный, полнофункциональный механизм базы данных SQL. SQLite - самый распространенный в мире движок баз данных. SQLite встроен во все мобильные телефоны и большинство компьютеров и поставляется внутри множества других приложений, которые люди используют каждый день.

SQLite прекрасно работает как движок базы данных для большинства веб-сайтов с низким и средним трафиком (то есть для большинства веб-сайтов), см. ["Подходящее использование для SQLite"](https://www.sqlite.org/whentouse.html).

Входит в состав пакета Microsoft.EntityFrameworkCore.Sqlite - этот поставщик базы данных позволяет использовать Entity Framework Core с SQLite с [ограничениями](https://docs.microsoft.com/ru-ru/ef/core/providers/sqlite/limitations).

## Фиктивный SMTP

[smtp4dev](https://github.com/rnwood/smtp4dev) - фиктивный почтовый сервер SMTP для разработки и тестирования.

## Сервер LiveReload

- [Live Reload Web Server - blog](https://weblog.west-wind.com/posts/2021/Mar/23/LiveReloadServer-A-NET-Core-Based-Generic-Static-Web-Server-with-Live-Reload)
- [RickStrahl/LiveReloadServer - github](https://github.com/RickStrahl/LiveReloadServer)

LiveReloadServer - локальный веб-сервер, который позволяет запускать произвольные локальные папки как статический или, возможно, полудинамический веб-сайт. Укажите для него папку и вперед!

Автономный, локальный, кроссплатформенный веб-сервер статических файлов с автоматической загрузкой в ​​реальном времени, рендерингом Markdown и свободной поддержкой Razor Pages.

## Локализация и переводы

- [ResXManager](https://marketplace.visualstudio.com/items?itemName=TomEnglert.ResXManager) - расширение для Visual Studio
- [PoExtractor](https://github.com/lukaskabrt/PoExtractor)
  утилита извлекает переводимые строки из кода C # и VB, шаблонов Razor и шаблонов Liquid в файлы POT (шаблон переносимого объекта). Он разработан с учетом соглашений, используемых в проекте [OrchardCore](https://docs.orchardcore.net/en/dev/docs/reference/modules/Localize/).
