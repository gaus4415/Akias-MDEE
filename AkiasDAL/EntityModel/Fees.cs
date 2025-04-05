using AkiasDAL.Common;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AkiasDAL.EntityModel
{
#nullable disable
    [Table("Fees")]
    public class Fees : BaseEntity
    {
        [Key]
        public int FeeID { get; set; }
        public int StudentID { get; set; }
        public int Amount { get; set; }
        public DateTime DueDate { get; set; }
        public DateTime PaymentDate { get; set; }
        
    }
}
