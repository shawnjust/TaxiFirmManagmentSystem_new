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
            customer.Credit = (int)col.credit;
            customer.CustomerId = col.customer_id;
            customer.Email = col.email;
            customer.NickName = col.nick_name;
            return customer;
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
                customer.Credit = (int)col.credit;
                
            

                customers.Add(customer);

            }

            return customers;
        }
    }



}