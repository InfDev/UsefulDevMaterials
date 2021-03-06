# Основные типы лицензий

## Общие сведения

Если вы пишете код, вы также повторно используете код, включая фрагменты кода, библиотеки, функции, платформы и целые приложения. Весь программный код поставляется с определенными правами и обязанностями, если вы хотите добавить его в свою кодовую базу.

Бесплатное программное обеспечение с открытым исходным кодом (FOSS) бесплатно, но вы не можете использовать его по своему желанию. Даже нелицензированные фрагменты кода, скопированные из Stack Overflow, имеют ограничения для повторного использования. Но формально разработанный код обычно поставляется с определенной лицензией на программное обеспечение.

!!! info "FOSS или FLOSS"

    FOSS или FLOSS — Free/Libre and Open-Source Software (свободное программное обеспечение с общедоступным /открытым/ исходным кодом) — категория программного обеспечения, которая удовлетворяет двум требованиям одновременно: `свободное` и `открытое`.

Существует много различных типов лицензий на программное обеспечение, причем некоторые требуют, чтобы вы опубликовали свой исходный код. Чтобы защитить свой код, вы должны понимать эти лицензии на программное обеспечение, прежде чем использовать любой код, который вы не написали самостоятельно.

!!! warning "Если лицензия не определена"

    Без лицензии применяются законы об авторских правах по умолчанию, а это означает, что вы сохраняете все права на свой исходный код, и никто не может воспроизводить, распространять или создавать производные работы из вашей работы.

![Лицензии](./../assets/images/license-types.png)

Подобрать конкретную лицензию для вашего открытого кода можно [здесь](https://choosealicense.com/).
Как получить более детальную информацию о лиценции по ключу можно [тут](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/licensing-a-repository).

Вот пять типов распространенных моделей лицензий на программное обеспечение, о которых вы должны знать. Четыре являются примерами лицензий с открытым исходным кодом (которые позволяют до некоторой степени повторно использовать код), а один запрещает любое повторное использование вообще.

## Public domain

Public domain - Всеобщее достояние. Это наиболее разрешительный тип лицензии на программное обеспечение. Это означает, что любой может изменять и использовать программное обеспечение без каких-либо ограничений. Но вы всегда должны убедиться, что это безопасно, прежде чем добавлять его в свою собственную кодовую базу. Обратите внимание, что код, который не имеет лицензии, автоматически НЕ находится в свободном доступе.

## Permissive

Permissive - разрешительные лицензии также известны как «стиль Apache» или «стиль BSD». Они содержат минимальные требования о том, как программное обеспечение можно модифицировать или распространять. Этот тип лицензии на программное обеспечение, пожалуй, самый распространенный и популярный среди свободного и открытого программного обеспечения. Помимо Apache и BSD, другим распространенным вариантом является лицензия MIT.

## LGPL

LGPL (GNU Lesser General Public License) - меньшая стандартная общественная лицензия GNU позволяет вам ссылаться на библиотеки с открытым исходным кодом в вашем программном обеспечении. Если вы просто скомпилируете или свяжете лицензированную LGPL библиотеку со своим собственным кодом, вы можете выпустить свое приложение под любой лицензией, которую вы хотите, даже с частной лицензией. Но если вы измените библиотеку или скопируете ее часть в свой код, вам придется выпустить ваше приложение на условиях, аналогичных LGPL.

## Copyleft

Лицензии с авторским левом это обобщенный метод сделать библиотеку, программу или другую работу свободной (в смысле свободы, а не “нулевой цены”) и потребовать, чтобы все последующие измененные и дополненные версии вышеуказанного тоже оставались свободными.

Простейший способ сделать программу свободной — объявить ее общественным достоянием и отказаться от исключительных авторских прав. Это позволяет другим распространять программу и ее улучшения, если они того желают. Но это позволяет также асоциальным людям сделать программу несвободной. Они могут внести изменения, большие или малые, и распространять результат как несвободный продукт. Получающие программу в такой измененной форме утрачивают свободу, которую им изначально давал автор — ее удержал посредник.

Авторское лево — абстрактная идея, ее нельзя применять непосредственно; можно воспользоваться только конкретной реализацией. В рамках проекта GNU конкретные условия распространения для большинства программ сформулированы в Стандартной общественной лицензии GNU. Часто для Стандартной общественной лицензии GNU используют сокращение GNU GPL.

## Proprietary

Proprietary - проприетарный (составляющий чью-либо собственность). Из всех типов лицензий на программное обеспечение это является наиболее ограничительным. Идея заключается в том, что все права защищены. Обычно он используется для проприетарного программного обеспечения, где работа не может быть изменена или распространена.
