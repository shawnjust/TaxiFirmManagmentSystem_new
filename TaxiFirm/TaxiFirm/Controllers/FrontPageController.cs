using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TaxiFirm.Models.Customer;
using TaxiFirm.Models.News;
using TaxiFirm.Models;
namespace TaxiFirm.Controllers
{
    public class FrontPageController : Controller
    {
        //
        // GET: /FrontPage/
        DataClasses1DataContext db = new DataClasses1DataContext();
        [HttpPost]
        public ActionResult GetCredit(string invoiceNumber)
        {
            try {
                if(Session["CurrentCustomer"]!=null)
                {
                Customer customer = (Customer) Session["CurrentCustomer"];
                int Inumber = int.Parse(invoiceNumber);
                    if(new CustomerHandle().RegistInvoiceToCustomer(customer.CustomerId, Inumber)){
                Session["InvoiceSuccess"] = "success";
                Session["CurrentCustomer"] = new CustomerHandle().getCustomerById(customer.CustomerId);
                }
                    else{
                        Session["InvoiceSuccess"] = "failed";
                    }
                }
                else{
                 Session["InvoiceSuccess"] = "failed";
                }
            
            }

            catch {

                Session["InvoiceSuccess"] = "failed";
            
            }
            return RedirectToAction("Elements");
        
        }
        public ActionResult Index() 
        {
            return View();
        }
        public ActionResult News()
        {
            string type = Request.QueryString.Get("type");
            MyPage page = new MyPage();
            if (type!=null)
            {
                if (type.Equals("search"))   //搜索类型
                {
                    int page1 = int.Parse(Request.QueryString.Get("page"));
                    string NameID = Request.QueryString.Get("NameID");
                    try
                    {
                        int id = int.Parse(NameID);
                        News news = new NewsHandle().getNewsById(id);
                        List<News> newses = new List<News>();
                        if (news.Title != null && !news.Equals(""))
                        {
                            newses.Add(news);
                        }
                        ViewData["type"] = "search";
                        ViewData["newses"] = newses;

                        page.CurrentPage = page1;
                        page.CountPerPage = 10;
                        page.WholePage = 1;
                        ViewData["page"] = page;
                        ViewData["NameID"] = NameID;
                    }
                    catch
                    {
                        page.CurrentPage = page1;
                        List<News> newses = new NewsHandle().GetNewsByNameByPage(page, NameID);
                        ViewData["type"] = "search";
                        ViewData["newses"] = newses;
                        ViewData["page"] = page;
                        ViewData["NameID"] = NameID;
                    }
                }
            }
            else
            {
                int page1;
                if (Request.QueryString.Get("page")==null)
                {
                    page1 = 1;
                    page.CurrentPage = page1;
                    List<News> newses = new NewsHandle().GetNewsByPage(page);
                    ViewData["type"] = "common";
                    ViewData["newses"] = newses;
                    ViewData["page"] = page;
                }
                else
                {
                    page1 = int.Parse(Request.QueryString.Get("page"));
                    page.CurrentPage = page1;
                    List<News> newses = new NewsHandle().GetNewsByPage(page);
                    ViewData["type"] = "common";
                    ViewData["newses"] = newses;
                    ViewData["page"] = page;
                }

            }
            return View();
        }
        public ActionResult Notification()
        {
            return View();
        }
        public ActionResult Gallery()
        {
            return View();
        }
        public ActionResult About()
        {

            return View();
        }
        public ActionResult Elements()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult NewsContent()
        {
            int news_id = int.Parse(Request.QueryString.Get("NWID"));
            News news = new News();
            NewsHandle handler = new NewsHandle();
            news = handler.getNewsById(news_id);
            ViewData["news"] = news;
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult Complain()
        {
            return View();
        }
        public ActionResult ErrorPage()
        {
            return View();
        }
    }
}
