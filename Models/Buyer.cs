using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BestBidEnergy.Models
{
    [Table("BUYERS")]
    public class Buyer
    {
        [Key]
        [Required]
        [StringLength(255)]
        public string Username { get; set; }
        [Required]
        [StringLength(255)]
        public string Email { get; set; }
    
        [StringLengthAttribute(255)]
        public string Phone { get; set; }
        [StringLength(255)]
        public string Company { get; set; }
        [Required]
        [StringLengthAttribute(255)]
        public string Account_Num { get; set; }
        [Required]
        [StringLengthAttribute(255)]
        public string Account_Type {get; set;}
        public int Credit_Rating {get; set;}
         [Required]
        [StringLengthAttribute(150)]
        public string Contact_Name {get; set;}
    }
}