using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Manager
{
    public class ManagerHandle
    {
        public DataClasses1DataContext data = new DataClasses1DataContext();

        public string GetName(int id)
        {

            var table = data.getEmpolyeeById(id);
            // int a = table.ToArray<getEmpolyeeByIdResult>().Length;
            var col = table.First<getEmpolyeeByIdResult>();
            return col.name;

        }

        //分页得到经理页面
        public List<Manager> GetManagerByPage(Page page)
        {
            var table=data.getManagerByPage(page.CurrentPage, page.CountPerPage);
            List<Manager> managers = new List<Manager>();
            foreach (var col in table)
            {
                Manager manager = new Manager();
                manager.Address = col.empolyee_address;
                manager.Birthday =(DateTime) col.birthday;
                manager.FirmID = (int)col.firm_id;
                manager.IdCard = col.id_card;
                manager.Name = col.name;
                manager.Telephone = col.phone_number;
                manager.FirmAddress = col.firm_address;
                manager.FirmName = col.firm_name;
               
                if (col.gender == null)
                {
                   manager.Gender = "未知";

                }
                else if ((bool)col.gender)
                {
                    manager.Gender = "男";
                }
                else
                {
                   manager.Gender = "女";
                }

                managers.Add(manager);
 
            }

            return managers;
        }
    }
}