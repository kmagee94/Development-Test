using Microsoft.EntityFrameworkCore;
using BestBidEnergy.Models;

namespace BestBidEnergy.Data
{
    public class BestBidEnergyContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //Connection String
            string connection = "User ID=BestBidEnergy-Admin;Password=password;Host=localhost;Port=5432;Database=BestBidEnergy;Pooling=true;";
            optionsBuilder.UseNpgsql(connection);
        }

        public DbSet<Auction> Auctions { get; set; }
        public DbSet<Buyer> Buyers {get; set;}
        public DbSet<Contract> Contracts {get;set;}
        public DbSet<Supplier> Suppliers {get; set;}
    }
}