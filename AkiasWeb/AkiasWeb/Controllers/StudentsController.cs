using Microsoft.AspNetCore.Mvc;

namespace AkiasWeb.Controllers
{
    public class StudentsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
