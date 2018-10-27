using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyBlogezy.Models
{
    public class Popular
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Date { get; set; }
        public string Image { get; set; }
    }
}