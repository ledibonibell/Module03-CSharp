using System;
using System.IO;
using CSlab13.Droid;
using Xamarin.Forms;

[assembly: Dependency(typeof(AndroidDbPath))]
namespace CSlab13.Droid
{
    public class AndroidDbPath : IPath
        {
            public string GetDatabasePath(string filename)
            {
                return Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal), filename);
            }
        }
}