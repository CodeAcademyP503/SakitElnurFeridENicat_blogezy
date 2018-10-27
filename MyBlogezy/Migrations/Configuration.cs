namespace MyBlogezy.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using MyBlogezy.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<MyBlogezy.Models.BlogContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(MyBlogezy.Models.BlogContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data.
            if (!context.Articles.Any())
            {
                context.Articles.Add(new Article
                {
                    Name = "Beautiful Day With Friends In Paris",
                    Description = "Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.",
                    Photos = "withcap.jpg"

                });

                context.Articles.Add(new Article
                {
                    Name = "Nature valley with cooling environment",
                    Description = "Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.",
                    Photos = "plant.jpg"
                });

                context.Articles.Add(new Article
                {
                    Name = "Elegant, Simple & Minimalist Blog Made With Love",
                    Description = "Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.",
                    Photos = "happygirl.jpg"
                });

                context.Articles.Add(new Article
                {
                    Name = "15 Best Healthy and Easy Salad Recipes",
                    Description = "Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.",
                    Photos = "lady.jpg"
                });

                context.Articles.Add(new Article
                {
                    Name = "Easy Homemade Candy Recipes and Ideas",
                    Description = "Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.",
                    Photos = "couple.jpg"
                });

            }

            if (!context.Menus.Any())
            {
                context.Menus.Add(new Menu
                {
                    PageTitle = "Home"
                });

                context.Menus.Add(new Menu
                {
                    PageTitle = "Features"
                });
                context.Menus.Add(new Menu
                {
                    PageTitle = "LifeStyle"
                });
                context.Menus.Add(new Menu
                {
                    PageTitle = "Travel"
                });
                context.Menus.Add(new Menu
                {
                    PageTitle = "Music"
                });
                context.Menus.Add(new Menu
                {
                    PageTitle = "About"
                });
                context.Menus.Add(new Menu
                {
                    PageTitle = "Contact"
                });
            }

            if (!context.Heads.Any())
            {
                context.Heads.Add(new Head
                {
                    Name = "News and Stories",
                    Description = "Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Proin gravida nibh vel velit auctor Aenean sollicitudin, adipisicing elit sed lorem quis bibendum auctor."
                });
            }

            if (!context.Populars.Any())
            {
                context.Populars.Add(new Popular
                {
                    Name = "Beautiful Day With Friends",
                    Date = "June 15, 2017",
                    Image = "post01.jpg"
                });

                context.Populars.Add(new Popular
                {
                    Name = "Nature valley with cooling..",
                    Date = "June 10, 2017",
                    Image = "post02.jpg"
                });

                context.Populars.Add(new Popular
                {
                    Name = "15 Best Healthy and Easy ",
                    Date = "June 8, 2017",
                    Image = "post03.jpg"
                });
            }

            if (!context.bartexts.Any())
            {
                context.bartexts.Add(new Bartext
                {
                    Name = "Text Widget",
                    Description = "Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag."
                });
            }
        }
    }
}
