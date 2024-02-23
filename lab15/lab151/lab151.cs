public class FileSystemWatcher
{
    private string directory;
    private HashSet<string> files;
    private List<IObserver> observers;
    private int timerInterval = 1000;
    private Timer timer;

    public FileSystemWatcher(string directory)
    {
        this.directory = directory;
        this.files = GetFilesInDirectory();
        this.observers = new List<IObserver>();
        this.timer = new Timer(CheckDirectory, null, 0, timerInterval);
    }

    private HashSet<string> GetFilesInDirectory()
    {
        return new HashSet<string>(Directory.GetFiles(directory).Select(Path.GetFileName));
    }

    private void CheckDirectory(object state)
    {
        var currentFiles = GetFilesInDirectory();
        var newFiles = currentFiles.Except(files).ToList();
        var deletedFiles = files.Except(currentFiles).ToList();

        if (newFiles.Any() || deletedFiles.Any())
        {
            NotifyObservers(newFiles, deletedFiles);
        }

        files = currentFiles;
    }

    private void NotifyObservers(List<string> newFiles, List<string> deletedFiles)
    {
        foreach (var observer in observers)
        {
            observer.Update(directory, newFiles, deletedFiles);
        }
    }

    public void AddObserver(IObserver observer)
    {
        observers.Add(observer);
    }
}

public interface IObserver
{
    void Update(string directory, List<string> newFiles, List<string> deletedFiles);
}

public class DirectoryObserver : IObserver
{
    public void Update(string directory, List<string> newFiles, List<string> deletedFiles)
    {
        Console.WriteLine($"\nChanges in our directory:");
        if (newFiles.Any())
        {
            Console.WriteLine($"    Was created a new file: {string.Join(", ", newFiles)}");
        }
        if (deletedFiles.Any())
        {
            Console.WriteLine($"    Was deleted a file: {string.Join(", ", deletedFiles)}");
        }
    }
}

class lab151
{
    static void Main(string[] args)
    {
        string directoryToWatch = @"lab151";

        var watcher = new FileSystemWatcher(directoryToWatch);

        var observer = new DirectoryObserver();
        watcher.AddObserver(observer);

        Console.WriteLine($"Watching directory: {directoryToWatch}");
        Console.ReadLine();
    }
}
