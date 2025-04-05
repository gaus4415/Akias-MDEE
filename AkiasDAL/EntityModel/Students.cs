using AkiasDAL.Common;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AkiasDAL.EntityModel
{
#nullable disable
    [Table("Students")]
    public class Students :BaseEntity
    {
        [Key]
        public int StudentID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public DateTime EnrollmentDate { get; set; }
        public int BatchID { get; set; }

    }
}
