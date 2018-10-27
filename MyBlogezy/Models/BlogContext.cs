using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace MyBlogezy.Models
{
    public class BlogContext:DbContext
    {
        public BlogContext():base("MyDB")
        {

        }

        public DbSet<Menu> Menus { get; set; }
        public DbSet<Article> Articles { get; set; }
        public DbSet<Head> Heads { get; set; }
        public DbSet<Bartext> bartexts { get; set; }
        public DbSet<Popular> Populars { get; set; }

    }
}