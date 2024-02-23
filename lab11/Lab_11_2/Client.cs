using Lab_11_2.Models;
using System.Text.Json;

namespace Lab_11_2
{
    class ClientApp
    {
        HttpClient Client = new HttpClient();
        bool KeepRunning = true;

        public ClientApp(string address){
            Client = new HttpClient{ BaseAddress = new Uri(address)};
        }

        public Product? EnterProduct(){
            Product? product = new();
            try
            {
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
            Console.WriteLine($"Id: {product.Id}\nName: {product.Name}\nDescription: {product.Description}\nQuantity in package: {product.QuantityInPackage}\nPrice: ${product.Price}");
        }

        public void Create(){
            Product? product = EnterProduct();
            if (product != null)
            {
                Stream resultStream = Client.PutAsJsonAsync("/api/products", product).Result.Content.ReadAsStream();
                StreamReader resultReader = new StreamReader(resultStream);
                string result = resultReader.ReadToEnd();
                Console.WriteLine(result);
            }
        }
        public void Read(){
            Stream resultStream = Client.GetAsync("/api/products").Result.Content.ReadAsStream();
            StreamReader resultReader = new StreamReader(resultStream);
            string result = resultReader.ReadToEnd();
            List<Product> products = JsonSerializer.Deserialize<List<Product>>(result);
            foreach (Product product in products){
                PrintProduct(product);
            }
        }
        public void Read(int id){
            Stream resultStream = Client.GetAsync("/api/product{id}").Result.Content.ReadAsStream();
            StreamReader resultReader = new StreamReader(resultStream);
            string result = resultReader.ReadToEnd();
            Product product = JsonSerializer.Deserialize<Product>(result);
            PrintProduct(product);
        }
        public void Update(int id){
            Product? product = EnterProduct();
            if (product != null)
            {
                Stream resultStream = Client.PutAsJsonAsync($"/api/product{id}", product).Result.Content.ReadAsStream();
                StreamReader resultReader = new StreamReader(resultStream);
                string result = resultReader.ReadToEnd();
                Console.WriteLine(result);
            }
        }
        public void Delete(int id){
            Stream resultStream = Client.DeleteAsync($"/api/product{id}").Result.Content.ReadAsStream();
            StreamReader resultReader = new StreamReader(resultStream);
            string result = resultReader.ReadToEnd();
            Console.WriteLine(result);
        }

        public void Run(){
            string command = Console.ReadLine();
            switch (command)
            {
                case "quit":
                {
                    KeepRunning = false;
                    break;
                }
                case "Create":
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
            if (KeepRunning) Run();
        }
    }
}