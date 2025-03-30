using Microsoft.AspNetCore.Mvc;

namespace AkiasWeb.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Index()
        {            
            return View();
        }

        public IActionResult Login()
        {
			return RedirectToAction("Index", "Home");

		}
	}
}
