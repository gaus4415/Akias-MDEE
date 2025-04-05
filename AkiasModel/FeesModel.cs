namespace AkiasModel
{
#nullable disable
    public class FeesModel
    {
        public int FeeID { get; set; }
        public int StudentID { get; set; }
        public int Amount { get; set; }
        public DateTime DueDate { get; set; }
        public DateTime PaymentDate { get; set; }
        public bool Status { get; set; } = true;
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
    }
}
