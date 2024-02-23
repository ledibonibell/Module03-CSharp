using System;
using System.Windows.Forms;

namespace WeatherApp
{
    static class lab092
    {
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new AppWeather());
        }
    }
}
