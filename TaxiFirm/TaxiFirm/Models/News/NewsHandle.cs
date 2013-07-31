using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models.News
{
    public class NewsHandle
    {
        public DataClasses1DataContext db = new DataClasses1DataContext();
       
        public News getNewsById(int news_id)
        {
            News news = new News();
            try
            {
                
                var table = db.getNewsByID(news_id);
                var col = table.First<getNewsByIDResult>();
                news.NewsId = col.news_id;
                news.employee_id = col.empolyee_id;
                news.publish_time = col.publish_time;
                news.Title = col.title;
                news.content = col.news_content;
                news.picture_path = col.picture_path;
                news.author = col.name;
                return news;
            }
            catch (System.Exception ex)
            {
            	
            }
            return news;
        }
        public List<News> GetNewsByNameByPage(MyPage page, string name)
        {
            name = "%" + name + "%";
            page.CountPerPage = 10;
            page.WholePage = (int)db.getNewsBySearchNameAndContentPageCount(page.CountPerPage, name);
            var table = db.getNewsBySearchNameAndContentByPage(page.CurrentPage, page.CountPerPage, name);
            List<News> newses = new List<News>();
            foreach (var col in table)
            {
                News news = new News();
                news.NewsId = col.news_id;
                news.Title = col.title;
                news.employee_id = col.empolyee_id;
                news.publish_time = col.publish_time;
                news.content = col.news_content;
                news.picture_path = col.picture_path;
                news.author = col.name;
                newses.Add(news);
            }
            return newses;
        }
        //分页得到经理页面
        public List<News> GetNewsByPage(MyPage page)
        {
            page.CountPerPage = 4;
            page.WholePage = (int)db.getNewsPageCount(page.CountPerPage);
            var table = db.getNewsByPage(page.CurrentPage, page.CountPerPage);
            List<News> newses = new List<News>();
            foreach (var col in table)
            {
                News news = new News();
                news.Title = col.title;
                news.publish_time = col.publish_time;
                news.employee_id = col.empolyee_id;
                news.NewsId = col.news_id;
                news.content = col.news_content;
                news.picture_path = col.picture_path;
                news.author = col.name;
                newses.Add(news);
            }
            return newses;
        }
        public string GetNewsAuthor(int Employee_id)
        {
            var table = db.getEmpolyeeById(Employee_id);
            var col = table.First<getEmpolyeeByIdResult>();
            return col.name;
        }
        public string GetPartOfTitle(string content)
        {
            if (content.Length<12)
            {
                string subContent = content;
                return subContent;
            }
            else
            {
                string subContent = content.Substring(0, 11);
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
        public List<DateTime> GetTimeSet()
        {
            var table = db.getAllNews();
            List<DateTime> time_set = new List<DateTime>();
            foreach (var col in table)
            {
                DateTime time = DateTime.Parse(col.publish_time.ToShortDateString());
                time_set.Add(time);
            }
            time_set.Distinct<DateTime>();
            return time_set;
        }
        public List<List<News>> GetNewsSetOnSameTime(DateTime news_time)
        {
            var table = db.getAllNews();
            List<News> news_set = new List<News>();
            List<List<News>> news_group = new List<List<News>>();
            foreach (var col in table)
            {
                News news = new News();
                news.Title = col.title;
                news.publish_time = col.publish_time;
                news.employee_id = col.empolyee_id;
                news.NewsId = col.news_id;
                news.content = col.news_content;
                news.picture_path = col.picture_path;
                news.author = col.name;
                news_set.Add(news);
            }
            foreach (News news in news_set)
            {
                List<News> group_by_time = new List<News>();
                DateTime date = news.publish_time;
                foreach (News news2 in news_set)
                {
                    if (news2.publish_time.Date == news.publish_time.Date)
                    {
                        group_by_time.Add(news2);
                    }
                }
                news_group.Add(group_by_time);
            }
            return news_group;
        }
        public string getNewsDay(News news)
        {
            return news.publish_time.Day.ToString();
        }
        public string getNewsMonth(News news)
        {
            string month = news.publish_time.Month.ToString();
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
        public List<int> getNewsIdSet()
        {
            var table = db.getAllNews();
            List<int> id_list = new List<int>();
            foreach(var col in table)
            {
                int news_id = col.news_id;
                id_list.Add(news_id);
            }
            return id_list;
        }
        public List<News> getAllNews()
        {
            List<News> newses = new List<News>();
            var table = db.getAllNews();
            foreach (var col in table)
            {
                News news = new News();
                news.Title = col.title;
                news.publish_time = col.publish_time;
                news.employee_id = col.empolyee_id;
                news.NewsId = col.news_id;
                news.content = col.news_content;
                news.picture_path = col.picture_path;
                news.author = col.name;
                newses.Add(news);
            }
            return newses;
        }
    }
}