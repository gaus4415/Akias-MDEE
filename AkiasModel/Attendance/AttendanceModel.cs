namespace AkiasModel.Attendance
{
#nullable disable
    public class AttendanceModel
    {
        public int AttendanceID { get; set; }
        public int StudentID { get; set; }
        public int BatchID { get; set; }
        public DateTime AttendanceDate { get; set; }
        public bool Status { get; set; } = true;
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
    }
}
