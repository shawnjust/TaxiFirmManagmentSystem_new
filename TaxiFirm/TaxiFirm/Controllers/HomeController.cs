using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TaxiFirm.Models.Manager;
using TaxiFirm.Models;
using TaxiFirm.Models.Firm;
using TaxiFirm.Models.Customer;
using TaxiFirm.Models.Invoice;
namespace TaxiFirm.Controllers
{

    [HandleError]
    public class HomeController : Controller
    {



        public ActionResult BackHandle()
        {

            string type = Request.QueryString.Get("type");
            if (type == "logout")
            {
                this.LogOut();
            }
            else
            {


            }
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult LoginHandle(string username, string psword)
        {


            IdentityHandle IdHandle = new IdentityHandle();
            Identity Current = Identity.unlegal;

            try
            {
                int userid = int.Parse(username);
                Current = IdHandle.CheckIdentity(userid, psword);
                if (Current == Identity.manager)
                {


                    Session["Identity"] = Identity.manager;
                    Session["CurrentManager"] = new Manager(userid);

                    //TempData["Name"] =  
                    return RedirectToAction("Index");
                }
                else
                {
                    Response.Redirect("/FrontPage/Login");
                }




            }
            catch
            {
                ViewData["error"] = "error";
                Response.Redirect("/FrontPage/Login");
            }


            Response.Redirect("/FrontPage/Login");
            return View();





        }
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {

            return View();
        }
        public ActionResult BackControl()
        {
            return View();
        }
        public ActionResult Customer()
        {
            MyPage page = new MyPage();
            page.CurrentPage = int.Parse(Request.QueryString.Get("page"));
            ViewData["customers"] = new CustomerHandle().GetcustomerByPage(page);
            ViewData["page"] = page;

            return View();
        }
        public ActionResult TaxiList()
        {
            return View();
        }
        public ActionResult NewsList()
        {
            return View();
        }
        public ActionResult InformationList()
        {
            return View();
        }
        public ActionResult NewsContent()
        {
            return View();
        }
        public ActionResult InvoiceList()
        {
            MyPage page = new MyPage();
            page.CurrentPage = int.Parse(Request.QueryString.Get("page"));
            int CustomerId = int.Parse(Request.QueryString.Get("id"));

            ViewData["invoices"] = new InvoiceHandle().GetCustomerInvoiceByPage(CustomerId, page);
            ViewData["page"] = page;
            ViewData["customer"] = new CustomerHandle().getCustomerById(CustomerId);
            return View();
        }
        public ActionResult ComplainList()
        {
            return View();
        }
        public ActionResult AddCar()
        {
            return View();
        }
        public ActionResult CarDealing()
        {
            return View();
        }
        public ActionResult CarInfoDisplay()
        {
            return View();
        }
        public ActionResult DriverList()
        {
            return View();
        }
        public ActionResult AddDriver()
        {
            return View();
        }
        public ActionResult DriverInfo()
        {
            return View();
        }
        public ActionResult DriverSelect()
        {
            return View();
        }
        public ActionResult HostList()
        {
            return View();
        }
        public ActionResult AddHost()
        {
            return View();
        }
        public ActionResult AddNews()
        {
            return View();
        }
        public ActionResult ChangeNews()
        {
            return View();
        }
        public ActionResult HostInfo()
        {
            return View();
        }
        public ActionResult NotificationContent()
        {
            return View();
        }
        public ActionResult BackupList()
        {
            return View();
        }
        public ActionResult ManagerList()
        {
            int page = int.Parse(Request.QueryString.Get("page"));
            this.GoManagerList(page);

            return View();
        }
        public ActionResult ModifyManager()
        {

            return View();
        }
        public ActionResult ManagerInfo()
        {
            int id = int.Parse(Request.QueryString.Get("id"));
            Manager manager = new Manager(id);
            ViewData["manager"] = manager;
            return View();
        }
        public ActionResult ManagerSelfInfo()
        {
            return View();
        }
        public ActionResult FirmList()
        {

            MyPage page = new MyPage();

            page.CurrentPage = int.Parse(Request.QueryString.Get("page"));
            List<Firm> firms = new FirmHandle().GetFirmViewByPage(page);
            ViewData["firms"] = firms;
            ViewData["CurrentPage"] = page;
            return View();
        }
        public ActionResult Backup()
        {
            return View();
        }
        public ActionResult ModifySelfInfo()
        {
            return View();
        }
        public void LogOut()
        {

            if (Session["CurrentManager"] != null)
            {
                Session.Remove("CurrentManager");
                Session.Remove("Identity");
            }
            Response.Redirect("/FrontPage/Index");
        }
        //分页转到经理页面
        public void GoManagerList(int pagecount)
        {
            MyPage page = new MyPage();
            page.CurrentPage = pagecount;
            List<Manager> managers = new ManagerHandle().GetManagerByPage(page);
            ViewData["managers"] = managers;
            ViewData["page"] = page;



        }

    }
}
