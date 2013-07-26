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
        public List<Manager> GetManagerByPage(Page page)
        {
            var table=data.getManagerByPage(page.CurrentPage, page.CountPerPage);
            List<Manager> managers = new List<Manager>();
            foreach (var col in table)
            {
                Manager manager = new Manager();
          
 
            }

            return managers;
        }
    }
}