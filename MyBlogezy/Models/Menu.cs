using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyBlogezy.Models
{
    public class Menu
    { 
        [Key]
        public int Pageid { get; set; }
        public string PageTitle { get; set; }
    }
}