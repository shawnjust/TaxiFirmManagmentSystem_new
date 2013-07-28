using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TaxiFirm.Models;
namespace TaxiFirm.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        DataClasses1DataContext context = new DataClasses1DataContext();
        [HttpPost]
        public ActionResult LoginHandle(string username,string psword)
        {

                    
              IdentityHandle IdHandle = new IdentityHandle();
             Identity Current = Identity.unlegal;

            try
            {
                int userid = int.Parse(username);
                Current = IdHandle.CheckIdentity(userid, psword);
                if (Current == Identity.manager)
                {
                    TempData["Identity"] = Identity.manager;
                    //TempData["Name"] =  
                    return RedirectToAction("Index");
                }
                else {
                     Response.Redirect("/FrontPage/Login");
                }


              

            }
            catch {
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
            IQueryable<getAllHostResult> ls = context.getAllHost();
            List<HostListModal> showModel = new List<HostListModal>();

            foreach (getAllHostResult s in ls)
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
                    car_count = context.getTaxiByOwnerEmpolyeeId(s.empolyee_id).Count()
                };
                showModel.Add(toAdd);
            }
            ViewData.Model = showModel;
            return View();
        }
        public ActionResult AddHost()
        {
            AddHostModal s = new AddHostModal();
            s.firm_list = new SelectList(context.getAllFirm(), "firm_id", "firm_name");
            ViewData.Model = s;
            return View();
        }

        [HttpPost]
        public ActionResult AddHost(AddHostModal host)
        {
            try
            {
                // TODO: Add insert logic here
                host.password = host.id_card.Substring(host.id_card.Length - 7);
                context.addEmpolyee(host.password, host.firm_id, host.name, host.id_card, host.birthday, host.gender, host.telephone, host.address);
                int? employee_id = context.getEmpolyeeIdByIdCard(host.id_card);
                context.addHost(employee_id, host.photo);
                return RedirectToAction("HostList");
            }
            catch (Exception e)
            {
                ViewData["errorMessage"] = "Error";
                return View();
            }
        }
        public ActionResult AddNews()
        {
            return View();
        }
        public ActionResult ChangeNews()
        {
            return View();
        }
        public ActionResult HostInfo(int id)
        {
            var dd = context.getEmpolyeeById(id);
            getTaxiByOwnerEmpolyeeIdResult t = context.getTaxiByOwnerEmpolyeeId(id).First();
            
            getEmpolyeeByIdResult g = dd.First();

            ShowHostModal detail = new ShowHostModal()
            {
                address = g.empolyee_address,
                gender = g.gender,
                id_card = g.id_card,
                name = g.name,
                telephone = g.telephone,
                is_available = t.is_available,
                plate_number = t.plate_number,
                taxi_brand = t.taxi_brand
            };

            ViewData.Model = detail;
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
            return View();
        }
        public ActionResult ModifyManager()
        {
            return View();
        }
        public ActionResult ManagerInfo()
        {
            return View();
        }
        public ActionResult ManagerSelfInfo()
        {
            return View();
        }
        public ActionResult FirmList()
        {
            return View();
        }
        public ActionResult Backup()
        {
            return View();
        }

        
    }
}
