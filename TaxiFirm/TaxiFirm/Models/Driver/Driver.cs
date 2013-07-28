using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Driver
{
    public class Driver
    {
        //driver表中的属性
        public int Employee_id { get; set; }
        public int Health { get; set; }
        public string License_id { get; set; }
        public bool is_avaliable { set; get; }
        //employee继承属性
        public int password { get; set; }
        public int firm_id { get; set; }
        public int name { get; set; }
        public int id_card { get; set; }
        public int birthday { get; set; }
        public int gender { get; set; }
        public int telephone { get; set; }
        public int emoloyee_address { get; set; }

        public Driver() { }
    }
}