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
using TaxiFirm.Models.Employee;
namespace TaxiFirm.Controllers
{

    [HandleError]
    public class HomeController : Controller
    {



        public ActionResult BackHandle()
        {

            string type = Request.QueryString.Get("type");
            if (type.Equals("logout"))
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

             string type = Request.QueryString.Get("type");

             if (type.Equals("search"))   //搜索类型
             {
                 int page1 = int.Parse(Request.QueryString.Get("page"));
                 string NameID = Request.QueryString.Get("NameID");
                 try
                 {
                     int id = int.Parse(NameID);
                     Customer customer = new CustomerHandle().getCustomerById(id);
                     List<Customer> customers = new List<Customer>();
                     if (customer.NickName != null && !customer.Equals(""))
                     {
                         customers.Add(customer);
                     }
                     ViewData["type"] = "search";
                     ViewData["customers"] = customers;
                     MyPage page = new MyPage();
                     page.CurrentPage = page1;
                     page.CountPerPage = 10;
                     page.WholePage = 1;
                     ViewData["page"] = page;
                     ViewData["NameID"] = NameID;




                 }
                 catch
                 {

                     MyPage page = new MyPage();


                     page.CurrentPage = page1;

                     List<Customer> customers = new CustomerHandle().GetCustomerByNameByPage(page, NameID);
                     ViewData["type"] = "search";
                     ViewData["customers"] = customers;
                     ViewData["page"] = page;
                     ViewData["NameID"] = NameID;




                 }


             }
             else if("common".Equals(type))
             {
                 MyPage page = new MyPage();
                 page.CurrentPage = int.Parse(Request.QueryString.Get("page"));
                 ViewData["customers"] = new CustomerHandle().GetcustomerByPage(page);
                 ViewData["page"] = page;
                 ViewData["type"] = "common";
             }
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
        public ActionResult NotificationContent()
        {
            return View();
        }
        public ActionResult InvoiceList()
        {


              string type = Request.QueryString.Get("type");
              if (type.Equals("search"))   //搜索类型
              {
                 
                  string NameID = Request.QueryString.Get("NameID");
                  
                      int id = int.Parse(NameID);
                      Invoice invoice = new InvoiceHandle().GetInvoiceByID(id);
                      List<Invoice> invoices = new List<Invoice>();
                      if (invoice.CustomerId != null && !invoice.CustomerId.Equals(""))
                      {
                          invoices.Add(invoice);
                      }
                     
                      ViewData["invoices"] = invoices;
                      ViewData["type"] = "search";
                      MyPage page = new MyPage();
                      page.CurrentPage = 1;
                      page.CountPerPage = 10;
                 
                      page.WholePage = 1;

                      ViewData["page"] = page;




                


              }
              else
              {

                  MyPage page = new MyPage();
                  page.CurrentPage = int.Parse(Request.QueryString.Get("page"));
                  int CustomerId = int.Parse(Request.QueryString.Get("id"));

                  ViewData["invoices"] = new InvoiceHandle().GetCustomerInvoiceByPage(CustomerId, page);
                  ViewData["page"] = page;
                  ViewData["customer"] = new CustomerHandle().getCustomerById(CustomerId);
                  ViewData["type"] = "common";
              }
            return View();
        }
        public ActionResult EmployeeInfo()
        {
            int id = int.Parse(Request.QueryString.Get("id"));
            ViewData["type"] = Request.QueryString.Get("type");
            Employee employee = new EmployeeHandle().getEmployeeById(id);
            ViewData["employee"] = employee;
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
       
        public ActionResult BackupList()
        {
            return View();
        }
         
       
        public ActionResult ManagerList()
        {

            string type = Request.QueryString.Get("type");
            if (type.Equals("search"))   //搜索类型
            {
                int page1 = int.Parse(Request.QueryString.Get("page"));
                string NameID = Request.QueryString.Get("NameID");
                try
                {
                    int id = int.Parse(NameID);
                    Manager manager = new Manager(id);
                    List<Manager> managers = new List<Manager>();
                    if (manager.Name != null&&!manager.Equals(""))
                    {
                        managers.Add(manager);
                    }
                    ViewData["type"] = "search";
                    ViewData["managers"] = managers;
                    MyPage page = new MyPage();
                    page.CurrentPage = page1;
                    page.CountPerPage = 10;
                    page.WholePage = 1;
                    ViewData["page"]=page;
                    ViewData["NameID"] = NameID;




                }
                catch {

                    MyPage page = new MyPage();

                   
                    page.CurrentPage = page1;

                    List<Manager> managers = new ManagerHandle().GetManagerByNameByPage(page,NameID);
                    ViewData["type"] = "search";
                    ViewData["managers"] = managers;
                    ViewData["page"] = page;
                    ViewData["NameID"] = NameID;



                
                }


            }
            else
            {
                int page = int.Parse(Request.QueryString.Get("page"));
                this.GoManagerList(page);
            }
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

        [HttpPost]
        public ActionResult GetSelfManagerModify(string Manager_Name, string gender, string Manager_Birthday, string FirmID, string Manager_IDCard, string Manager_TelePhone, string Manager_HomeAddress)
        {

            Manager manager = (Manager)Session["CurrentManager"];
            manager.Name = Manager_Name;
            manager.GenderBite = bool.Parse(gender);
            manager.FirmID = int.Parse(FirmID);
            manager.IdCard = Manager_IDCard;
            manager.Address = Manager_HomeAddress;
            manager.Telephone = Manager_TelePhone;
            manager.Birthday = Convert.ToDateTime(Manager_Birthday);

            Session["CurrentManager"] = manager;


            return RedirectToAction("ManagerSelfInfo");
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
            ViewData["firms"] = new FirmHandle().GetAllFirm();
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
            ViewData["type"] = "common";
            ViewData["managers"] = managers;
            ViewData["page"] = page;

        }


        [HttpPost]
        public ActionResult SaveDriverInfo(string Driver_Name, bool Driver_Gender, DateTime Driver_Birthday, int Driver_Condition, string Driver_LicenseID, string Driver_ID, string Driver_TelePhone, string Driver_HomeAddress)
        {
            TaxiFirm.Models.DataClasses1DataContext db = new TaxiFirm.Models.DataClasses1DataContext();
            ViewData["Driver_Name"] = Driver_Name;
            ViewData["Driver_ID"] = Driver_ID;
            ViewData["Driver_Birthday"] = Driver_Birthday;
            ViewData["Driver_Gender"] = Driver_Gender;
            ViewData["Driver_TelePhone"] = Driver_TelePhone;
            ViewData["Driver_HomeAddress"] = Driver_HomeAddress;
            ViewData["Driver_Condition"] = Driver_Condition;
            ViewData["Driver_LicenseID"] = Driver_LicenseID;
          //  db.addEmpolyee("1234", 1, Driver_Name, Driver_ID, Driver_Birthday, Driver_Gender, Driver_TelePhone, Driver_HomeAddress);
           // db.addDriver(10, Driver_Condition, Driver_LicenseID);
            return View();
        }

        public ActionResult EmployeeList()
        {

            string type = Request.QueryString.Get("type");
            MyPage page = new MyPage();
            if (type.Equals("search"))   //搜索类型
            {
                int page1 = int.Parse(Request.QueryString.Get("page"));
                string NameID = Request.QueryString.Get("NameID");
                try
                {
                    int id = int.Parse(NameID);
                    Employee employee = new EmployeeHandle().getEmployeeById(id);
                    List<Employee> employees = new List<Employee>();
                    if (employee.Name != null && !employee.Equals(""))
                    {
                        employees.Add(employee);
                    }
                    ViewData["type"] = "search";
                    ViewData["employees"] = employees;
                  
                    page.CurrentPage = page1;
                    page.CountPerPage = 10;
                    page.WholePage = 1;
                    ViewData["page"] = page;
                    ViewData["NameID"] = NameID;




                }
                catch
                {

                   


                    page.CurrentPage = page1;

                    List<Employee> employees = new EmployeeHandle().GetEmployeeByNameByPage(page, NameID);
                    ViewData["type"] = "search";
                    ViewData["employees"] = employees;
                    ViewData["page"] = page;
                    ViewData["NameID"] = NameID;




                }


            }
            else
            {
                int page1 = int.Parse(Request.QueryString.Get("page"));
               
                page.CurrentPage = page1;
                List<Employee> employees = new EmployeeHandle().GetEmployeeByPage(page);
                ViewData["type"] = "common";
                ViewData["employees"] = employees;
                ViewData["page"] = page;
            }
            return View();
        }
        public int getAgefromBirthday(DateTime birthday)
        {
            int age = 0;
            DateTime today = new DateTime();
            today = DateTime.Now;
            if ((birthday.Month<today.Month)||((birthday.Month==today.Month)&&(birthday.Day<today.Day)))
            {
                age = today.Year - birthday.Year;
                if (age>0)
                {
                    return age;
                }
                else
                {
                    return 0;
                }
            }
            else
            {
                age = (today.Year - birthday.Year) - 1;
                if (age>0)
                {
                    return age;
                }
                else
                {
                    return 0;
                }
            }
        }

    }
}
