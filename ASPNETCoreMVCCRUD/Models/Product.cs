using System;
using System.ComponentModel.DataAnnotations;

namespace ASPNETCoreMVCCRUD.Models
{
    public class Product
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Can not be null")]
        public string Model { get; set; }
        [Required(ErrorMessage = "Can not be null")]
        public decimal Cost { get; set; }
        public DateTime InsertDate { get; set; }
    }
}
