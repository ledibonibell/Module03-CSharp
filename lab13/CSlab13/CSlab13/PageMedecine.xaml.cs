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
    public partial class PageMedecine : ContentPage
    {
        string dbPath;
        
        public PageMedecine()
        {
            InitializeComponent();
            dbPath = DependencyService.Get<IPath>().GetDatabasePath(App.Dbfilename);
        }
        
        private void SaveAuditorium(object sender, EventArgs e)
        {
            var medecine = (Medecine)BindingContext;
            // if (!String.IsNullOrEmpty(detail.Name))
            {
                using (ApplicationContext db = new ApplicationContext(dbPath))
                {
                    if (medecine.Id == 0)
                        db.Medecines.Add(medecine);
                    else
                    {
                        db.Medecines.Update(medecine);
                    }
                    db.SaveChanges();
                }
            }
            this.Navigation.PopAsync();
        }
        private void DeleteAuditorium(object sender, EventArgs e)
        {
            var medecine = (Medecine)BindingContext;
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                db.Medecines.Remove(medecine);
                db.SaveChanges();
            }
            this.Navigation.PopAsync();
        }
    }
}