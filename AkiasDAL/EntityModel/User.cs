using AkiasDAL.Common;
using System.ComponentModel.DataAnnotations;

namespace AkiasDAL.EntityModel
{
#nullable disable
    public class User : BaseEntity
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(100)]
        public string Name { get; set; }

        [Range(0, 150)]
        public int Age { get; set; }

        [Required]
        [EmailAddress]
        [MaxLength(150)]
        public string Email { get; set; }

        [Required]
        [MaxLength(200)]
        public string Address { get; set; }

        [Required]
        [MaxLength(100)]
        public string Password { get; set; }

        // Foreign key
        public int RoleId { get; set; }

        // Navigation property
        public Role Role { get; set; }
    }
}
