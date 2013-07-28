using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Firm
{
    public class Firm
    {
        public DataClasses1DataContext data = new DataClasses1DataContext();
        public int FirmID { set; get; }
        public string FirmName { set; get; }
        public string FirmAddress { set; get; }
        public string PhoneNumber { get; set; }
        public int TaxiCount { get; set; }
        public int HostCount { get; set; }
        public int DriverCount { get; set; }


        public Firm(int firm_id)
        {
           var table= data.getFirmByID(firm_id);
           var col = table.First<getFirmByIDResult>();
           this.FirmID = firm_id;
           this.FirmName = col.firm_name;
           this.FirmAddress = col.firm_address;
           this.PhoneNumber = col.phone_number;


        }
        public Firm() { }
    }
}