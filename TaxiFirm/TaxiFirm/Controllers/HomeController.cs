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
using TaxiFirm.Models.Driver;
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
        public ActionResult SaveDriverInfo(string Driver_Name, string Driver_Gender, string firm_id,string Driver_Birthday, string Driver_Condition, string Driver_LicenseID, string Driver_ID, string Driver_TelePhone, string Driver_HomeAddress)
        {
            DriverHandle handler = new DriverHandle();

            ///////////////////////////////unused code///////////////////////////////////////////
//             TaxiFirm.Models.DataClasses1DataContext db = new TaxiFirm.Models.DataClasses1DataContext();
//             bool Gender=false;
//             DateTime Birthday = DateTime.Parse(Driver_Birthday);
//             int Condition = int.Parse(Driver_Condition);
//             int Firm_id = int.Parse(firm_id);
//             string password = Driver_ID.Substring(13, 4);
//             ViewData["Driver_Name"] = Driver_Name;
//             ViewData["Driver_ID"] = Driver_ID;
//             ViewData["Driver_Birthday"] = Birthday;
//             Gender = bool.Parse(Driver_Gender);
//             if (Driver_Gender.Equals("true"))
//             {
//                 Driver_Gender = "男";
//             }
//             else
//             {
//                 Driver_Gender = "女";
//             }
//             if (getAgefromBirthday(Birthday)!=0)
//             {
//                 ViewData["Driver_Age"] = getAgefromBirthday(Birthday);
//             }
//             ViewData["Driver_Gender"] = Driver_Gender;
//             ViewData["Driver_TelePhone"] = Driver_TelePhone;
//             ViewData["Driver_HomeAddress"] = Driver_HomeAddress;
//             ViewData["Driver_Condition"] = Condition;
//             ViewData["Driver_LicenseID"] = Driver_LicenseID;
//             ViewData["firm_id"] = Firm_id;
//             db.addEmpolyee(password, Firm_id, Driver_Name, Driver_ID, Birthday, Gender, Driver_TelePhone, Driver_HomeAddress);
//             
//             db.addDriver(10,Condition, Driver_LicenseID);
            ///////////////////////////////////////////////////////////////
            if (handler.AddDriverHandler(Driver_Name, Driver_Gender,firm_id,Driver_Birthday, Driver_Condition, Driver_LicenseID, Driver_ID, Driver_TelePhone, Driver_HomeAddress))
            {
                int employee_id = handler.getEmployeeIDByIDCard(Driver_ID);
                ViewData["Driver_Info"] = handler.GetDriverByEmployeeID(employee_id);
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
