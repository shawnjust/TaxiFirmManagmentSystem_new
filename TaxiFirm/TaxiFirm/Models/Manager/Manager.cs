using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Manager
{
    public class Manager
    {
        public string Name { get; set; }
        public  int FirmID { get; set; }
        public  string IdCard { get; set; }
        public  DateTime Birthday { get; set; }
        public  string Gender { get; set; }
        public  string Telephone { get; set; }
        public string Address { get; set; }
        public string FirmName { get; set; }
        public string FirmAddress { get; set; }

        public DataClasses1DataContext data = new DataClasses1DataContext();
        public Manager()
        {
        }
        public Manager(int id)
        {
            var table = data.getEmpolyeeById(id);
           
            if (table.ToArray<getEmpolyeeByIdResult>().Length > 0)
            {
                var col = table.First<getEmpolyeeByIdResult>();
                this.Name = col.name;
                this.FirmID = col.firm_id;
                this.IdCard = col.id_card;
                this.Birthday = col.birthday;
                this.Address = col.empolyee_address;
                this.Telephone = col.telephone;

                if (col.gender==null)
                {
                    this.Gender = "未知";

                }
                else if ((bool)col.gender)
                {
                    this.Gender = "男";
                }
                else {
                    this.Gender = "女";
                }
            }
 
        }

       
      
        
    }
}