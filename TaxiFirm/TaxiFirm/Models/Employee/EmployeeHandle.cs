using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Employee
{
    public class EmployeeHandle
    {




        public DataClasses1DataContext data = new DataClasses1DataContext();

        public bool DeleteEmployByID(int employeeID)
        {
            try
            {
                data.deleteEmpolyeeById(employeeID);
                return true;
            }
            catch
            {
                return false;
            
            }
        
        }
        //添加工号
        public int? AddEmployee(string Employee_Name, string gender, string Employee_Birthday, string FirmID, string Employee_IDCard, string Employee_TelePhone, string Employee_HomeAddress)
        {
            int? EmployeeID = -1;
          
            try
            {

                string password = Employee_IDCard.Substring(Employee_IDCard.Length - 7,6);
                int? firmID = int.Parse(FirmID);
                DateTime Birthday = Convert.ToDateTime(Employee_Birthday);
                bool? Gender  = bool.Parse(gender);

                data.addEmpolyee(password,firmID,Employee_Name,Employee_IDCard, Birthday, Gender, Employee_TelePhone, Employee_HomeAddress,ref EmployeeID);

                return EmployeeID;
            }
            catch {
                return -1;
            }
        }

        //修改信息
        public bool UpdateEmployee(string Employee_ID,string Employee_Name, string gender, string Employee_Birthday, string FirmID, string Employee_IDCard, string Employee_TelePhone, string Employee_HomeAddress)
        {
           

            try
            {

                int? Employeeid = int.Parse(Employee_ID);
                int? firmID = int.Parse(FirmID);
                DateTime? Birthday = Convert.ToDateTime(Employee_Birthday);
                bool? Gender = bool.Parse(gender);
                data.updateEmpolyeeById(Employeeid,Employee_Name,Gender,Employee_TelePhone,Employee_HomeAddress,firmID,Birthday);

                return true;
             
            }
            catch
            {
                return false;
            }
        }
        //密码验证
        public bool CheckPassword(int id, string password)
        {
            try
            {
                return data.checkEmpolyeeLoginPassword(id, password) != 0 ? true : false;

            }
            catch
            {
                return false;
            }
        }

        //修改密码 
        public bool UpdateEmployeePassword(int id, string password)
        {
            try
            {
                data.updateEmpolyeePassword(id, password);
                return true;
            }
            catch
            {
                return false;
            }
        }
        //通过id得到工号
        public Employee getEmployeeById(int id)
        {
            Employee employee = new Employee();
            var table = data.getEmpolyeeById(id);
            var col = table.First<getEmpolyeeByIdResult>();
            employee.EmployeeId = col.empolyee_id;
            employee.Address = col.empolyee_address;
            employee.Birthday = (DateTime)col.birthday;
            employee.FirmID = (int)col.firm_id;
            employee.IdCard = col.id_card;
            employee.Name = col.name;
            employee.Telephone = col.telephone;
            employee.firm = new TaxiFirm.Models.Firm.Firm(employee.FirmID); ;
            employee.EmployeeId = col.empolyee_id;

            if (col.gender == null)
            {
                employee.Gender = "未知";

            }
            else if ((bool)col.gender)
            {
                employee.Gender = "男";
            }
            else
            {
                employee.Gender = "女";
            }
            return employee;
        }


        //分页得到搜索的工号页面
        public List<Employee> GetEmployeeByNameByPage(MyPage page, string name)
        {
            name = "%" + name + "%";
            page.CountPerPage = 10;
            page.WholePage = (int)data.getEmployeeByNamePageCount(page.CountPerPage, name);
            var table = data.getEmployeeByNameByPage(page.CurrentPage, page.CountPerPage, name);
            List<Employee> employees = new List<Employee>();
            foreach (var col in table)
            {

                Employee employee = new Employee();
                employee.EmployeeId = col.empolyee_id;
                employee.Address = col.empolyee_address;
                employee.Birthday = (DateTime)col.birthday;
                employee.FirmID = (int)col.firm_id;
                employee.IdCard = col.id_card;
                employee.Name = col.name;
                employee.Telephone = col.telephone;
                employee.firm = new TaxiFirm.Models.Firm.Firm(employee.FirmID); ;
                employee.EmployeeId = col.empolyee_id;
                
                if (col.gender == null)
                {
                    employee.Gender = "未知";

                }
                else if ((bool)col.gender)
                {
                    employee.Gender = "男";
                }
                else
                {
                    employee.Gender = "女";
                }

                employees.Add(employee);

            }

            return employees;
        }
        //分页得到工号页面
        public List<Employee> GetEmployeeByPage(MyPage page)
        {

            page.CountPerPage = 10;
            page.WholePage = (int)data.getEmployeePageCount(page.CountPerPage);
            var table = data.getEmployeeByPage(page.CurrentPage, page.CountPerPage);
            List<Employee> employees = new List<Employee>();
            foreach (var col in table)
            {

                Employee employee = new Employee();
                employee.EmployeeId = col.empolyee_id;
                employee.Address = col.empolyee_address;
                employee.Birthday = (DateTime)col.birthday;
                employee.FirmID = (int)col.firm_id;
                employee.IdCard = col.id_card;
                employee.Name = col.name;
                employee.Telephone = col.telephone;
                employee.firm = new TaxiFirm.Models.Firm.Firm(employee.FirmID); ;
                employee.EmployeeId = col.empolyee_id;
                
                if (col.gender == null)
                {
                    employee.Gender = "未知";

                }
                else if ((bool)col.gender)
                {
                    employee.Gender = "男";
                }
                else
                {
                    employee.Gender = "女";
                }

                employees.Add(employee);

            }

            return employees;
        }
    }
}