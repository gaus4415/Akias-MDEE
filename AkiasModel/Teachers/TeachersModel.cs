using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AkiasModel.Teachers
{
#nullable disable
    public class TeachersModel
    {
        public int TeacherID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Subject { get; set; }
        public DateTime HireDate { get; set; }
        public bool Status { get; set; } = true;      
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }      
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
    }
}
