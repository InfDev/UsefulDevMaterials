# Рекомендации и методы программирования на C# в 2021

[Оригинальная статья (англ.)](https://vmsdurano.com/c-coding-guidelines-and-practices/), автор Vincent Maverick Durano

## Совет № 1

✋ Старайтесь избегать традиционных `if-else`заявлений, например следующих:

    bool result;
    if (condition)
    {
       result = true;
    }
    else
    {
       result = false;
    }

👍 Вместо этого используйте тернарный условный оператор ( `?:`):

    bool result = condition ? true: false;

Предыдущий код намного чище, его легче читать и понимать. Вдобавок это более лаконично.

## Совет № 2

✋ Старайтесь избегать использования `if`оператора для `null`проверок, как показано ниже:

    if (something != null)
    {
        if (other != null)
        {
            return whatever;
        }
    }

👍 Вместо этого используйте нулевой условный `?.`оператор ( ):

    return something?.other?.whatever;

Предыдущий код также намного чище и лаконичнее.

## Совет № 3

✋ Старайтесь избегать сложных `if-else`операторов для проверки на null, как показано ниже:

    if (something != null)
    {
        if (other != null)
        {
            return whatever;
        }
        else
        {
            return string.empty;
        }
    }
    else
    {
        return string.empty;
    }

👍 Вместо этого используйте нулевой `??`оператор coalescing ( ):

    return something?.other?.whatever ?? string.empty;

## Совет № 4

✋ Старайтесь избегать использования следующего кода при возврате значения по умолчанию, когда объект имеет значение NULL:

    int? number = null;
    var n = number.HasValue ? number : 0;

👍 Также используйте нулевой `??`оператор coalescing ( ):

    var n = number ?? 0;

👍 или, как вариант, вы можете:

    var n = number.GetValueOrDefault();

## Совет № 5

✋ Старайтесь избегать использования оператора равенства ( `==`) или `HasValue`проверки переменных, допускающих значение NULL, как показано ниже:

    int? number = null;

    if (number == null)
    {
        //do something
    }

    if (!number.HasValue)
    {
        //do something
    }

👍 Хотя предыдущий код в порядке, мы все же можем улучшить его, используя `is`ключевое слово, как показано ниже:

    int? number = null;

    if (number is null)
    {
        //do something
    }

Предыдущий код намного легче читать, так как цель очень ясна.

## Совет № 6

✋ Избегайте кода без фигурных скобок ( `{}`) для одного условного `if`оператора `for`и `foreach`циклов, как показано ниже:

    if(conditioin) action;

Без фигурных скобок слишком легко случайно добавить вторую строку, думая, что она включена в if, а когда это не так.

👍 Всегда используйте вместо этого скобки:

    if (condition) { action; }

    //or better
    if (condition)
    {
        action;
    }

## Совет № 7

✋ Старайтесь избегать использования нескольких `if-else`утверждений, например следующих:

    if (condition)
    {
       //do something
    }
    else if(condition)
    {
       //do something
    }
    else if(condition)
    {
       //do something
    }
    else(condition)
    {
       //do something else
    }

👍 Вместо этого используйте операторы switch:

    switch(condition)
    {
       case 1:
          //do something
          break;
       case 2:
          //do something
          break;
       case 3:
          //do something
          break;
       default:
          //do something else
         break;
    }

👍 Но `switch expressions`по `switch statements`возможности предпочитайте следующее:

    condition switch
    {
        1 => //do something;
        2 => //do something;
        3 => //do something;
        _ => //do something else;
    }

Приведенный выше код еще более лаконичен, по-прежнему его легко читать и понимать. (Примечание, доступно только в C # 8 или более поздних версиях) 💡 Исключения. Есть случаи, когда `if-else`операторы имеют больше смысла, чем использование `switch`операторов. Например, если в условии задействованы разные объекты и сложные условия. Используйте свое суждение в отношении того, что работает лучше. 😉

## Совет № 8

👍 Используйте `using statement`при работе с объектами, которые потребляют ресурсы или реализуют `IDisposable`интерфейс:

    using (MemoryStream stream = new MemoryStream())
    {
        // do something
    }

👍 Или **предпочитаете** использовать новое, `using declaration`представленное в C # 8, как показано ниже:

    using var stream = new MemoryStream();
    // do something

Приведенный выше код уменьшает количество фигурных скобок в вашем методе, но по-прежнему легко увидеть, где расположен ресурс. Для получения дополнительной информации см .: [«Использование на основе шаблонов» и «Использование объявлений».](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-8.0/using)

## Совет № 9

✋ Избегайте объединения строк со `+`знаком / символом, как показано ниже:

    string name = "Vianne";
    string greetings = "Hello " + name + "!";

👍 Вместо этого используйте `string.Format()`метод:

    string name = "Vynn";
    string greetings = string.Format("Hello {0}!", name);

👍 Или предпочтительнее использовать Prefer с использованием строковой интерполяции ( `$`), где это возможно:

    string name = "Vjor";
    string greeting = $"Hello, {name}!;

Приведенный выше код намного более краток и удобочитаем по сравнению с другими подходами.

## Совет № 10

✋ Старайтесь избегать `string.Format()`форматирования простых объектов, как показано ниже:

    var date = DateTime.Now;
    string greetings = string.Format("Today is {0}, the time is {1:HH:mm} now.", date.DayOfWeek, date);

👍 Используйте вместо этого строковую интерполяцию:

    var date = DateTime.Now;
    string greetings = $"Today is {date.DayOfWeek}, the time is {date:HH:mm} now.");

Приведенный выше код намного проще для понимания и краток. Однако есть определенные случаи, когда использование `string.Format()`would имеет больше смысла. Например, при работе со сложным форматированием и манипулированием данными. Итак, используйте свое суждение, когда применять их в ситуациях.

## Совет № 11

✋ Избегайте использования определенного типа для сложных объектов при определении переменных, как показано ниже:

    List<Repository.DataAccessLayer.Whatever> listOfBlah = _repo.DataAccessLayer.GetWhatever();

👍 Используйте `var`вместо этого ключевое слово:

    var listOfBlah = _repo.DataAccessLayer.GetWhatever();

👍 То же самое и с другими локальными переменными:

    var students = new List<Students>();
    var memoryStream = new MemoryStream();
    var dateUntilProgramExpiry = DateTime.Now;

## Совет № 12

✋ Старайтесь избегать однострочной реализации метода с фигурными скобками, как показано ниже:

    public string Greeter(string name)
    {
        return $"Hello {name}!";
    }

👍 Вместо этого используйте реализацию Expression-bodied ( `=>`):

    public string Greeter(string name) => $"Hello {name}!";

Предыдущий код более лаконичен, но сохраняет удобочитаемость.

## Совет № 13

✋ Избегайте инициализации объекта, как показано ниже:

    Person person = new Person();
    person.FirstName = "Vianne";
    person.LastName = "Durano";

👍 Вместо этого используйте инициализаторы объектов и коллекций:

    var person = new Person {
    	FirstName = "Vianne",
    	LastName = "Durano"
    };

Предыдущий код более естественен для чтения, и его цель ясна, поскольку свойства определены в фигурных скобках.

## Совет № 14

✋ Избегайте создания класса только для того, чтобы вернуть два простых набора результатов, как показано ниже:

    public Person GetName()
    {
        var person = new Person
        {
            FirstName = "Vincent",
            LastName = "Durano"
        };

        return person;
    }

👍 По ​​возможности используйте `Tuples`вместо них:

    public (string FirstName, string LastName) GetName()
    {
        return ("Vincent", "Durano");
    }

Предыдущий код более удобен для доступа к объектам и управления набором данных. `Tuples`заменяет необходимость создания нового класса, единственная цель которого - переносить данные.

# Совет № 15

✋ Попробуйте создать методы расширения для выполнения общих задач, таких как преобразование, проверка, форматирование, синтаксический анализ, преобразование, вы называете это. Итак, вместо того, чтобы делать следующее:

    string dateString = "40/1001/2021";
    var isDateValid = DateTime.TryParse(dateString, our var date);

Предыдущий код прекрасен и должен безопасно обрабатывать преобразование. Однако код немного длинен, чтобы выполнить базовое преобразование. Представьте, что в разных областях вашего проекта есть масса одного и того же беспорядка, связанного с преобразованием кода. Ваш код может превратиться в беспорядок или потенциально вызвать у вас много времени на разработку сверхурочно.

👍 Чтобы предотвратить это, вам следует подумать о создании вспомогательных / служебных функций для выполнения общих задач, которые можно повторно использовать в проектах. Например, предыдущий код теперь можно преобразовать в следующее расширение:

    public static class DateExtensions
    {
         public static DateTime ToDateTime(this string value)
             => DateTime.TryParse(value, out var result) ? result : default;
    }

и вы сможете использовать метод расширения, как показано ниже, в любом месте вашего кода:

    var date = "40/1001/2021".ToDateTime();

Приведенный выше код делает ваш код кратким, простым для понимания и обеспечивает удобство. Я создал пакет NuGet, который выполняет подобные общие задачи. Вы можете найти его по следующей ссылке, если хотите интегрировать его в свои проекты.

[https://github.com/proudmonkey/HelpMate.Core](https://github.com/proudmonkey/HelpMate.Core)

# Совет № 16

✋ Избегайте использования типов данных , таких как .NET предопределены `Int32`, `String`, `Boolean`и т.д .:

    String firstName;
    Int32 orderCount;
    Boolean isCompleted;

👍 Вместо этого используйте встроенные примитивные типы данных:

    string firstName;
    int orderCount;
    bool isCompleted;

Приведенный выше код согласуется с Microsoft .NET Framework и делает код более естественным для чтения.

# Совет № 17

✋ Не используйте инициалы в качестве сокращений идентификаторов, как показано ниже:

    private readonly PersonManager _pm;

Основная причина этого в том, что это может вызвать путаницу и несогласованность, если у вас есть класс, который может представлять то же самое, что и в следующем:

    private readonly ProductManager _pm;

👍 Вместо этого выберите краткость ясности, как показано ниже:

    private readonly PersonManager _personManager;
    private readonly ProductManager _productManager;

Приведенный выше код обеспечивает большую ясность, поскольку ясно указывает, о чем идет речь.

# Совет № 18

👍 Организуйте пространства имен с четко определенной структурой. Обычно пространства имен должны отражать иерархию папок в проекте. Взгляните на следующий пример:

    namespace ProjectName.App.Web
    namespace ProjectName.Services.Common
    namespace ProjectName.Services.Api.Payment
    namespace ProjectName.Services.Api.Ordering
    namespace ProjectName.Services.Worker.Ordering

Приведенный выше код предполагает хорошую организацию кода внутри проекта, позволяющую легко перемещаться между слоями.

# Совет № 19

👍 Используйте формы единственного числа, существительное или существительное, чтобы назвать `class`:

    public class Person
    {
        //some code
    }

    public class BusinessLocation
    {
        //some code
    }

    public class DocumentCollection
    {
        //some code
    }

Это позволяет легко определить, содержит ли объект одно значение элемента или коллекцию. Представьте себе, если у вас есть `List<People>`против `List<Person>`. Просто странно помещать имена во множественном числе в Список или Коллекцию.

# Совет № 20

👍 Используйте существительные или прилагательные в названиях объектов недвижимости. При именовании логических свойств или переменных вы можете добавить префикс «can», «is», «has» и т. Д., Как показано ниже:

    public bool IsActive { get; set; }
    public bool CanDelete { get; set; }

    //variables
    bool hasActiveSessions = false;
    bool doesItemExist = true;

Добавление этих суффиксов принесет больше пользы вызывающему абоненту.

# Совет № 21

👍 Используйте регистр Pascal для имен переменных классов, методов, свойств и констант:

    public class ClassName
    {
        const int MaxPageSize = 100;

        public string PropertyName { get; set; }

        public void MethodName()
        {
            //do something
        }
    }

Это сделано для того, чтобы наш код соответствовал Microsoft .NET Framework.

# Подсказка № 22

👍 Используйте Camel Casing для аргументов метода и локальных переменных:

    public void MethodName(CreatePersonRequestDto requestDto)
    {
           var firstName = requestDto.FirstName;
    }

Это сделано для того, чтобы наш код соответствовал Microsoft .NET Framework.

# Совет 23

👍 Используйте понятные и понятные имена для классов, методов и свойств:

    int daysUntilProgramExpiry;

    public List<Person> GetPersonProfileById(long personId)
    {
           //do something
    }

Это упрощает чтение и понимание вашего кода без необходимости писать (или, по крайней мере, минимизировать) комментарии о том, что делает код.

# Подсказка № 24

👍 Используйте суффикс асинхронных методов со `Async`словом:

    public async Task<List<Person>> GetPersonProfileByIdAsync(long personId)
    {
         //do something
    }

Это позволяет разработчикам легко отличать синхронные от асинхронных методов, просто взглянув на сам метод.

# Совет № 25

Делайте префикс `interfaces`с заглавной буквы`I`

    public interface IPersonManager
    {
       //...
    }

Это сделано для того, чтобы легко различать интерфейс и классы. Фактически, это хорошо известный стандарт определения интерфейсов.

# Подсказка № 26

👍 Сделайте префикс глобальных переменных и членов класса символами подчеркивания ( `_`):

    private readonly ILogger<ClassName> _logger;
    private long _rowsAffected;
    private IEnumerable<Persons> _people;

Это сделано для того, чтобы легко различать локальные и глобальные идентификаторы / переменные.

# Подсказка № 27

👍 Объявите все переменные-члены и поля в верхней части класса, со статическими полями в самом верху:

    private static string _externalIdType;
    private readonly ILogger<PersonManager> _logger;
    private int _age;

Это просто общепринятая практика, которая избавляет от необходимости искать объявления переменных.

# Подсказка № 28

👍 Обязательно подумайте о том, чтобы поместить все свои `private`методы в нижнюю часть после `public`методов:

    public class SomeClass
    {
        private void SomePublicMethodA()
        {

        }

        // rest of your public methods here

        private void SomePrivateMethodA()
        {

        }

        private void SomePrivateMethodB()
        {

        }
    }

Почему? по той же причине для Совет № 28.

# Подсказка № 29

✋ Старайтесь не группировать код по регионам, как показано ниже:

    #region Private Members
        private void SomePrivateMethodA()
        {

        }

        private void SomePrivateMethodB()
        {

        }

    #endregion

Приведенный выше код представляет собой запах кода, который потенциально может вызвать рост вашего кода, даже если вы этого не заметите. Я признаю, что я использовал эту функцию много раз, чтобы свернуть код внутри класса. Однако я понимаю, что скрытие кода в регионах не принесет вам никакой пользы, кроме увеличения вашего визуального представления, когда регион свернут. Если вы работаете с командой разработчиков над проектом, скорее всего, другие разработчики будут добавлять туда свой код до тех пор, пока код со временем не станет все больше и больше. Как хорошая практика, всегда рекомендуется делать классы как можно меньше.

Если у вас есть множество частных методов внутри класса, вы можете вместо этого разделить их на отдельный класс.

# Подсказка № 30

👍 Старайтесь использовать сокращенные имена только тогда, когда они общеизвестны:

    private readonly CreateQuestionDefinitionRequestDto _requestDto;

Было бы слишком много называть переменную «createQuestionDefinitionRequestDto», когда вы знаете, что переменная / параметр является объектом запроса. То же самое применимо к FTP, пользовательскому интерфейсу, вводу-выводу и т. Д. Совершенно нормально использовать аббревиатуры до тех пор, пока они общеизвестны, иначе было бы контрпродуктивно не делать этого.

# Подсказка № 31

✋ Избегайте подчеркивания ( `_`) между именами идентификаторов:

    public PersonManager person_Manager;
    private long rows_Affected;
    private DateTime row_updated_date_time;

Причина в том, что C # не является postgres. Просто шучу! Серьезно, это должно соответствовать соглашению Microsost .NET Framework и сделать ваш код более естественным для чтения. Это также может помочь избежать «подчеркивания подчеркивания» или неспособности увидеть подчеркивание.

# Подсказка № 32

✋ Не используйте ЗАПИСЫВАЮЩИЕ заглавные буквы для констант или переменных только для чтения:

    public static const string EXTERNALIDTYPE = "ABC";
    public static const string ENVIRONMENT_VARIABLE_NAME = "TEST";

Они просто привлекают слишком много внимания.

# Подсказка № 33

✋ Не используйте венгерскую нотацию или любую другую идентификацию типа в идентификаторах (кроме интерфейсов):

    int iCounter;
    string strName;
    string spCreateUsers;
    OrderingService svcOrdering;

Редактор кода Visual Studio уже предоставляет полезные подсказки для определения типов объектов. В общем, вы хотите избежать указателей типа в идентификаторе.

# Подсказка № 34

✋ Не используйте суффикс «Enum» в `enum`именах типов и не используйте имена во множественном числе для `enums`.

Ниже приведен пример определения перечисления:

    public enum BeerType
    {
      Lager,
      Ale,
      Ipa,
      Porter,
      Pilsner
    }

Опять же, это должно соответствовать структуре Microsoft .NET и избегать указателей типа в идентификаторе.

# Подсказка № 35

👍 Попробуйте использовать `record`типы для неизменяемых объектов. Типы записей - это новая функция, представленная в C # 9, которая упрощает ваш код. Например, такой код:

    public class Person
    {
        public string FirstName { get; init; }
        public string LastName { get; init; }

        public Person(string firstName, string lastName)
        {
            FirstName = firstName;
            LastName = lastName;
        }
    }

можно записать следующим образом с помощью записи:

    public record Person(string FirstName, string LastName);

Использование типов записей автоматически генерирует шаблонный код для вас и сохраняет ваш код кратким. Записи будут действительно полезны для определения DTO, команд или любого объекта, который переносит неизменяемые данные. Дополнительные сведения об этой функции см. В разделе [Типы записей.](https://devblogs.microsoft.com/dotnet/c-9-0-on-the-record/)
