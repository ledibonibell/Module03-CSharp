#nullable enable
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
    public partial class PageMedecineGroups : ContentPage
    {
        string dbPath;

        public PageMedecineGroups()
        {
            InitializeComponent();
            dbPath = DependencyService.Get<IPath>().GetDatabasePath(App.Dbfilename);
        }

        private async void SavePart(object sender, EventArgs e)
        {
            var medecineGroup = (MedecineGroup)BindingContext;
            var medecineName = Entry.Text;
            if (!string.IsNullOrEmpty(medecineName))
            {
                using (ApplicationContext db = new ApplicationContext(dbPath))
                {
                    // Проверка есть ли деталь с которой пытаемся создать часть сборки
                    Medecine? medecine = db.Medecines.FirstOrDefault(x => x.Name == medecineName);
                    if (medecine == null)
                    {
                        bool flag = await DisplayAlert(
                            "Ошибочка",
                            "Похоже, такого нет(\nХотите создать? (да, хотите)",
                            "Создать",
                            "Отмена");
                        if (flag)
                        {
                            PageMedecine pageMedecine = new PageMedecine();
                            pageMedecine.EntryNameDetail.Text = medecineName;
                            Navigation.PushAsync(pageMedecine);
                            return;
                        }
                        else
                        {
                            return;
                        }
                    }

                    medecineGroup.MedecineId = medecine.Id;
                    medecineGroup.Medecine = medecine;
                    if (medecineGroup.Id == 0)
                        db.MedecinesGroups.Add(medecineGroup);
                    else
                    {
                        db.MedecinesGroups.Update(medecineGroup);
                    }

                    db.SaveChanges();
                }
            }

            Navigation.PopAsync();
        }

        private void DeletePart(object sender, EventArgs e)
        {
            var part = (MedecineGroup)BindingContext;
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                db.MedecinesGroups.Remove(part);
                db.SaveChanges();
            }

            Navigation.PopAsync();
        }
    }
}
