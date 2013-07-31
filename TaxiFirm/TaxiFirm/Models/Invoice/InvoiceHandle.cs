using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Invoice
{
    public class InvoiceHandle
    {
        public DataClasses1DataContext data = new DataClasses1DataContext();

        public Invoice GetInvoiceByID(int id)
        {
            var table = data.getInvoiceByID(id);
            var col = table.First<getInvoiceByIDResult>();
            Invoice invoice = new Invoice();
            invoice.Amount = (int)col.amount;
            invoice.CustomerId = col.customer_id;
            invoice.InvoiceId = col.invoice_id;
            invoice.RegisterTime = (DateTime)col.regist_time;
            return invoice;

        
        }

       
        //跟据客户id得到发票的分页页面
        public List<Invoice> GetCustomerInvoiceByPage(int CustomerId,MyPage page)
        {
            try
            {
                page.CountPerPage = 10;
                page.WholePage = (int)data.getCustomerInvoicePageCount(page.CountPerPage, CustomerId);
                var table = data.getCustomerInvoiceByPage(page.CurrentPage, page.CountPerPage, CustomerId);
              
                List<Invoice> invoices = new List<Invoice>();



                foreach (var col in table)
                {
                    Invoice invoice = new Invoice();
                    invoice.Amount = (int)col.amount;

                    invoice.CustomerId = col.customer_id;
                    invoice.RegisterTime = (DateTime)col.regist_time;
                    invoice.InvoiceId = col.invoice_id;

                    invoices.Add(invoice);




                }

                return invoices;
            }
            catch {
                return null;
            }
        }
    }
}