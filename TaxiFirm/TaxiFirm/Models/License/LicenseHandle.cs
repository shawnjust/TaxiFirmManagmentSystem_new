using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.License
{
    public class LicenseHandle
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public License getLicenseByID(int notice_id)
        {
            License license = new License();
            var table = db.getAllDriver();
            var col = table.First<getAllDriverResult>();
            license.license_id = col.license_id;
            license.license_time = (DateTime)col.license_time;
            license.birthday = (DateTime)col.birthday;
            license.photo_path = col.photo_path;
            return license;
        }
    }
}