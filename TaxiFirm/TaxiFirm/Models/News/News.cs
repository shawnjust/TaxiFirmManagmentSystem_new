using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TaxiFirm.Models;
namespace TaxiFirm.Models.News
{
    public class News
    {
        public int NewsId { get; set; }
        public string Title { get; set; }
        public int employee_id { get; set; }
        public DateTime publish_time { get; set; }
        public string content { get; set; }
        public string picture_path { get; set; }
        public string author { get; set; }
        public News(){}
    }
}