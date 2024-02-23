namespace CSlab13
{
    public class MedecineGroup
    {
        public int Id { get; set; }
        public int Quantity { get; set; }
        public int PharmacyId { get; set; }
        public Pharmacy Pharmacy { get; set; }
        public int MedecineId { get; set; }
        public Medecine Medecine { get; set; }
        
    }
}