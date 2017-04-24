using BestBidEnergy.Models.AccountViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using BestBidEnergy.Data;
using Microsoft.AspNetCore.Identity;
using BestBidEnergy.Models;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BestBidEnergy.Controllers
{
    [Authorize(Roles = "Suppliers")]
    public class SuppliersController : Controller
    {
         private readonly BestBidEnergyContext db;
        private UserManager<ApplicationUser> _userManager;


        public SuppliersController(BestBidEnergyContext context, UserManager<ApplicationUser> userManager)
        {

            db = context;
            _userManager = userManager;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Auction()
        {
            return View();
        }

        public async Task<IActionResult> Contracts()
        {
            var user = await GetCurrentUser();
            var userid = user.Id;
            var DateToday = DateTime.Today;
            var c = from Contracts in db.Contracts where Contracts.SupplierUserID == userid orderby Contracts.StartDate select Contracts;
            var upcoming = from Contracts in db.Contracts where Contracts.SupplierUserID==userid where Contracts.StartDate>DateToday select Contracts;

            ViewData["upcoming"] = upcoming.ToArray();
            ViewData["won"] = c.ToArray();
            return View();
        }
        private async Task<ApplicationUser> GetCurrentUser()
        {
            return await _userManager.GetUserAsync(User);
        }
    }
}