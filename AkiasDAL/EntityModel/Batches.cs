using AkiasDAL.Common;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AkiasDAL.EntityModel
{
#nullable disable
    [Table("Batches")]
    public class Batches : BaseEntity
    {
        [Key]
        public int BatchID { get; set; }
        public string BatchName { get; set; }
        public int CourseID { get; set; }        
        public int TeacherID { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

    }
}
