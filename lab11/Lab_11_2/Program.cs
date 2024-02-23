using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Mvc;
using Lab_11_2.Contexts;
using Lab_11_2.Models;
using System.Text.Json;

namespace Lab_11_2
{
    class Program
    {

        public static void Main(string[] args)
        {

            var builder = WebApplication.CreateBuilder(args);
            var app = builder.Build();
            
            
            // Create
            app.MapPut("/api/products", (Product data) =>
            {
                using (AppDbContext db = new())
                {
                    db.Products.Add(data);
                    int result = db.SaveChanges();
                    return Results.Json(result);
                }
            });
            // Read
            app.MapGet("/api/product{id}", (int id) =>
            {
                using (AppDbContext db = new())
                {
                    Product? product = db.Products.FirstOrDefault(item => item.Id == id);
                    return Results.Content(JsonSerializer.Serialize<Product>(product));
                }
            });
            app.MapGet("/api/products", () =>
            {
                using (AppDbContext db = new())
                {
                    List<Product> products = db.Products.ToList();
                    return Results.Content(JsonSerializer.Serialize<List<Product>>(products));
                }
            });
            // Update
            app.MapPut("/api/product{id}", (Product data, int id) =>
            {
                using (AppDbContext db = new())
                {
                    Product? product = db.Products.FirstOrDefault(item => item.Id == id);
                    product.Name = data.Name;
                    product.Description = data.Description;
                    product.QuantityInPackage = data.QuantityInPackage;
                    product.Price = data.Price;
                    int result = db.SaveChanges();
                    return Results.Json(result);
                }
            });
            // Delete
            app.MapDelete("/api/product{id}", (int id) =>
            {
                using (AppDbContext db = new())
                {
                    Product? product = db.Products.FirstOrDefault(item => item.Id == id);
                    db.Products.Remove(product);
                    int result = db.SaveChanges();
                    return Results.Json(result);
                }
            });

            app.Run();

        }

    }
}