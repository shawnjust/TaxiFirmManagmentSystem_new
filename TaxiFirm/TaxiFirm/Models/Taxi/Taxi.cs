using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Taxi
{
    public class Taxi
    {
        public string PlateNumber { get; set; }
        public string TaxiColor { get; set; }
        public string TaxiBrand { get; set; }
        public int? OwenerID{ get; set; }
        
     

        public Taxi()
        {}

    }
}