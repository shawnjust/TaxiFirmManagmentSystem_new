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
using TaxiFirm.Models.Backup;
using TaxiFirm.Models.Driver;
namespace TaxiFirm.Controllers
{

    [HandleError]
    public class HomeController : Controller
    {

        DataClasses1DataContext context = new DataClasses1DataContext();
        
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
        public ActionResult SetNewBackup(string Name)
        {
            try
            {
                if (Name.Length<200&&new BackupHandle().AddNewBackup(Name) > 0)
                {
                    Session["BackupSuccess"] = "success";
                }
                else
                {
                    Session["BackupSuccess"] = "success";
                
                }
                return RedirectToAction("Backup");
            }
            catch {
                Session["BackupSuccess"] = "failed";
                return RedirectToAction("Backup");
            
            }
        }
        [HttpPost]
        public ActionResult CustomerLoginHandle(string username, string psword)
        {
           
            try {
                int userid = int.Parse(username);
                if (new DataClasses1DataContext().checkCustomerLoginPassword(userid, psword) != 0)
                {
                  
                    Session["Identity"] = Identity.custemer;
                    Customer customer = new CustomerHandle().getCustomerById(userid);
                    Session["CurrentCustomer"] = customer;
                    MyPage page2 = new MyPage();
                    page2.CurrentPage = 1;
                    Session["invoices"] = new InvoiceHandle().GetCustomerInvoiceByPage(customer.CustomerId,page2);
                    return RedirectToAction("Elements","FrontPage");
                }
                else {

                    Response.Redirect("/FrontPage/Elements");
                }
            
            }
            catch
            {
                ViewData["error"] = "error";
                Response.Redirect("/FrontPage/Elements");
               
            }
            return View();
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
                else if (Current == Identity.custemer)
                {

                    Session["Identity"] = Identity.custemer;
                    Session["CurrentCustomer"] = new CustomerHandle().getCustomerById(userid);
                    return RedirectToAction("Index", "FrontPage");
                   }

                else{
                    Response.Redirect("/FrontPage/Login");
                }




            }
            catch
            {
                ViewData["error"] = "error";
                Response.Redirect("/FrontPage/Login");
            }


        //    Response.Redirect("/FrontPage/Login");
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
            
            ViewData["subtype"] = Request.QueryString.Get("subtype");
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
            int page1 = int.Parse(Request.QueryString.Get("page"));
            MyPage page = new MyPage();
            page.CurrentPage = page1;
            page.PageWidth = 10;
            List<Driver> drivers = new DriverHandle().getDriverByPage(page);
            ViewData["type"] = "driver";
            ViewData["drivers"] = drivers;
            ViewData["page"] = page;
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

        public ActionResult HostList(int id = 0)
        {
            int pageIndex = id;
            int pageSize = 15;
            int? count = context.getHostPageCount(pageSize);
            ViewData["pageCount"] = id;
            ViewData["maxPage"] = count;
            if (pageIndex >= count) pageIndex = (int)count - 1;
            IQueryable<getHostByPageResult> ls = context.getHostByPage(pageIndex + 1, pageSize);
            //IQueryable<getAllHostResult> ls = context.getAllHost();

            int siz = ls.Count();
            List<HostListModal> showModel = new List<HostListModal>();

            foreach (getHostByPageResult s in ls)
            {
                HostListModal toAdd = new HostListModal()
                {
                    employee_id = s.empolyee_id,
                    age = DateTime.Now.Year - s.birthday.Year,
                    address = s.empolyee_address,
                    gender = s.gender,
                    id_card = s.id_card,
                    name = s.name,
                    telephone = s.telephone,
                    car_count = context.getTaxiCountByEmpolyeeId(s.empolyee_id)
                };
                showModel.Add(toAdd);
            }
            ViewData.Model = showModel;
            return View();
        }

        public ActionResult HostBuyTaxi(int id)
        {
            BuyTaxiModal s = new BuyTaxiModal()
            {
                now_id = id,
                now_name = context.getEmpolyeeById(id).First().name
            };
            ViewData.Model = s;
            return View();
        }

        [HttpPost]
        public ActionResult HostBuyTaxi(int id, BuyTaxiModal modal)
        {
            context.setTaxiOwnerEmpolyeeId(modal.car_id, id);
            return RedirectToAction("HostList");
        }

        [HttpGet]
        public void getTaxiInfoByID(string comment)
        {
            List<getTaxiInformationByPlatenumberResult> tx = context.getTaxiInformationByPlatenumber(comment).ToList();
            if (tx.Count() > 0)
            {
                Response.Write("车主: " + tx.First().host_name + "  " + tx.First().taxi_brand);
            }
        }

        public ActionResult hostTaxiDetail(string id)
        {
            getTaxiInformationByPlatenumberResult s = context.getTaxiInformationByPlatenumber(id).First();
            ViewData.Model = s;
            return View();
        }

        public ActionResult HostTransaction(string id)
        {
            getTaxiInformationByPlatenumberResult l = context.getTaxiInformationByPlatenumber(id).First();
            TransactionModal s = new TransactionModal()
            {
                owner_id = (int)l.host_empolyee_id,
                owner_name = l.host_name,
                car_id = id,
                car_name = l.taxi_brand,
                buyer_list = new SelectList(context.getAllHost(), "empolyee_id", "name")

            };
            ViewData.Model = s;
            return View();
        }

        [HttpPost]
        public ActionResult HostTransaction(string id, TransactionModal modal)
        {
            getTaxiInformationByPlatenumberResult tx = context.getTaxiInformationByPlatenumber(id).First();
            context.setTaxiOwnerEmpolyeeId(tx.plate_number, modal.buyer_id);
            return RedirectToAction("HostList");
        }

        public ActionResult AddHost(int id)
        {

            int? employee_id = id;

            getEmpolyeeByIdResult idr = context.getEmpolyeeById(employee_id).First();

            AddHostModal s = new AddHostModal()
            {
                address = idr.empolyee_address,
                birthday = idr.birthday,
                firm_id = idr.firm_id,

                firm_list = new SelectList(context.getAllFirm(), "firm_id", "firm_name"),
                gender = idr.gender,
                id_card = idr.id_card,
                name = idr.name,
                telephone = idr.telephone
            };


            ViewData.Model = s;
            return View();
        }

        [HttpPost]
        public ActionResult AddHost(int id, AddHostModal host)
        {
            try
            {

                if (context.isHost(id) == 1) throw new Exception();
                // TODO: Add insert logic here
                //host.password = host.id_card.Substring(host.id_card.Length - 7);
                //context.addEmpolyee(host.password, host.firm_id, host.name, host.id_card, host.birthday, host.gender, host.telephone, host.address, ref id);
                //int? employee_id = context.getEmpolyeeIdByIdCard(host.id_card);
                context.addHost(id, "");
                Session["errorMsg"] = "Success";
                return RedirectToAction("HostList");
            }
            catch (Exception e)
            {
                Session["errorMsg"] = "Ilegal";
                return RedirectToAction("HostList");
            }
        }

        public ActionResult EditTaxiInfoByHost(int id)
        {
            return null;
        }

        public ActionResult EditHost(int id)
        {
            var dd = context.getEmpolyeeById(id);

            getEmpolyeeByIdResult g = dd.First();

            ShowHostModal detail = new ShowHostModal()
            {
                address = g.empolyee_address,
                gender = g.gender,
                id_card = g.id_card,
                name = g.name,
                telephone = g.telephone,
                /*
                is_available = t.is_available,
                plate_number = t.plate_number,
                taxi_brand = t.taxi_brand
                 * */
            };
            ViewData.Model = detail;
            return View();
        }

        [HttpPost]
        public ActionResult EditHost(int id, ShowHostModal modal)
        {
            try
            {
                // TODO: Add update logic here
                context.updateEmpolyeeById(id, modal.name, modal.gender, modal.telephone, modal.address);
                return RedirectToAction("HostList");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult DeleteHost(int id)
        {
            try
            {
                context.deleteHostById(id);

                return RedirectToAction("HostList");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult HostInfo(int id)
        {
            var dd = context.getEmpolyeeById(id);
            IQueryable<getAllTaxiInformationResult> taxi = context.getAllTaxiInformation();
            List<getAllTaxiInformationResult> taxilist = new List<getAllTaxiInformationResult>();
            foreach (getAllTaxiInformationResult tx in taxi)
            {
                if (tx.host_empolyee_id == id)
                    taxilist.Add(tx);
            }

            getEmpolyeeByIdResult g = dd.First();

            List<getAllFirmResult> firm = context.getAllFirm().ToList();
            String firm_name = "";
            foreach (getAllFirmResult tx in firm)
            {
                if (tx.firm_id == g.firm_id)
                    firm_name = tx.firm_name;
            }

            ShowHostModal detail = new ShowHostModal()
            {
                employee_id = g.empolyee_id,
                address = g.empolyee_address,
                gender = g.gender,
                id_card = g.id_card,
                name = g.name,
                telephone = g.telephone,
                taxi_list = taxilist,
                firm_name = firm_name,
                birthday = g.birthday.ToShortDateString()
                /*,
                is_available = t.is_available,
                plate_number = t.plate_number,
                taxi_brand = t.taxi_brand
                 * */
            };

            ViewData.Model = detail;
            return View();
        }

        public ActionResult HostTaxiInfo(int id)
        {
            ViewData["employee_id"] = id;
            List<getTaxiInformationByEmpolyeeIdResult> taxilist = context.getTaxiInformationByEmpolyeeId(id).ToList();

            ViewData.Model = taxilist;
            return View();
        }

        [HttpGet]
        public ActionResult HostSearchResult(int id = 0)
        {
            int? count = context.getHostByNamePageCount(15, "%"+Request["query"]+"%");
            ViewData["pageCount"] = id;
            ViewData["maxPage"] = count;
            
            IQueryable<getHostByNameByPageResult> ls = context.getHostByNameByPage(id + 1, 15, "%" + Request["query"] + "%");
            List<HostListModal> showModel = new List<HostListModal>();

            foreach (getHostByNameByPageResult s in ls)
            {
                HostListModal toAdd = new HostListModal()
                {
                    employee_id = s.empolyee_id,
                    age = DateTime.Now.Year - s.birthday.Year,
                    address = s.empolyee_address,
                    gender = s.gender,
                    id_card = s.id_card,
                    name = s.name,
                    telephone = s.telephone,
                    car_count = context.getTaxiCountByEmpolyeeId(s.empolyee_id)
                };
                showModel.Add(toAdd);
            }
            ViewData.Model = showModel;
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
       
        public ActionResult BackupList()
        {
            string type = Request.QueryString.Get("type");
            if (type.Equals("search"))   //搜索类型
            {
                int page1 = int.Parse(Request.QueryString.Get("page"));
                string NameID = Request.QueryString.Get("NameID");
               

                    MyPage page = new MyPage();


                    page.CurrentPage = page1;

                    List<Backup> backups = new BackupHandle().GetBackupByDescriptionByPage(page, NameID);
                    ViewData["type"] = "search";
                    ViewData["backups"] = backups;
                    ViewData["page"] = page;
                    ViewData["NameID"] = NameID;




                


            }
            else
            {
                
                MyPage page = new MyPage();
                page.CurrentPage = int.Parse(Request.QueryString.Get("page"));
                ViewData["backups"] = new BackupHandle().GetbackupByPage(page);
                ViewData["page"] = page;
                ViewData["type"] = "common";
            }
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
            if (Session["Identity"] != null)
            {
                Identity identity = (Identity)Session["Identity"];

                if (identity.Equals(Identity.manager)&&Session["CurrentManager"] != null)
                {
                    Session.Remove("CurrentManager");
                    Session.Remove("Identity");
                }
                else if (identity.Equals(Identity.custemer))
                {
                    Session.Remove("CurrentCustomer");
                    Session.Remove("Identity");
                }
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
            if (Request.QueryString.Get("subtype") != null) 
            { 
                Session["subtype"] = Request.QueryString.Get("subtype");
                if (Request.QueryString.Get("subtype").Equals("AddDriver"))
                {
                    Driver driver = new Driver();
                    DriverHandle driverHandler = new DriverHandle();
                    ViewData["EM_DriverHandler"] = driverHandler;
                }
            }
        
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
                ViewData["type"] ="common";
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
