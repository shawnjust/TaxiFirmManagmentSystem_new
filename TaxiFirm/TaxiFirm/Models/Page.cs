using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models
{
    public class Page
    {
        public int WholeSize { get; set; }
        public int CountPerPage { get; set; }
        public int CurrentPage { get; set; }
        public int WholePage { get; set; }

        public Page()
        { 
        }
        public void SetWholePage()
        {
            this.WholePage = this.WholeSize / this.CountPerPage;
        }
    }
}