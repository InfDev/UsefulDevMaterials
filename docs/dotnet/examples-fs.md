# Примеры : Файловая система

## Отбор файлов по шаблонам

Получение списка файлов проекта, за исключением перечисленных в файле `.ignore` в корне проекта с использованием пакета Microsoft.Extensions.FileSystemGlobbing.

Исходник [здесь](https://github.com/InfDev/UsefulDevExamples/tree/main/Common/FS.Globing)

Пример на .NET5, причем список допустимых шаблонов ограниченный для [Matcher - docs.microsoft.com](https://docs.microsoft.com/en-us/dotnet/api/microsoft.extensions.filesystemglobbing.matcher?view=dotnet-plat-ext-5.0)

> Для поддержки более сложных шаблонов можете воспользоваться
>
> - [dazinator/DotNet.Glob](https://github.com/dazinator/DotNet.Glob)
> - [kthompson/glob](https://github.com/kthompson/glob/)
> - [mganss/Glob.cs](https://github.com/mganss/Glob.cs)

=== Program.cs

```csharp hl_lines="18-24"

using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.Extensions.FileSystemGlobbing;
using Microsoft.Extensions.FileSystemGlobbing.Abstractions;

namespace FS.Globing
{
    class Program
    {
        static async Task Main(string[] args)
        {
            var baseFolder = AppContext.BaseDirectory;
            var projectFolder = Directory.GetParent(baseFolder).Parent.Parent.Parent.FullName;
            var ignorePath = Path.Combine(projectFolder, ".ignore");
            var ignoreGlobs = await File.ReadAllLinesAsync(ignorePath);

            // Create and configure the FileSystemGlobbing Matcher using the ignore globs
            var matcher = new Matcher(StringComparison.OrdinalIgnoreCase);
            matcher.AddInclude("**/*");
            matcher.AddExcludePatterns(ignoreGlobs);
            // Execute the matcher the directory
            var result = matcher.Execute(
                new DirectoryInfoWrapper(new DirectoryInfo(projectFolder)));

            foreach (var file in result.Files)
                Console.WriteLine(file.Path);
        }
    }
}
```

=== Файл .ignore

```text
bin/
obj/
.git/
.vs/
.vscode/
```
