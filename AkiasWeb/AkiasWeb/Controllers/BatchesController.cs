using Microsoft.AspNetCore.Mvc;

namespace AkiasWeb.Controllers
{
    public class BatchesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
