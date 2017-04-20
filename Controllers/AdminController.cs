using BestBidEnergy.Models.AccountViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace BestBidEnergy.Controllers
{
    [Authorize(Roles = "Admins")]
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult AuctionScheduler()
        {
            return View();
        }

        public IActionResult AssignCreditScore()
        {
            return View();
        }
    }
}