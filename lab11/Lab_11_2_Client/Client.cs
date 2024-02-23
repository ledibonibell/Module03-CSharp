using Lab_11_2.Models;
using System.Text.Json;

namespace Lab_11_2
{
    class ClientApp
    {
        HttpClient Client = new HttpClient();
        bool KeepRunning = true;

        public ClientApp(string address){
            HttpClientHandler handler = new();
            handler.ServerCertificateCustomValidationCallback = HttpClientHandler.DangerousAcceptAnyServerCertificateValidator;
            Client = new HttpClient(handler);
            Client.BaseAddress = new Uri(address);
        }

        public Product? EnterProduct(){
            Product? product = new();
            try
            {
                Console.WriteLine();
                Console.WriteLine("New product:\nName:");
                product.Name = Console.ReadLine();
                Console.WriteLine("Description:");
                product.Description = Console.ReadLine();
                Console.WriteLine("Quantity in package:");
                product.QuantityInPackage = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Price:");
                product.Price = Convert.ToDouble(Console.ReadLine());
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
                product = null;
            }
            return product;
        }

        public void PrintProduct(Product product){
            Console.WriteLine($"\nId: {product.Id}\nName: {product.Name}\nDescription: {product.Description}\nQuantity in package: {product.QuantityInPackage}\nPrice: ${product.Price}");
        }

        public void Create(){
            Product? product = EnterProduct();
            if (product != null)
            {
                string response = Client.PutAsJsonAsync($"/api/products", product).GetAwaiter().GetResult().Content.ReadAsStringAsync().GetAwaiter().GetResult();
                if (response == "1") Console.WriteLine("\nsuccess");
                else Console.WriteLine("\ncreate failed");
            }
        }
        public void Read(){
            string response = Client.GetAsync("/api/products").GetAwaiter().GetResult().Content.ReadAsStringAsync().GetAwaiter().GetResult();
            List<Product> products = JsonSerializer.Deserialize<List<Product>>(response);
            foreach (Product product in products){
                PrintProduct(product);
            }
        }
        public void Read(int id){
            string response = Client.GetAsync($"/api/product{id}").GetAwaiter().GetResult().Content.ReadAsStringAsync().GetAwaiter().GetResult();
            Product product = JsonSerializer.Deserialize<Product>(response);
            PrintProduct(product);
        }
        public void Update(int id){
            Product? product = EnterProduct();
            if (product != null)
            {
                string response = Client.PutAsJsonAsync($"/api/product{id}", product).GetAwaiter().GetResult().Content.ReadAsStringAsync().GetAwaiter().GetResult();
                if (response == "1") Console.WriteLine("\nsuccess");
                else Console.WriteLine("\nupdate failed");
            }
        }
        public void Delete(int id){
            string response = Client.DeleteAsync($"/api/product{id}").GetAwaiter().GetResult().Content.ReadAsStringAsync().GetAwaiter().GetResult();
            if (response == "1") Console.WriteLine("\nsuccess");
                else Console.WriteLine("\ndelete failed");
        }

        public void Run(){
            Console.WriteLine();
            string command = Console.ReadLine();
            try
            {
                switch (command)
                {
                    case "quit":
                    {
                        Console.WriteLine("\nStop");
                        KeepRunning = false;
                        break;
                    }
                    case "create":
                    {
                        Create();
                        break;
                    }
                    case "readall":
                    {
                        Read();
                        break;
                    }
                    case "read":
                    {
                        Console.WriteLine("Enter Id:");
                        int id = Convert.ToInt32(Console.ReadLine());
                        Read(id);
                        break;
                    }
                    case "update":
                    {
                        Console.WriteLine("Enter Id:");
                        int id = Convert.ToInt32(Console.ReadLine());
                        Update(id);
                        break;
                    }
                    case "delete":
                    {
                        Console.WriteLine("Enter Id:");
                        int id = Convert.ToInt32(Console.ReadLine());
                        Delete(id);
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            if (KeepRunning) Run();
        }
    }
}