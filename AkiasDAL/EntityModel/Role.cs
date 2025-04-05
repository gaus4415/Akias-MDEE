using System.ComponentModel.DataAnnotations;

namespace AkiasDAL.EntityModel
{
#nullable disable
    public class Role
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }

        // Navigation property
        public ICollection<User> Users { get; set; }
    }
}
