using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BestBidEnergy.Models
{
    [Table("SUPPLIERS")]
    public class Supplier
    {
        [Key]
        [Required]
        [StringLength(255)]
        public string Username { get; set; }
        [Required]
        [StringLength(255)]
        public string Email { get; set; }
        public string Phone { get; set; }
        [Required]
        [StringLength(255)]
        public string AccountNum { get; set; }
        [Required]
        [StringLength(255)]
        public string Company { get; set; }
        
    }
}