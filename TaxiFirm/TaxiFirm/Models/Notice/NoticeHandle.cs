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
        public List<Notice> GetNoticeByNameByPage(MyPage page, string name)
        {
            name = "%" + name + "%";
            page.CountPerPage = 10;
            page.WholePage = (int)db.getNoticeBySearchNameAndContentPageCount(page.CountPerPage, name);
            var table = db.getNoticeBySearchNameAndContentByPage(page.CurrentPage, page.CountPerPage, name);
            List<Notice> notices = new List<Notice>();
            foreach (var col in table)
            {
                Notice notice = new Notice();
                notice.notice_title = col.title;
                notice.notice_id = col.notice_id;
                notice.publish_time = col.publish_time;
                notice.employee_id = col.empolyee_id;
                notice.author = col.name;
                notice.notice_content = col.notice_content;
                notices.Add(notice);
            }
            return notices;
        }
        //分页得到经理页面
        public List<Notice> GetNoticeByPage(MyPage page)
        {
            page.CountPerPage = 4;
            page.WholePage = (int)db.getNoticePageCount(page.CountPerPage);
            var table = db.getNoticeByPage(page.CurrentPage, page.CountPerPage);
            List<Notice> notices = new List<Notice>();
            foreach (var col in table)
            {
                Notice notice = new Notice();
                notice.notice_title = col.title;
                notice.notice_id = col.notice_id;
                notice.publish_time = col.publish_time;
                notice.employee_id = col.empolyee_id;
                notice.author = col.name;
                notice.notice_content = col.notice_content;
                notices.Add(notice);
            }
            return notices;
        }
        public string GetPartOfTitle(string content)
        {
            if (content.Length < 12)
            {
                string subContent = content;
                return subContent;
            }
            else
            {
                string subContent = content.Substring(0, 13);
                subContent = subContent + "...";
                return subContent;
            }
        }
        public string GetPartOfContent(string content)
        {
            if (content.Length < 116)
            {
                string subContnet = content + "...";
                return subContnet;
            }
            else
            {
                string subContent = content.Substring(0, 116);
                subContent = subContent + "...";
                return subContent;
            }
        }
        public string getNoticeDay(Notice notice)
        {
            return notice.publish_time.Day.ToString();
        }

        public List<int> getNoticeIdSet()
        {
            var table = db.getAllNotice();
            List<int> id_list = new List<int>();
            foreach (var col in table)
            {
                int notice_id = col.notice_id;
                id_list.Add(notice_id);
            }
            return id_list;
        }
        public string getNoticeMonth(Notice notice)
        {
            string month = notice.publish_time.Month.ToString();
            if (month.Equals("1"))
            {
                return "Jan";
            }
            else if (month.Equals("2"))
            {
                return "Feb";
            }
            else if (month.Equals("3"))
            {
                return "Mar";
            }
            else if (month.Equals("4"))
            {
                return "Apr";
            }
            else if (month.Equals("5"))
            {
                return "May";
            }
            else if (month.Equals("6"))
            {
                return "Jun";
            }
            else if (month.Equals("7"))
            {
                return "Jul";
            }
            else if (month.Equals("8"))
            {
                return "Aug";
            }
            else if (month.Equals("9"))
            {
                return "Sep";
            }
            else if (month.Equals("10"))
            {
                return "Oct";
            }
            else if (month.Equals("11"))
            {
                return "Nov";
            }
            else if (month.Equals("12"))
            {
                return "Dec";
            }
            else
            {
                return "WTF";
            }
        }
    }
}