using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models
{


    public enum Identity
    {
        manager,
        custemer,
        driver,
        host,
        unlegal,

    }

    public class IdentityHandle
    {
        public DataClasses1DataContext data = new DataClasses1DataContext();


        public Identity CheckIdentity(int id, string password)
        {
            if (data.checkCustomerLoginPassword(id, password) != 0)
            {
                return Identity.custemer;

            }
            else if (data.checkEmpolyeeLoginPassword(id, password) != 0)
            {
                if (data.isManager(id) != 0) return Identity.manager;
                else if (data.isDriver(id) != 0) return Identity.driver;
                else if (data.isHost(id) != 0) return Identity.host;
                else return Identity.unlegal;

            }
            return Identity.unlegal;
        }

       

       
    }
}