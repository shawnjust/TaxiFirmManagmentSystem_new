using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TaxiFirm.Models.Employee;
namespace TaxiFirm.Models.Driver
{
    public class DriverHandle
    {
        private Driver driver;
        private TaxiFirm.Models.DataClasses1DataContext db = new TaxiFirm.Models.DataClasses1DataContext();
        /************************************************************************/
        /* Add Driver info to DataBase
         * return true if add success                                           */
        /************************************************************************/
        public bool AddDriverHandler(string Driver_Name, string Driver_Gender, 
            string firm_id,
            string Driver_Birthday, string Driver_Condition, string Driver_LicenseID, 
            string Driver_ID, string Driver_TelePhone, string Driver_HomeAddress)
        {
            driver = new Driver();
            bool result = false;
            driver.birthday = DateTime.Parse(Driver_Birthday);
            driver.Health = int.Parse(Driver_Condition);
            driver.firm_id = int.Parse(firm_id);
            driver.password = Driver_ID.Substring(14, 4);
            driver.gender = bool.Parse(Driver_Gender);
            driver.License_id = Driver_LicenseID;
            driver.name = Driver_Name;
            driver.telephone = Driver_TelePhone;
            driver.emoloyee_address = Driver_HomeAddress;
            driver.id_card = Driver_ID;
            if (driver!=null)
            {
                //if driver is not null add it database.
                AddDriverInDB(driver);
                result = true;
            }
            return result;
        }
        public bool IsDriver(int id)
        {
            return db.isDriver(id)!=0?true:false;
        }
        
        public bool AddDriverInDB(Driver driver)
        {
            bool result = false;
            int? employee_id = 0;
  //          TaxiFirm.Models.DataClasses1DataContext db = new TaxiFirm.Models.DataClasses1DataContext();
            try
            {
                if (db.isExistForEmpolyeeIdCard(driver.id_card)==0)
                {
                    db.addEmpolyee(driver.password, driver.firm_id, driver.name,
                            driver.id_card, driver.birthday, driver.gender, driver.telephone,
                            driver.emoloyee_address,ref employee_id);
                    db.addDriver(driver.Employee_id, driver.Health, driver.License_id);
                    result = true;
                }
                else
                {
                    db.addDriver(employee_id, driver.Health, driver.License_id);
                    result = true;
                }
//                 if (driver!=null)
//                 {
//                     employee_id = (int)db.getEmpolyeeIdByIdCard(driver.id_card);
//                     if (employee_id>0)
//                     {
//                         Console.WriteLine("employee exists");
//                         db.addDriver(employee_id, driver.Health, driver.License_id);
//                     }
//                     else
//                     {
//                         Console.WriteLine("start inserting data in employee");
//                         db.addEmpolyee(driver.password, driver.firm_id, driver.name,
//                             driver.id_card, driver.birthday, driver.gender, driver.telephone,
//                             driver.emoloyee_address,ref employee_id);
//                         db.addDriver(driver.Employee_id, driver.Health, driver.License_id);
//                     }
//                 }
//                 else
//                 {
//                     return false;
//                 }
            }
            catch (System.Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return result;
        }
        public Driver GetDriverByEmployeeID(int Employee_ID)
        {
            Driver driver;
            driver = new Driver();
            try
            {
                //get the employee attributes in employee table
                var em_table = db.getEmpolyeeById(Employee_ID);
                var em_col = em_table.First<getEmpolyeeByIdResult>();
                driver.Employee_id = (int)em_col.empolyee_id;
                driver.name = em_col.name;
                driver.id_card = em_col.id_card;
                driver.birthday = em_col.birthday;
                driver.emoloyee_address = em_col.empolyee_address;
                driver.telephone = em_col.telephone;
                driver.firm_id = em_col.firm_id;
                //password is not given for safety
                driver.password = "****";
                //get the driver attributes in driver table
                var table = db.getDriverViewByID(Employee_ID);
                var col = table.First<getDriverViewByIDResult>();
                driver.Health = (int)col.health;
                driver.License_id = col.license_id;
                driver.plateNumber = col.plate_number;
                driver.license.photo_path = col.photo_path;
                driver.license.license_id = col.license_id;
                driver.license.license_time = (DateTime)col.license_time;
                driver.license.birthday = (DateTime)col.birthday;
            }
            catch
            {

                
            }
            return driver;
        }
        public int getEmployeeIDByIDCard(string ID_Number)
        {
            return (int)db.getEmpolyeeIdByIdCard(ID_Number);
        }
        public bool isDriver(int employee_id)
        {
/*            return true;*/
            if (employee_id>0)
            {
                if (db.isDriver(employee_id) == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        public bool deleteDriver(int driver_id)
        {
            if (driver_id>0)
            {
                db.deleteDriverById(driver_id);
                return true;
            }
            else
            {
                return false;
            }
        }

        public List<Driver> getDriverByPage(MyPage page)
        {
            page.CountPerPage = 10;
            page.WholePage = (int)db.getDriverPageCount(page.CountPerPage);
            var table = db.getDriverByPage(page.CurrentPage, page.CountPerPage);
            List<Driver> drivers = new List<Driver>();
            foreach (var col in table)
            {

                Driver driver = new Driver();
                driver.Employee_id = col.empolyee_id;
                driver.emoloyee_address = col.empolyee_address;
                driver.birthday = (DateTime)col.birthday;
                driver.firm_id = (int)col.firm_id;
                driver.id_card = col.id_card;
                driver.name = col.name;
                driver.telephone = col.telephone;
                driver.firm = new TaxiFirm.Models.Firm.Firm(driver.firm_id); ;
                driver.License_id = col.license_id;
                driver.Health = (int)col.health;

                var table1 = db.getDriverViewByID(driver.Employee_id);
                var col1 = table1.First<getDriverViewByIDResult>();

                driver.license = new License.License();
                driver.license.photo_path = col1.photo_path;

                if (col.gender == null)
                {
                    driver.gender = false;

                }
                else if ((bool)col.gender)
                {
                    driver.gender = true;
                }
                else
                {
                    driver.gender = false;
                }

                drivers.Add(driver);

            }

            return drivers;
        }
        public void ClearDriver(Driver driver)
        {
            driver = null;
        }
        public Driver EmployeeToDriver(Employee.Employee employee)
        {
            Driver driver = new Driver();
            driver.name = employee.Name;
            driver.Employee_id = employee.EmployeeId;
            driver.id_card = employee.IdCard;
            driver.firm_id =employee.FirmID;
            driver.birthday = employee.Birthday;
            if (employee.Gender.Equals("女"))
            {
                driver.gender = true;
            }
            else
            {
                driver.gender = false;
            }
            driver.telephone = employee.Telephone;
            driver.emoloyee_address = employee.Address;
            return driver;
        }
        public List<Driver> EmployeesToDrivers(List<Employee.Employee> employees)
        {
            List<Driver> drivers = new List<Driver>();
            Driver driver = new Driver();
            DriverHandle driverhandler = new DriverHandle();
            for (int i = 0; i < employees.Count;i++ )
            {
                if (driverhandler.isDriver(employees[i].EmployeeId))
                {
                    driver = driverhandler.EmployeeToDriver(employees[i]);
                    drivers.Add(driver);
                }
            }
            return drivers;
        }
    }
}