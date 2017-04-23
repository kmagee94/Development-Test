using System.Collections.Generic;
using BestBidEnergy.Data;
using System;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Logging;
using BestBidEnergy.Models;
using BestBidEnergy.Models.AccountViewModels;
using BestBidEnergy.Services;


// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BestBidEnergy.Controllers
{
    public class BuyersController : Controller
    {
        private readonly BestBidEnergyContext db;
        private UserManager<ApplicationUser> _userManager;


        public BuyersController(BestBidEnergyContext context, UserManager<ApplicationUser> userManager)
        {

            db = context;
            _userManager = userManager;
        }
        [Authorize(Roles = "Buyers")]
        public async Task<IActionResult> Index()
        {
            return View();
        }
        [Authorize(Roles = "Buyers")]
        public async Task<IActionResult> Contracts()
        {
                        var user = await GetCurrentUser();
            var userid = user.Id;

            var c = from Contracts in db.Contracts where Contracts.BuyerUserID == userid orderby Contracts.StartDate select Contracts;


            ViewData["user"] = userid;


            return View(c.ToArray());
        }

        private async Task<ApplicationUser> GetCurrentUser()
        {
            return await _userManager.GetUserAsync(User);
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