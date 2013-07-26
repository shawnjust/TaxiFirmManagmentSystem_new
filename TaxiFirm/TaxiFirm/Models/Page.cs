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
        public int CountCurrentPage { get; set; }
        public int CurrentPage { get; set; }
        public int WholePage { get; set; }

        public Page()
        { 
        }
        public void SetWholePage()
        {
            this.WholePage = (this.WholeSize-1)/ this.CountPerPage+1;
        }

        public void SetCountCurrentPage()
        {
            CountCurrentPage = CountPerPage;
            if (this.CurrentPage == this.WholePage)
            {
                CountCurrentPage = this.WholeSize % this.CountPerPage;
            }
 
        }
    }
}