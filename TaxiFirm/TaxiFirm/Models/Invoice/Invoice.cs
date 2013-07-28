using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Invoice
{
    public class Invoice
    {
        public float Amount { set; get; }
        public int CustomerId { set; get; }
       
        public int InvoiceId { set; get; }
        public DateTime RegisterTime { set; get; }
    



    }
}