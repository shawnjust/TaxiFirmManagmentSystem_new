using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Notice
{
    public class Notice
    {
        public int notice_id { get; set; }
        public string notice_title { get; set; }
        public int employee_id { get; set; }
        public string notice_content { get; set; }
        public DateTime publish_time { get; set; }
        public string author { get; set; }
    }
}