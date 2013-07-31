using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Taxi
{
    public class TaxiHandle
    {

        public DataClasses1DataContext data = new DataClasses1DataContext();

        //通过名称分页得到客户页面
        public List<Taxi> GetTaxiByPlateNumberByPage(MyPage page, string PlateNumber)
        {
            PlateNumber = "%" + PlateNumber + "%";
            page.CountPerPage = 10;
            page.WholePage = (int)data.getTaxiByPlateNumberPageCount(page.CountPerPage, PlateNumber);
            var table = data.getTaxiByPlateNumberByPage(page.CurrentPage, page.CountPerPage, PlateNumber);
            List<Taxi> taxis = new List<Taxi>();

            foreach (var col in table)
            {

                Taxi taxi = new Taxi();
                taxi.PlateNumber = col.plate_number;
                taxi.TaxiBrand = col.taxi_brand;
                taxi.TaxiColor = col.taxi_color;
                taxi.OwenerID = col.host_empolyee_id;
            

               taxis.Add(taxi);

            }

            return taxis;
        }

        //通过id得到车辆
        public Taxi getTaxiById(string id)
        {
            Taxi taxi = new Taxi();
            var table = data.getTaxiInformationByPlatenumber(id);
            var col = table.First<getTaxiInformationByPlatenumberResult>();
            taxi.PlateNumber = col.plate_number;
            taxi.TaxiBrand = col.taxi_brand;
            taxi.TaxiColor = col.taxi_color;
            taxi.OwenerID = col.host_empolyee_id;
           
            return taxi;
        }
        //分页得到车辆页面
        public List<Taxi> GetTaxiByPage(MyPage page)
        {

            List<Taxi> taxis = new List<Taxi>();
            try
            {
                page.CountPerPage = 10;
                page.WholePage = (int)data.getTaxiPageCount(page.CountPerPage);
                var table = data.getTaxiByPage(page.CurrentPage, page.CountPerPage);
               
                foreach (var col in table)
                {

                    Taxi taxi = new Taxi();
                    taxi.PlateNumber = col.plate_number;
                    taxi.TaxiBrand = col.taxi_brand;
                    taxi.TaxiColor = col.taxi_color;
                    taxi.OwenerID = col.host_empolyee_id;
                    taxis.Add(taxi);

                }

                return taxis;
            }
            catch
            {
                return taxis;

            }
        }
    }
}