﻿namespace ClipMeme.Controllers
{
    using System.Configuration;
    using System.Web.Mvc;

    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";
            ViewBag.Username = ConfigurationManager.AppSettings["username"];

            return this.View();
        }
    }
}
