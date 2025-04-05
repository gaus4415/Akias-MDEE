using Microsoft.AspNetCore.Mvc;

namespace AkiasWeb.Controllers
{
    public class CoursesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
