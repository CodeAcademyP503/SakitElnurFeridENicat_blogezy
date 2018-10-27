using MyBlogezy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBlogezy
{
    public partial class index : System.Web.UI.Page
    {
        public  Head header = new   Head();

        public List<Article> articles = new List<Article>();


        protected void Page_Load(object sender, EventArgs e)
        {
            BlogContext db = new BlogContext();

            header = db.Heads.FirstOrDefault();
            articles = db.Articles.ToList();
        }
    }
}