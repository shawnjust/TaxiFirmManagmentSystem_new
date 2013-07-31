using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.License
{
    public class License
    {
        public string license_id { get; set; }
        public DateTime license_time { get; set; }
        public DateTime birthday { get; set; }
        public string photo_path { get; set; }
        public License() { }
    }
}