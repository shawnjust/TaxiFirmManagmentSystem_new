﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TaxiFirm.Models.Manager;
using TaxiFirm.Models;
using TaxiFirm.Models.Firm;
using TaxiFirm.Models.Customer;
using TaxiFirm.Models.Invoice;
using TaxiFirm.Models.Employee;
using TaxiFirm.Models.Backup;
using TaxiFirm.Models.Driver;
namespace TaxiFirm.Controllers
{
    public class FrontPageController : Controller
    {
        //

        [HttpPost]
        public ActionResult CustomerLoginHandle(string username, string psword)
        {

            try
            {
               
                if (new DataClasses1DataContext().checkCustomerLoginPasswordByEmail(username, psword) != 0)
                {
                    if (Session["CurrentCustomer"] != null)
                    {
                        Session.Remove("CurrentCustomer");
                    }
                    Session["Identity"] = Identity.custemer;
                    Customer customer = new CustomerHandle().GetCustomerByEmail(username);
                    Session["CurrentCustomer"] = customer;
                    //MyPage page2 = new MyPage();
                    //page2.CurrentPage = 1;
                   // List<Invoice> invoices=new InvoiceHandle().GetCustomerInvoiceByPage(customer.CustomerId, page2);
                   // if (invoices != null && invoices.Count > 0)
                   // {
                   //     Session["invoices"] = new InvoiceHandle().GetCustomerInvoiceByPage(customer.CustomerId, page2);
                   // }
                    Session["CustomerLoginSuccess"] = "success";

                }
                else
                {


                    int userid = int.Parse(username);
                    if (new DataClasses1DataContext().checkCustomerLoginPassword(userid, psword) != 0)
                    {

                        Session["Identity"] = Identity.custemer;
                        Customer customer = new CustomerHandle().getCustomerById(userid);
                        Session["CurrentCustomer"] = customer;
                        MyPage page2 = new MyPage();
                        page2.CurrentPage = 1;
                        //Session["invoices"] = new InvoiceHandle().GetCustomerInvoiceByPage(customer.CustomerId, page2);
                        Session["CustomerLoginSuccess"] = "success";

                    }
                    else
                    {
                        Session["CustomerLoginSuccess"] = "failed";

                    }
                }
            }
            catch
            {

                Session["CustomerLoginSuccess"] = "failed";



            }

          //  Response.Redirect("/FrontPage/Elements");
            return RedirectToAction("Index","FrontPage");

        }
        [HttpPost]
        public ActionResult ChangePasswordHandle(string username,string psword,string psword1,string psword2)
        {
            try
            {
                if (new DataClasses1DataContext().checkCustomerLoginPasswordByEmail(username, psword) != 0)
                {
                    if (psword1.Equals(psword2))
                    {
                        new DataClasses1DataContext().updateCustomerPasswordByEmail(username, psword1);
                        Session["ChangeCustomerPassword"] = "success";
                        
                    }
                    else 
                    {

                        Session["ChangeCustomerPassword"] = "NewPassword";
                    }


                }
                else 
                {
                    int id = int.Parse(username);
                    if (new DataClasses1DataContext().checkCustomerLoginPassword(id, psword) != 0)
                    {

                        if (psword1.Equals(psword2))
                        {
                            new DataClasses1DataContext().updateCustomerPassword(id, psword1);
                            Session["ChangeCustomerPassword"] = "success";

                        }
                        else
                        {

                            Session["ChangeCustomerPassword"] = "NewPassword";
                        }



                    }
                    else {

                        Session["ChangeCustomerPassword"] = "PrePassword";
                    }
                }


            }
            catch
            {

                Session["ChangeCustomerPassword"] = "failed";
            }
            return RedirectToAction("Index");
 
        }

        public ActionResult ChangerPassword()
        {

            return View();
            
        }
        // GET: /FrontPage/
        [HttpPost]
        public ActionResult RegisterHandle(string NickName, string Password, string email, string Password2)
        {
            try
            {
                if( !new CustomerHandle().hasEmailAlready(email))
                {
                
                    if(new CustomerHandle().addNewCustomer(email, Password, NickName))
                    {
                        Session["AddCustomerSuccess"] =  "success";
                    }
                    else
                    {
                        Session["AddCustomerSuccess"]="failed";
                    }
                }else
                    
                
                {
                    Session["AddCustomerSuccess"]="EmailError";
                }
            }
            
            catch
            {
                Session["AddCustomerSuccess"] = "failed";
            }
        
            return RedirectToAction("Login");
        
        }


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
