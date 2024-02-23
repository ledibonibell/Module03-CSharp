using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSlab13
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageListMedecines : ContentPage
    {
        public PageListMedecines()
        {
            InitializeComponent();
        }
        // При открытии этой страницы инициализизуется список сборок из базы данных
        protected override void OnAppearing()
        {
            string dbPath = DependencyService.Get<IPath>().GetDatabasePath(App.Dbfilename);
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                ListMedecines.ItemsSource = db.Medecines.ToList(); //!!!!!!!!!!!!!!!!!!!!!!!!!
            }
            base.OnAppearing();
        }
        // Обработка кнопки добавления сборки
        private async void CreateAuditorium(object sender, EventArgs e)
        {
            Medecine medecine = new Medecine();
            PageMedecine pageMedecine = new PageMedecine();
            pageMedecine.BindingContext = medecine;
            await Navigation.PushAsync(pageMedecine);
        }
        // Обработка нажатия элемента в списке
        private async void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            Medecine selectedMedecine = (Medecine)e.SelectedItem;
            PageMedecine pageMedecine = new PageMedecine();
            pageMedecine.BindingContext = selectedMedecine;
            await Navigation.PushAsync(pageMedecine);
        }
    }
}