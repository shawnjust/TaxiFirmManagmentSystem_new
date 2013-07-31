<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace = "TaxiFirm.Models" %>
<%@ Import Namespace="TaxiFirm.Models.Manager" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    公告内容
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>


<%
    //判断是否登陆
    Manager CurrentManager = (Manager)Session["CurrentManager"];
    if (CurrentManager == null)
    {
        Response.Redirect("../Home/Login",false);
    }
%>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>公告内容<small></small>
                    </h1>
                </div>
                <div class="row-fluid">
                    <div class="span8">
                     <%
                         //预先处理信息
                         //TaxiFirm.Models.DataClasses1DataContext db = new TaxiFirm.Models.DataClasses1DataContext(); 
                         NewsAndNotice model = new NewsAndNotice(false);   
                         int this_id = Convert.ToInt32(Request.QueryString["notice_id"]);
                         getNoticeByIDResult this_record = model.getNoticeById(this_id).First();
                         
                     %>
                        <form>
                        <fieldset>
                            <legend>基本信息<small><%
                                                   if (Request.QueryString["hint_msg"] != null)
                                                   {
                                                       Response.Write("删除失败！"+Request.QueryString["hint_msg"]);
                                                   }
                                                    %></small></legend>
                            <label>
                                标题：<%=this_record.title %>
                            </label>
                            <label>发布时间:<%=this_record.publish_time %>
                            </label>
                            <label>发布人:<%=this_record.name %>
                            </label>
                        </fieldset>
                        </form>
                        <form>
                        <fieldset>
                            <legend>内容</legend>
                        <p style="TEXT-ALIGN: left" align="left"><font color="navy" face="微软雅黑">  &nbsp; &nbsp; &nbsp; &nbsp;<%=this_record.notice_content %></font></p>	
                        </fieldset>
                        </form>
                    </div>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            <li class="active"><a href="#">公告展示</a> </li>
                            <li><%
                                    Response.Write("<a href=\"../Home/deleteNotice?notice_id="+Request.QueryString["notice_id"]+"\">删除</a>");   
                                  %>
                                <div id="modal-container-614546" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            ×</button>
                                        <h3 id="myModalLabel">
                                            Modal header
                                        </h3>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            One fine body…
                                        </p>
                                    </div>
                                    <div class="modal-footer">
                                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                                            关闭</button>
                                        <button class="btn btn-primary">
                                            保存修改</button>
                                    </div>
                                </div>
                            </li>
                          
                            <li><%Response.Write("<a href=\"../Home/ChangeNotice?notice_id="+Request.QueryString["notice_id"]+"\">修改公告<a>"); %> </li>
                          
                            <li class="nav-header">备注信息 </li>
                            <li><a href="#">备注</a></li>
                            <li class="divider"></li>
                            <li>   </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
