using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Firm
{
    public class FirmHandle
    {
        public DataClasses1DataContext data = new DataClasses1DataContext();
        //分页得到经理页面
        public List<Firm> GetFirmViewByPage(MyPage page)
        {

            page.CountPerPage = 10;
            page.WholePage = (int)data.getFirmViewPageCount(page.CountPerPage);
            var table = data.getFirmViewByPage(page.CurrentPage, page.CountPerPage);
            List<Firm> firms = new List<Firm>();
            foreach (var col in table)
            {

                Firm firm = new Firm();

                firm.FirmAddress = col.firm_address;
                firm.FirmID = col.firm_id;
                firm.FirmName = col.firm_name;
                firm.HostCount = (int)col.host_count;
                firm.TaxiCount = (int)col.taxi_count;
                firm.PhoneNumber = col.phone_number;
                firm.DriverCount = (int)col.driver_count;
                firms.Add(firm);

            }

            return firms;
        }

        public List<Firm> GetAllFirm()
        {



            var table = data.getAllFirm();
            List<Firm> firms = new List<Firm>();
            foreach (var col in table)
            {

                Firm firm = new Firm();

                firm.FirmAddress = col.firm_address;
                firm.FirmID = col.firm_id;
                firm.FirmName = col.firm_name;
              
                firm.PhoneNumber = col.phone_number;
         
                firms.Add(firm);

            }

            return firms;
        }
    }
}