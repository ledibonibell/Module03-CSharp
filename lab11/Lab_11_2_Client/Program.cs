namespace Lab_11_2
{
    class Program
    {

        public static void Main(string[] args)
        {

            Console.WriteLine("Start");
            ClientApp client = new("https://localhost:7153");
            client.Run();

        }

    }
}