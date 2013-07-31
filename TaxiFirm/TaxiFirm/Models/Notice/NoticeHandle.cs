using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.Notice
{
    public class NoticeHandle
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public Notice getNoticeByID(int notice_id)
        {
            Notice notice = new Notice();
            var table = db.getNoticeByID(notice_id);
            var col = table.First<getNoticeByIDResult>();
            notice.notice_id = col.notice_id;
            notice.notice_title = col.title;
            notice.employee_id = col.empolyee_id;
            notice.publish_time = col.publish_time;
            notice.notice_content = col.notice_content;
            notice.author = col.name;
            return notice;
        }
        /*
        //{
        //    name = "%" + name + "%";
        //    page.CountPerPage = 10;
        //    page.WholePage = (int)db.getNoticeBySearchNameAndContentPageCount(page.CountPerPage, name);
        //    var table = db.getNoticeBySearchNameAndContentByPage(page.CurrentPage, page.CountPerPage, name);
        //    List<Notice> Noticees = new List<Notice>();
        //    foreach (var col in table)
        //    {
        //        Notice notice = new Notice();

        //      //  newses.Add(news);
        //    }
        //    return newses;
        }*/
    }
}