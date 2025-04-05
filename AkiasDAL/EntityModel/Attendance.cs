using AkiasDAL.Common;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AkiasDAL.EntityModel
{
#nullable disable
    [Table("Attendance")]
    public class Attendance : BaseEntity
    {
        [Key]
        public int AttendanceID { get; set; }
        public int StudentID { get; set; }
        public int BatchID { get; set; }
        public DateTime AttendanceDate { get; set; }       
    }
}
