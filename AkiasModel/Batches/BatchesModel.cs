namespace AkiasModel.Batches
{
#nullable disable
    public class BatchesModel
    {
        public int BatchID { get; set; }
        public string BatchName { get; set; }
        public int CourseID { get; set; }
        public int TeacherID { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool Status { get; set; } = true;
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
    }
}
