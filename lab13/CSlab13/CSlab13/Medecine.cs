#nullable enable
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.Extensions.DependencyInjection;

namespace CSlab13
{
    public class Medecine
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int NumberOfMedecines { get; set; }
        public string? Description { get; set; }
    }
}