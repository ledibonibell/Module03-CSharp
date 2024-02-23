using RazorServices;
using Microsoft.EntityFrameworkCore;

WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

builder.Services.AddRazorPages();
builder.Services.AddDbContextPool<AppDbContext>(options =>
{
    _ = options.UseMySQL(builder.Configuration.GetConnectionString("Lab12DBConnection"));
});
builder.Services.AddSingleton<IPharmaciesRepository, MockPharmaciesRepository>();
builder.Services.AddSingleton<IMedicinesRepository, MockMedicinesRepository>();

WebApplication app = builder.Build();

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapRazorPages();

app.Run();
