using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Customer
{
    public class Customer
    {
        public int CustomerId { get; set; }
        public string NickName { get; set; }
        public string Email { get; set; }
        public int Credit { set; get; }

        public Customer() { }

        
    }
}