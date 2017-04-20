using BestBidEnergy.Models.AccountViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BestBidEnergy.Controllers
{
    public class BuyersController : Controller
    {
        [Authorize(Roles = "Buyers")]
        public async Task<IActionResult> Index()
        {
            return View();
        }
        [Authorize(Roles = "Buyers")]
        public IActionResult Contracts()
        {
            return View();
        }
        [Authorize(Roles = "Buyers")]
        public IActionResult NewContract()
        {
            return View();
        }
        private IActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            else
            {
                return RedirectToAction(nameof(HomeController.Index), "Home");
            }
        }
    }
}