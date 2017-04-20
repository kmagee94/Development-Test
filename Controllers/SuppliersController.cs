using BestBidEnergy.Models.AccountViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BestBIdEnergy.Controllers
{
    [Authorize(Roles = "Suppliers")]
    public class SuppliersController : Controller
    {

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Auction()
        {
            return View();
        }

        public IActionResult Contracts()
        {
            return View();
        }
    }
}