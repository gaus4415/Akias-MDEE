using System.ComponentModel.DataAnnotations;

namespace AkiasDAL.Common
{
#nullable disable
    public abstract class BaseEntity
    {        
        public bool Status { get; set; } = true;

        [MaxLength(100)]
        public string CreatedBy { get; set; }
       
        public DateTime CreatedDate { get; set; } 

        [MaxLength(100)]
        public string ModifiedBy { get; set; }

        public DateTime? ModifiedDate { get; set; }
    }
}
