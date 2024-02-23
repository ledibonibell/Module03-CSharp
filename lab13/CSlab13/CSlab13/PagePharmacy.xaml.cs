#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSlab13
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PagePharmacy : ContentPage
    {
        string dbPath;

        public PagePharmacy()
        {
            InitializeComponent();
            dbPath = DependencyService.Get<IPath>().GetDatabasePath(App.Dbfilename);
            Console.WriteLine(dbPath);
        }

        protected override void OnAppearing()
        {
            Pharmacy v = (Pharmacy)this.BindingContext;
            if (v.Id != 0)
            {
                using (ApplicationContext db = new ApplicationContext(dbPath))
                {
                    var assembly =
                        db.MedecinesGroups.Include(x => x.Medecine)
                            .Where(x => x.PharmacyId == v.Id);
                    ListPartsInAssembly.ItemsSource = assembly;
                }
            }

            base.OnAppearing();
        }

        private void SaveAssembly(object sender, EventArgs e)
        {
            var assembly = (Pharmacy)BindingContext;
            if (!String.IsNullOrEmpty(assembly.Name))
            {
                using (ApplicationContext db = new ApplicationContext(dbPath))
                {
                    if (assembly.Id == 0)
                        db.Pharmacys.Add(assembly);
                    else
                    {
                        db.Pharmacys.Update(assembly);
                    }

                    db.SaveChanges();
                }
            }

            this.Navigation.PopAsync();
        }

        private void DeleteAssembly(object sender, EventArgs e)
        {
            var assembly = (Pharmacy)BindingContext;
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                db.Pharmacys.Remove(assembly);
                db.SaveChanges();
            }

            this.Navigation.PopAsync();
        }

        private async void AddPart(object sender, EventArgs e)
        {
            var pharmacy = (Pharmacy)BindingContext;
            var medecineName = await DisplayPromptAsync("Добавление лекарства",
                "Введите его секретное название",
                keyboard: Keyboard.Text);
            Console.WriteLine(medecineName);

            if (medecineName == "" || medecineName == null)
                return;
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                var partL = db.MedecinesGroups.FirstOrDefault(x =>
                    (x.Medecine.Name == medecineName) && (x.PharmacyId == pharmacy.Id));
                if (partL != null)
                {
                    await DisplayAlert("Внимание", "Лекарсто уже существует", "Хорошо");
                    return;
                }

                var medecine = db.Medecines.FirstOrDefault(x => x.Name == medecineName);
                if (medecine == null)
                {
                    bool flag = await DisplayAlert(
                        "Ошибочка",
                        "Похоже, нет такого lecarstva(\nХотите создать?",
                        "Создать or create",
                        "Отмена");
                    // Если хотим то можно сразу создать ее
                    if (flag)
                    {
                        PageMedecine pageMedecine = new PageMedecine();
                        Medecine medecineNew = new Medecine { Name = medecineName };
                        pageMedecine.BindingContext = medecineNew;
                        await Navigation.PushAsync(pageMedecine);
                        return;
                    }
                    else
                    {
                        return;
                    }
                }

                string quantity = await DisplayPromptAsync("Добавление лекарства",
                    $"Введите небходимое количество \"{medecineName}\"",
                    keyboard: Keyboard.Numeric);
                if (quantity == "0" || quantity == "" || !int.TryParse(quantity, out var numericValue))
                    return;
                MedecineGroup temp = new MedecineGroup
                {
                    Quantity = Int32.Parse(quantity),
                    Medecine = medecine,
                    MedecineId = medecine.Id
                };
                pharmacy.MedecineGroups.Add(temp);
                ListPartsInAssembly.ItemsSource = pharmacy.MedecineGroups;

                foreach (var VARIABLE in pharmacy.MedecineGroups)
                {
                    Console.WriteLine(VARIABLE.Medecine.Name);
                }

                db.Pharmacys.Update(pharmacy);
                db.MedecinesGroups.Add(temp);
                db.SaveChanges();
                OnAppearing();
                await DisplayAlert("Внимание", "Лекарство добавлено", "Хорошо");
            }
        }

        private async void EditPart(object sender, EventArgs e)
        {
            var detailName = ((MenuItem)sender).CommandParameter.ToString();
            string quantityNew = await DisplayPromptAsync("Редактирование",
                $"Введите новое количество \"{detailName}\"",
                keyboard: Keyboard.Numeric);
            if (quantityNew == "0" || quantityNew == "" || !int.TryParse(quantityNew, out var numericValue))
                return;
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                var part = db.MedecinesGroups.FirstOrDefault(x => x.Medecine.Name == detailName);
                part.Quantity = int.Parse(quantityNew);
                db.MedecinesGroups.Update(part);
                db.SaveChanges();
            }

            OnAppearing();
        }

        private void DeletePart(object sender, EventArgs e)
        {
            var detailName = ((MenuItem)sender).CommandParameter.ToString();
            using (ApplicationContext db = new ApplicationContext(dbPath))
            {
                var part = db.MedecinesGroups.FirstOrDefault(x => x.Medecine.Name == detailName);
                db.MedecinesGroups.Remove(part);
                db.SaveChanges();
            }

            OnAppearing();
        }
    }
}