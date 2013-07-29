using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Employee
{
    public class Employee
    {
        public string Name { get; set; }
        public int FirmID { get; set; }
        public string HasRight { get; set; }
        public string IdCard { get; set; }
        public DateTime Birthday { get; set; }
        public string Gender { get; set; }
        public string Telephone { get; set; }
        public string Address { get; set; }
        public int Age { get; set; }
        public int EmployId { get; set; }
        public TaxiFirm.Models.Firm.Firm firm { get; set; }
        public DataClasses1DataContext data = new DataClasses1DataContext();
        public bool GenderBite { get; set; }

         public Employee()
        {
        }
    }
}