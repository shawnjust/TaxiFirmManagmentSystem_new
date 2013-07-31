using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models
{
    public class TaxiRepository
    {
        private DataClasses1DataContext db = new DataClasses1DataContext() ;

        public IQueryable<getAllTaxiInformationResult> FindAllTaxis(){
             return db.getAllTaxiInformation();
        }

        public IQueryable<getAllHostResult> GetAllHosts()
        {
            return db.getAllHost();
        }

        public IQueryable<getAllDriverResult> GetAllDrivers()
        {
            return db.getAllDriver();
        }

        public getTaxiInformationByPlatenumberResult FindTaxiByPlatenumber(string plate_number){
            getTaxiInformationByPlatenumberResult temp;
            try
            {
                temp = db.getTaxiInformationByPlatenumber(plate_number).First();
            }
            catch
            {
                temp = null;
            }
           
            return temp;
           
        }

        public void Save()
        {
            db.SubmitChanges();
        }

        public void AddTaxi(string plate_number, string taxi_color, string taxi_brand, int? employee_id)
        {
            db.addTaxiBelongToHost(plate_number, taxi_color, taxi_brand, employee_id);
        }

        public void DeleteTaxi(string plate_number)
        {
            db.deleteTaxi(plate_number);
        }

        public void UpdateTaxi(string plate_number, string taxi_color, string taxi_brand, int? employee_id)
        {
            db.updateTaxiToHostByPlatenumber(plate_number, taxi_color, taxi_brand, employee_id);
        }

        public void RentOutTaxi(string plate_number, int? employee_id, DateTime? rent_begin_time, DateTime? rent_due_return_time )
        {
            db.addOrder(plate_number, employee_id, rent_begin_time, rent_due_return_time);
        }

        public void ReturnCar(string plate_number, DateTime? rent_return_time)
        {
            db.returnCar(plate_number, rent_return_time);
        }

        public void CarDealing(string plate_number)
        {
            db.deleteTaxi(plate_number);
        }
        public IQueryable<getAllTaxiPlatenumberResult> GetAllPlateNumbers()
        {
            return db.getAllTaxiPlatenumber();
        }
    }
}