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
            var table = db.getNewsByID(news_id);
            var col = table.First<getNewsByIDResult>();
            news.NewsId = col.news_id;
            news.employee_id = col.empolyee_id;
            news.publish_time = col.publish_time;
            news.Title = col.title;
            news.content = col.news_content;
            return news;
        }
        
    }
}