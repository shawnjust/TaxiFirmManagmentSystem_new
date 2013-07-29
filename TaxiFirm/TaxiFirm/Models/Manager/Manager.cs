using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TaxiFirm.Models.Firm;

namespace TaxiFirm.Models.Manager
{
    public class Manager
    {
        public string Name { get; set; }
        public  int FirmID { get; set; }
        public string HasRight { get; set; }
        public  string IdCard { get; set; }
        public  DateTime Birthday { get; set; }
        public  string Gender { get; set; }
        public  string Telephone { get; set; }
        public string Address { get; set; }
        public int Age { get; set; }
        public int EmployId { get; set; }
        public TaxiFirm.Models.Firm.Firm firm { get; set; }
        public DataClasses1DataContext data = new DataClasses1DataContext();
        public bool GenderBite { get; set; }
        public Manager()
        {
        }
        public Manager(int id)
        {
            var table = data.getEmpolyeeById(id);
           
            if (table.ToArray<getEmpolyeeByIdResult>().Length > 0)
            {

                var col = table.First<getEmpolyeeByIdResult>();
                this.EmployId = id;
                this.Name = col.name;
                this.FirmID = col.firm_id;
                this.firm = new TaxiFirm.Models.Firm.Firm(this.FirmID);
                this.IdCard = col.id_card;
                this.Birthday = col.birthday;
                this.Address = col.empolyee_address;
                this.Telephone = col.telephone;
                this.GenderBite = (bool)col.gender;
                this.HasRight =data.getManagerTableByID(this.EmployId).First<getManagerTableByIDResult>().is_available?"是":"否";
                this.Age = int.Parse(DateTime.Now.Year.ToString()) -int.Parse(Birthday.Year.ToString());
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