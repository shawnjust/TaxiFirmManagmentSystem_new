using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TaxiFirm.Models.Firm;
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

     
        //添加经理
        public bool AddManager(int id)
        {

            try {
                data.addManager(id);
                return true;
            }
            catch{
                return false;
                }
        }

        //判断是否为经理
        public bool IsManager(int id)
        {
            return data.isManager(id) == 0 ? false : true;
        }

        //删除经理

        public bool DeleteManagerByID(int ID)
        {
            try
            {
                data.deleteManagerById(ID);
                return true;
            }
            catch 
            {
                return false;

            }
        }
        //分页得到搜索的经理页面
        public List<Manager> GetManagerByNameByPage(MyPage page,string name)
        {
            name = "%" + name + "%";
            page.CountPerPage = 10;
            page.WholePage = (int)data.getManagerByNamePageCount(page.CountPerPage,name);
            var table = data.getManagerByNameByPage(page.CurrentPage, page.CountPerPage,name);
            List<Manager> managers = new List<Manager>();
            foreach (var col in table)
            {

                Manager manager = new Manager();
                manager.EmployId = col.empolyee_id;
                manager.Address = col.empolyee_address;
                manager.Birthday = (DateTime)col.birthday;
                manager.FirmID = (int)col.firm_id;
                manager.IdCard = col.id_card;
                manager.Name = col.name;
                manager.Telephone = col.phone_number;
                manager.firm = new TaxiFirm.Models.Firm.Firm(manager.FirmID); ;
                manager.EmployId = col.empolyee_id;
                manager.HasRight=data.getManagerTableByID(manager.EmployId).First<getManagerTableByIDResult>().is_available ? "是" : "否";
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
        //分页得到经理页面
        public List<Manager> GetManagerByPage(MyPage page)
        {
           
            page.CountPerPage = 10;
            page.WholePage = (int)data.getManagerPageCount(page.CountPerPage);
            var table=data.getManagerByPage(page.CurrentPage, page.CountPerPage);
            List<Manager> managers = new List<Manager>();
            foreach (var col in table)
            {
                                                    
                Manager manager = new Manager();
                manager.EmployId=col.empolyee_id;
                manager.Address = col.empolyee_address;
                manager.Birthday =(DateTime) col.birthday;
                manager.FirmID = (int)col.firm_id;
                manager.IdCard = col.id_card;
                manager.Name = col.name;
                manager.Telephone = col.phone_number;
                manager.firm = new TaxiFirm.Models.Firm.Firm(manager.FirmID); ;
                manager.EmployId = col.empolyee_id;
                manager.HasRight=data.getManagerTableByID(manager.EmployId).First<getManagerTableByIDResult>().is_available ? "是" : "否";
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