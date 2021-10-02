# Docker

## Общие сведения

[Docker](https://www.docker.com/) - программное обеспечение «платформа как сервис» для автоматизации развёртывания и управления приложениями в средах с поддержкой контейнеризации, контейнеризатор приложений. Позволяет «упаковать» приложение со всем его окружением и зависимостями в контейнер, который может быть развёрнут на любой системе (Linux, Windows, macOS и UNIX-подобные), а также предоставляет набор команд для управления этими контейнерами.

О Docker

- [Почему разработчики .NET должны заботиться о Docker?](https://www.jetbrains.com/dotnet/guide/tutorials/docker-dotnet/why-care-about-docker/)
- [Что такое Docker: для чего он нужен и где используется](https://selectel.ru/blog/what-is-docker/)
- [Docker для начинающих](https://docker-curriculum.com/)

Установка и команды

- [Docker Desktop для Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)
- [Docker Desktop для Windows. Руководство пользователя](https://docs.docker.com/desktop/windows/)
- [Команды Docker - docs.docker.com](https://docs.docker.com/engine/reference/commandline/)
- [Шпаргалка по командам Docker](https://tretyakov.net/post/shpargalka-po-komandam-docker/)
- [Шпаргалка по Ultimate Docker](https://dockerlabs.collabnix.com/docker/cheatsheet/)

Работа с Docker

- [.NET Core. Контейнеризация приложения .NET Core](https://docs.microsoft.com/en-us/dotnet/core/docker/build-container?tabs=windows)
- [.NET Core. Cоздание многоконтейнерного приложения с помощью Docker Compose](https://docs.microsoft.com/en-us/visualstudio/containers/tutorial-multicontainer?view=vs-2019)
- [Краткое руководство: Compose и ASP.NET Core с SQL Server](https://docs.docker.com/samples/aspnet-mssql-compose/)
- [Разработка под Docker: Nginx + PHP + MySql + phpMyAdmin](https://habr.com/ru/post/460173/)
  docker/)
- [Docker | DevOps: Автоматизация локального окружения](https://ru.hexlet.io/courses/devops-local-setup/lessons/docker/theory_unit)

## Реестры образов

Реестр - это система хранения и доставки именованных образов Docker различных версий и тегов.

[Docker Hub](https://hub.docker.com/) - это самый простой в мире способ создания, управления и доставки контейнерных приложений.

Но в некоторых случаях вы можете не захотеть делать свой образ общедоступным. Образы обычно содержат весь необходимый для запуска приложения код, поэтому при работе с коммерческим программным обеспечением предпочтительно использовать частный реестр.

Для создания частного реестра воспользуйтесь образом [registry](https://hub.docker.com/_/registry?tab=description&page=1&ordering=last_updated) - реализация Docker Registry для хранения и распространения образов Docker.

- [Развертывание сервера реестра](https://docs.docker.com/registry/deploying/)
- [Настройка частного реестра Docker в Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-private-docker-registry-on-ubuntu-18-04-ru)
