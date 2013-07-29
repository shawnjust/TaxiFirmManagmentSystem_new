using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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
        public bool AddDriverInDB(Driver driver)
        {
            bool result = false;
            int? employee_id = 0;
  //          TaxiFirm.Models.DataClasses1DataContext db = new TaxiFirm.Models.DataClasses1DataContext();
            try
            {
                if (driver!=null)
                {
                    employee_id = (int)db.getEmpolyeeIdByIdCard(driver.id_card);
                    if (employee_id>0)
                    {
                        Console.WriteLine("employee exists");
                        db.addDriver(employee_id, driver.Health, driver.License_id);
                    }
                    else
                    {
                        Console.WriteLine("start inserting data in employee");
                        db.addEmpolyee(driver.password, driver.firm_id, driver.name,
                            driver.id_card, driver.birthday, driver.gender, driver.telephone,
                            driver.emoloyee_address,ref employee_id);
                        db.addDriver(driver.Employee_id, driver.Health, driver.License_id);
                    }
                }
                else
                {
                    return false;
                }
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
            return driver;
        }
        public int getEmployeeIDByIDCard(string ID_Number)
        {
            return (int)db.getEmpolyeeIdByIdCard(ID_Number);
        }
    }
}