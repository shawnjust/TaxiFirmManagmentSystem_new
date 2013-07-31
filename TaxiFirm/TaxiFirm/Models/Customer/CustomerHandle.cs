using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Customer
{
    public class CustomerHandle
    {
        public DataClasses1DataContext data = new DataClasses1DataContext();

        //通过id得到客户
        public Customer getCustomerById(int id) 
        {
            Customer customer= new Customer();
            var table = data.getCustomerById(id);
            var col = table.First<getCustomerByIdResult>();
            if (col.credit == null)
            { customer.Credit = 0; }
            else
            {
                customer.Credit = (int)col.credit;
            }
            customer.CustomerId = col.customer_id;
            customer.Email = col.email;
            customer.NickName = col.nick_name;
            return customer;
        }

        public bool RegistInvoiceToCustomer(int customerID,int invoiceID)
        {
            try
            {
                data.registInvoiceToCustomer(invoiceID, customerID);
                return true;
            }
            catch {
                return false;
            }
        }
           //通过名称分页得到客户页面
        public List<Customer> GetCustomerByNameByPage(MyPage page,string CustomerName)
        {
            CustomerName="%"+CustomerName+"%";
            page.CountPerPage = 10;
            page.WholePage = (int)data.getCustomerByNamePageCount(page.CountPerPage,CustomerName);
            var table = data.getCustomerByNameByPage(page.CurrentPage, page.CountPerPage,CustomerName);
            List<Customer> customers = new List<Customer>();

            foreach (var col in table)
            {

                Customer customer = new Customer();
                customer.CustomerId = col.customer_id;
                customer.Email=col.email;
                customer.NickName = col.nick_name;
                if (col.credit == null)
                { customer.Credit = 0; }
                else{
                customer.Credit = (int)col.credit;
            }
            

                customers.Add(customer);

            }

            return customers;
        }

        //通过邮箱得到客户
        public Customer GetCustomerByEmail(string email)
        {
            try
            {
                Customer customer = new Customer();
                var table = data.getCustomerByEmail(email);
                var col = table.First<getCustomerByEmailResult>();
                if (col.credit == null)
                { customer.Credit = 0; }
                else
                {
                    customer.Credit = (int)col.credit;
                }
                customer.CustomerId = col.customer_id;
                customer.Email = col.email;
                customer.NickName = col.nick_name;
                return customer;

            }
            catch 
            {
                return null;
            }
        }

        //得到当前积分等级
        public int GetCurrentGrade(int credit)
        {
            int n=1;
            while(true)
            {
                if ((25 * n + 50) * n > credit && (25 * (n - 1) + 50) * (n - 1) <=credit)
                {
                    return n;
                
                }
            }
        
        }
        //得到当前积分里升级经验所占百分比
        public int GetCurrentPercent(int currentGrade, int credit)
        {
            return 100*(credit - (25 * (currentGrade - 1) + 50) * (currentGrade - 1)) / (50 + 50 * currentGrade);
 
        
        }

        //分页得到客户页面
        public List<Customer> GetcustomerByPage(MyPage page)
        {

            page.CountPerPage = 10;
            page.WholePage = (int)data.getCustomePageCount(page.CountPerPage);
            var table = data.getCustomerByPage(page.CurrentPage, page.CountPerPage);
            List<Customer> customers = new List<Customer>();
            foreach (var col in table)
            {

                Customer customer = new Customer();
                customer.CustomerId = col.customer_id;
                customer.Email=col.email;
                customer.NickName = col.nick_name;
                if (col.credit == null)
                { customer.Credit = 0; }
                else
                {
                    customer.Credit = (int)col.credit;
                }
                customers.Add(customer);

            }

            return customers;
        }

        //修改密码
        public bool ChangePassword(int customerID, string password)
        {
            try
            {

                data.updateCustomerPassword(customerID, password);
                return true;
            }
            catch 
            {
                return false;
            }
        }


        //判断邮箱是否已经注册
        public bool hasEmailAlready(string email)
        {
            try
            {

                return data.hasCustomerEmail(email) == 0 ? false : true;
            }
            catch 
            {
                return false;
            }

        }

        //加入新的客户
        public bool addNewCustomer(string email, string password,string NickName)
        {
            try
            {

                data.addCustomer(email, NickName, password);
                return true;
               
            }
            catch 
            {
                return false;
            }
        
        }
    }



}