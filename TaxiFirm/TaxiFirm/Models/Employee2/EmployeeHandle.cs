using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Employee
{
    public class EmployeeHandle
    {




        public DataClasses1DataContext data = new DataClasses1DataContext();


        //通过id得到工号
        public Employee getEmployeeById(int id)
        {
            Employee employee = new Employee();
            var table = data.getEmpolyeeById(id);
            var col = table.First<getEmpolyeeByIdResult>();
            employee.EmployId = col.empolyee_id;
            employee.Address = col.empolyee_address;
            employee.Birthday = (DateTime)col.birthday;
            employee.FirmID = (int)col.firm_id;
            employee.IdCard = col.id_card;
            employee.Name = col.name;
            employee.Telephone = col.telephone;
            employee.firm = new TaxiFirm.Models.Firm.Firm(employee.FirmID); ;
            employee.EmployId = col.empolyee_id;

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
                employee.EmployId = col.empolyee_id;
                employee.Address = col.empolyee_address;
                employee.Birthday = (DateTime)col.birthday;
                employee.FirmID = (int)col.firm_id;
                employee.IdCard = col.id_card;
                employee.Name = col.name;
                employee.Telephone = col.telephone;
                employee.firm = new TaxiFirm.Models.Firm.Firm(employee.FirmID); ;
                employee.EmployId = col.empolyee_id;
                
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
                employee.EmployId = col.empolyee_id;
                employee.Address = col.empolyee_address;
                employee.Birthday = (DateTime)col.birthday;
                employee.FirmID = (int)col.firm_id;
                employee.IdCard = col.id_card;
                employee.Name = col.name;
                employee.Telephone = col.telephone;
                employee.firm = new TaxiFirm.Models.Firm.Firm(employee.FirmID); ;
                employee.EmployId = col.empolyee_id;
                
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