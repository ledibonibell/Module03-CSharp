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
    public partial class PageListMedecineGroup : ContentPage
    {
        public PageListMedecineGroup()
        {
            InitializeComponent();
        }
        // При открытии этой страницы инициализизуется список сборок из базы данных
        protected override void OnAppearing()
        {
            string dbPath = DependencyService.Get<IPath>().GetDatabasePath(App.Dbfilename);
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                PartList.ItemsSource = db.MedecinesGroups.ToList();
            }
            base.OnAppearing();
        }
        // Обработка кнопки добавления сборки
        private async void CreateAuditoriumGroup(object sender, EventArgs e)
        {
            MedecineGroup medecineGroup = new MedecineGroup();
            PageMedecineGroups pageMedecineGroups = new PageMedecineGroups();
            pageMedecineGroups.BindingContext = medecineGroup;
            await Navigation.PushAsync(pageMedecineGroups);
        }
        // Обработка нажатия элемента в списке
        private async void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            MedecineGroup selectedMedecineGroup = (MedecineGroup)e.SelectedItem;
            PageMedecineGroups pageMedecineGroups = new PageMedecineGroups();
            pageMedecineGroups.BindingContext = selectedMedecineGroup;
            await Navigation.PushAsync(pageMedecineGroups);
        }
    }
}