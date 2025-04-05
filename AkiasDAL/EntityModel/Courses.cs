using AkiasDAL.Common;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AkiasDAL.EntityModel
{
#nullable disable
    [Table("Courses")]
    public class Courses : BaseEntity
    {
        [Key]
        public int CourseID { get; set; }
        public string CourseName { get; set; }
        public string Description { get; set; }        
        public DateTime DurationMonths { get; set; }
        public int Fees { get; set; }
    }
}
