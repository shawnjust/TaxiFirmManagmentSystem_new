using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TaxiFirm.Models
{
    public class NewsAndNotice
    {
        bool isNews = true;
        bool isNotice = false;
        string picSrc = null;
        //判断是公告还是新闻
        DataClasses1DataContext db = new DataClasses1DataContext();
        public NewsAndNotice(bool isANews)
        {
            this.isNews = isANews;
            this.isNotice = !isANews;
        }
        //返回页数
        public int getPageCount(int perPage)
        {
            int result;
            if (isNews)
            {
                result = (int)db.getNewsPageCount((int?)perPage);
            }
            else
            {
                result = (int)db.getNoticePageCount((int?)perPage);
            }
            return result;
        }
        //返回记录（根据页信息）
        public IQueryable<getNewsByPageResult> getNewsRecordByPage(int page, int perPage)
        {
            if (page > getPageCount(perPage) || page < 1)
            {
                return null;
            }
            else
            {
                return db.getNewsByPage(page, perPage);
            }
        }
        public IQueryable<getNoticeByPageResult> getNoticeRecordByPage(int page, int perPage)
        {
            if (page > getPageCount(perPage) || page < 1)
            {
                return null;
            }
            else
            {
                return db.getNoticeByPage(page, perPage);
            }
        }
      
        //根据ID返回记录
        public IQueryable<getNewsByIDResult> getNewsById(int id)
        {
            return db.getNewsByID(id);
        }
        public IQueryable<getNoticeByIDResult> getNoticeById(int id)
        {
            return db.getNoticeByID(id);
        }
        //发送新通告
        public void sendNewNotice(string title,int id,string content)
        {
            
            //db.andNotice函数返回值并未进行判断*********************************************
            db.addNotice(title, id, content);
            
        }
        //发送新新闻
        public void sendNewNews(string title,int id,string content,string picPath)
        {
           
            db.addNews(title, id, content, picPath);
            
        }
        //删除新闻
        public void deleteNews(int id)
        {
            db.deleteNewsByID(id);
        }
        //删除通告
        public void deleteNotice(int id)
        {
            db.deleteNoticeByID(id);
        }


    }
}