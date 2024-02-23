using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace CSlab13
{
    public partial class PageListPharmacys : ContentPage
    {
        public PageListPharmacys()
        {
            InitializeComponent();
        }
        
        // При открытии этой страницы инициализизуется список сборок из базы данных
        protected override void OnAppearing()
        {
            string dbPath = DependencyService.Get<IPath>().GetDatabasePath(App.Dbfilename);
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                AssemblyList.ItemsSource = db.Pharmacys.ToList();
            }
            base.OnAppearing();
        }
        // Обработка кнопки добавления сборки
        private async void CreateBuilding(object sender, EventArgs e)
        {
            Pharmacy pharmacy = new Pharmacy();
            PagePharmacy pagePharmacy = new PagePharmacy();
            pagePharmacy.BindingContext = pharmacy;
            await Navigation.PushAsync(pagePharmacy);
        }
        // Обработка нажатия элемента в списке
        private async void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            Pharmacy Pharmacy = (Pharmacy)e.SelectedItem;
            PagePharmacy pagePharmacy = new PagePharmacy();
            pagePharmacy.BindingContext = Pharmacy;
            await Navigation.PushAsync(pagePharmacy);
        }
    }
}