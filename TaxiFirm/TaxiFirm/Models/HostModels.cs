using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Web.Mvc;

namespace TaxiFirm.Models
{
    public class AddHostModal
    {
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Name")]
        public string name { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("ID Card")]
        public string id_card { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Gender")]
        public bool? gender { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Address")]
        public string address { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Telephone")]
        public string telephone { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [ValidatePasswordLength]
        [DisplayName("Password")]
        public string password { get; set; }

        [Required]
        [DataType(DataType.DateTime)]
        [DisplayName("Birthday")]
        public DateTime birthday { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Firm")]
        public int firm_id { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Photo")]
        public string photo { get; set; }

        [DataType(DataType.Text)]
        [DisplayName("Taxi Brand")]
        public SelectList firm_list { get; set; }
    }

    public class ShowHostModal
    {
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Employee ID")]
        public int employee_id { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Name")]
        public string name { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("ID Card")]
        public string id_card { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Gender")]
        public bool? gender { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Address")]
        public string address { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Telephone")]
        public string telephone { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Birthday")]
        public string birthday { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Firm Name")]
        public string firm_name { get; set; }

        [DataType(DataType.Text)]
        [DisplayName("Taxi List")]
        public List<getAllTaxiInformationResult> taxi_list { get; set; }

    }

    public class TransactionModal
    {
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Owner ID")]
        public int owner_id { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Owner Name")]
        public string owner_name { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Buyer ID")]
        public int buyer_id { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Car ID")]
        public string car_id { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Car Name")]
        public string car_name { get; set; }

        [DataType(DataType.Text)]
        [DisplayName("Buyer List")]
        public SelectList buyer_list { get; set; }
    }

    public class BuyTaxiModal
    {
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Current User ID")]
        public int now_id { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Current User Name")]
        public string now_name { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Car ID")]
        public string car_id { get; set; }
    }

    public class HostListModal
    {
        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Employee ID")]
        public int employee_id { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Name")]
        public string name { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("ID Card")]
        public string id_card { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Gender")]
        public bool? gender { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Age")]
        public int? age { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Address")]
        public string address { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Telephone")]
        public string telephone { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [DisplayName("Car Count")]
        public int? car_count { get; set; }

    }
}