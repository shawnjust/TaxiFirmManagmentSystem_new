using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models
{
    public class MyPage
    {
        public int PageWidth{ get;set;}
        public int WholeSize { get; set; }
        public int CountPerPage { get; set; }
        public int CountCurrentPage { get; set; }
        public int CurrentPage { get; set; }
        public int WholePage { get; set; }
       // public int InitPage { get; set; }

        public MyPage()
        {
            PageWidth = 5;
        }
        //public void SetCurrentPage(int currentpage)
        //{
        //    this.CurrentPage = currentpage;
        //    if (this.CurrentPage / this.PageWidth != this.W0holePage / this.PageWidth) //不是区间的最后一页
        //    {
                
        //    }
        //    else { 
        //    }

        //}
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