using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BestBidEnergy.Models
{
    [Table("AUCTIONS")]
    public class Auction
    {
        [Key]
        [Required]
        public int AuctionID { get; set; }
    
        public DateTime AuctionTime {get; set; }

        [Required]
        public int ContractID { get; set; }
    }
}