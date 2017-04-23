using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BestBidEnergy.Models
{
    [Table("CONTRACTS")]
    public class Contract
    {
        [Key]
        [Required]
        [StringLength(255)]
        [Column("ContractId")]
        public int ContractID { get; set; }

        [Required]
        [StringLength(255)]
        [Column("BuyerUsername")]
        public string BuyerUserID { get; set; }

        [Column("SupplierUsername")]  
        public string SupplierUserID { get; set; }

        [Required]
        public DateTime StartDate {get; set;}

        [Required]
        public DateTime EndDate {get; set;}

        public decimal Price { get; set; }

        [Required]
        [StringLength(255)]
        public string Street { get; set; }

        [Required]
        [StringLength(255)]
        public string City {get; set;}

        [Required]
        [StringLength(2)]
        public string State {get; set;}

        [Required]
        [StringLength(5)]
        public string Zip {get; set;}

        [Required]
        [StringLength(255)]
        public string UtilityAccount {get; set;}

        [Required]
        [StringLength(40)]
        public string UtilityArea{get; set;}

        [Required]
        public int AvgkWh {get; set;}
        
    }
}