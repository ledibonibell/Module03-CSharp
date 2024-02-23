#nullable enable
using System.Collections.Generic;

namespace CSlab13
{
    public class Pharmacy
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public List<MedecineGroup> MedecineGroups { get; set; } = new();
    }
}