using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TaxiFirm.Models.Customer;
namespace TaxiFirm.Controllers
{
    public class FrontPageController : Controller
    {
        //
        // GET: /FrontPage/
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
