using Microsoft.AspNetCore.Mvc;

namespace AkiasWeb.Controllers
{
    public class AttendanceController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
