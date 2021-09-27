---
uid: PowerShell
---

# PowerShell Core

## Общие сведения

[PowerShell Core](https://github.com/PowerShell/PowerShell) — это кроссплатформенный (Windows, Linux и macOS) инструмент/среда для автоматизации и настройки, который хорошо работает с существующими инструментами и оптимизирован для работы со структурированными данными (например, JSON, CSV, XML и т. Д.), API-интерфейсами REST и объектными моделями. Он включает оболочку командной строки, связанный язык сценариев и инфраструктуру для обработки командлетов.

PowerShell является расширяемым средством автоматизации от Microsoft с открытым исходным кодом. В [галерее PowerShell](https://www.powershellgallery.com/) можно найти полезные модули PowerShell, содержащие команды PowerShell и ресурсы Desired State Configuration (DSC). Вы также можете найти сценарии PowerShell, некоторые из которых могут содержать рабочие процессы PowerShell и которые определяют набор задач и обеспечивают последовательность для этих задач. Некоторые из этих пакетов созданы Microsoft, а другие - сообществом PowerShell.

## Концепции

PowerShell основывается на следующих концептуальных вещях:

- в PowerShell существуют
  - **алиасы (alias)** - служат для упрощения ввода команд (например, `clc` — это алиас команды `Clear-Content`)
  - **командлеты (cmdlet)** - представляют собой реализацию всех встроенных в PowerShell команд
  - **провайдеры (provider)** - обеспечивают доступ к файловой системе, реестру, хранилищу сертификатов и т.п.
  - **справочные файлы (helpfile)** - используются для получения дополнительной информации.
- основой PowerShell является объект, а не текст. Выходные данные команды — это объект. С помощью конвейера выходной объект можно отправить в другую команду в качестве входных данных.
- PowerShell и его невероятно гибкая система легко выявляются при помощи `Get-Command`. Даже для бывалых экспертов PowerShell `Get-Command` является бесценной, так как она работает во всех систсемах, не требует дополнительного содержимого и сохранит ваше драгоценное время. Кроме того, никто даже не в состоянии знать все существующие cmdlet - иногда вам всего лишь требуется быстро взглянуть на их синтаксис.
  Вывод команды `Get-Command` может фильтроваться с помощью символов маски для выявления cmdlet, имеющих определённую цель, например, `*Process` перечислит все cmdlet, которые имеют нечто для работы с процессами.
- PowerShell использует в именах связку "глагол — существительное". Имя каждого командлета состоит из стандартного глагола и определенного существительного, разделенных дефисом. Используемые в PowerShell глаголы (не только английские) выражают определенное действие. Имена существительные также используются как и в любом языке. Они описывают объекты определенных типов, требуемые для системного администрирования. Приведенные ниже примеры демонстрируют, насколько такие парные имена облегчают запоминание.
  В PowerShell есть рекомендуемый список стандартных глаголов. Использование существительных не так ограничено, но они всегда должны обозначать объекты, на которые направлено действие глагола. Вот примеры команд PowerShell: `Get-Process`, `Stop-Process`, `Get-Service`,`Stop-Service`.

## Visual Studio Code

[Visual Studio Code](https://docs.microsoft.com/ru-ru/powershell/scripting/components/vscode/using-vscode?view=powershell-7) — это кросс-платформенный редактор сценариев (Windows, macOS и Linux), созданный корпорацией Майкрософт. Наряду с расширением PowerShell он предоставляет широкие интерактивные возможности редактирования сценариев, упрощая написание надежных сценариев PowerShell. Также с помощью Visual Studio Code можно и отлаживать эти сценарии.

## Ресурсы

- [PowerShell - docs.microsoft.com](https://docs.microsoft.com/ru-ru/powershell/scripting/overview?view=powershell-7)
- [Как создавать команды и функции в Powershell вызывать их и передавать параметры](https://fixmypc.ru/post/sozdanie-funktsii-powershell-i-komandy-s-vyzovom-i-peredachei-parametrov/)
- [Working with the PowerShell Pipeline](https://techthoughts.info/working-with-the-powershell-pipeline/)
- [PowerShell Input & Output](https://techthoughts.info/powershell-input-output/)
- [PowerShell Scripts](https://techthoughts.info/powershell-scripts/)
- [Windows PowerShell. Коротко о главном](https://compress.ru/article.aspx?id=18333)
- [Шпаргалка по командам PowerShell](https://www.comparitech.com/net-admin/powershell-cheat-sheet/) или [Компактная шпаргалка (PDF)](https://cdn.comparitech.com/wp-content/uploads/2018/08/Comparitech-Powershell-cheatsheet.pdf)
- [Справка по Windows PowerShell](https://winintro.ru/windowspowershellhelp.ru/)
- [Книга рецептов Powershell Core 6.2. Жан-Эндрик Питерс](http://onreader.mdl.ru/PowershellCore62Cookbook/content/index.html)
- [7Zip4Powershell - архивация с шифрованием](https://www.sans.org/blog/powershell-7-zip-module-versus-compress-archive-with-encryption/)
- [Примеры кода командлетов](https://docs.microsoft.com/ru-ru/powershell/scripting/developer/cmdlet/examples-of-cmdlet-code?view=powershell-7)
- [Как работать с PSCustomObject в Powershell](https://fixmypc.ru/post/rabota-s-tipom-powershell-pscustomobject-na-primerakh/)
- [Сохранение учетных данных в PowerShell](https://windowsnotes.ru/powershell-2/soxranenie-uchetnyx-dannyx-v-powershell/)
- [Using saved credentials securely in PowerShell scripts](https://purple.telstra.com.au/blog/using-saved-credentials-securely-in-powershell-scripts)

- [Reference - Microsoft.PowerShell.Utility](https://docs.microsoft.com/ru-ru/powershell/module/microsoft.powershell.utility/?view=powershell-7)
- [Reference - Common Information Model (CIM) Servers: WMI, ...](https://docs.microsoft.com/ru-ru/powershell/module/cimcmdlets/?view=powershell-7)
- [Reference - Microsoft.PowerShell.Archive](https://docs.microsoft.com/ru-ru/powershell/module/microsoft.powershell.archive/?view=powershell-7)
- [Reference - Microsoft.PowerShell.Management](https://docs.microsoft.com/ru-ru/powershell/module/microsoft.powershell.management/?view=powershell-7)
- [Reference - Microsoft.WSMan.Management](https://docs.microsoft.com/ru-ru/powershell/module/microsoft.wsman.management/?view=powershell-7)
- [Reference - Microsoft.PowerShell.Security](https://docs.microsoft.com/ru-ru/powershell/module/microsoft.powershell.security/?view=powershell-7)
