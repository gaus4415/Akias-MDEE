using Microsoft.AspNetCore.Mvc;

namespace AkiasWeb.Controllers
{
    public class TeacherController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
