﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models" %>
<%@ Import Namespace="TaxiFirm.Models.Manager" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    通知
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
<link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<%
    //判断是否登陆
    Manager CurrentManager = (Manager)Session["CurrentManager"];
    if (CurrentManager == null)
    {
        Response.Redirect("../Home/Login",false);
        
    }
%>
<script type="text/javascript" src="../../Scripts/BackControl/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {


        $(".UpRight").click(function () {


            for (var i = 0; i < $(".UpRight").length; i++) {
                var temp = $(".UpRight").get(i);

                //window.alert($(this).css("background-image"));

                temp.style.backgroundImage = 'none';


            }

            $(this).css("background-image", 'url("../../Content/picture/BackControl/CenterBeSelect.png")');
            // $(this).css("color",'red');
            //  this.style.backgroudColor="red";



        });




    });
</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;background-image:url(../../Content/picture/BackControl/CenterUp2Select.png);"><%:Html.ActionLink("新闻","NewsList","Home") %></td>
        <a>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1">通知</td></a>
        <td height="24">&nbsp;</td>
        <td width="379" height="24">&nbsp;</td>
        <td width="48" height="24" class="UpRight2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="38%" height="24"><input type="checkbox" name="checkbox" id="checkbox" /></td>
            <td width="62%" style="font-size:12px;">全选</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="35%" height="23" align="center" valign="middle"><img src="../../Content/picture/BackControl/add.png" width="11" height="11" /></td>
            <td width="65%" style="font-size:12px;"><%:Html.ActionLink("添加","AddNotice","Home") %></td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="42%" align="center" valign="middle"><img src="../../Content/picture/BackControl/edit.png" width="14" height="14" /></td>
            <td width="58%" height="23" style="font-size:12px;">编辑</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="29%" align="center" valign="middle"><img src="../../Content/picture/BackControl/delete.png" width="11" height="12" /></td>
            <td width="71%" height="23" style="font-size:12px;" style="font-size:12px;">删除</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="44%" height="23" align="center" valign="middle"><img src="../../Content/picture/BackControl/save.png" width="12" height="12" /></td>
            <td width="56%" height="23" style="font-size:12px;">保存</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="45" height="24">&nbsp;</td>
      </tr>
    </table>
  </tr>
  <tr>
    <td align="left" valign="middle"><div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
              <div class="row-fluid">
                    <div class="span6">
                        <div class="page-header">
                          <h1>通知列表</h1>
                            <h1>&nbsp;</h1>
                      </div>
              </div>
                    <div class="span6">
                         <p>&nbsp;</p>
                         <p>&nbsp;</p>
                         <form class="form-search"> 
                            <input type="text" title= "输入客户名或id" class="input-medium search-query" /> <button type="submit" class="btn">搜索</button>
                      </form>
                </div>
                </div>
                <%
                   //预先处理page信息
                             
                            //TaxiFirm.Models.DataClasses1DataContext db = new TaxiFirm.Models.DataClasses1DataContext();
                            //int? pageCount = db.getNewsPageCount((int?)10);
                            NewsAndNotice model = new NewsAndNotice(false);
                            int pageCount = model.getPageCount(10);
                            int thisPage;
                            //判断页数
                            if (Request.QueryString["NoticePage"] == null)
                            {
                                thisPage = 1;
                            }
                            else
                            {
                                thisPage = Convert.ToInt32(Request.QueryString["NoticePage"]);
                            }
                        
                          
                %>
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                          <th align="center">选中</th>
                          <th>序号</th>
                          <th>标题</th>
                          <th>
                                发布时间</th>
                          <th>
                                发布人</th>
                            <th>内容</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                           IQueryable<getNoticeByPageResult> all_record= model.getNoticeRecordByPage(thisPage, 10);
                           int count = 1;
                           foreach(getNoticeByPageResult new_record in all_record)
                           {
                               string style  ;
                               int iResult = count%5;
                               if (iResult == 1)
                               {
                                   style = "center";
                               }
                               else if (iResult == 2)
                               {
                                   style = "success";
                               }else if(iResult == 3)
                               {
                                   style = "error";
                               }
                               else if (iResult == 4)
                               {
                                   style = "warning";
                               }
                               else
                               {
                                   style = "info";
                               }
                               if (iResult == 1)
                               {
                                   Response.Write("<tr>");
                               }
                               else
                               {
                                   Response.Write("<tr class=\""+style+"\">");
                               }
                               //所有多选框的名字为checkboxForNewsID(eg checkboxForNews12)
                               
                               Response.Write("<td align=\"center\"><input name=\"checkboxForNews"+new_record.notice_id+"\" type=\"checkbox\" />&nbsp;</td>");
                               //序号
                               Response.Write("<td>"+((thisPage-1)*10+count)+"</td>");
                               //标题
                               Response.Write("<td>"+new_record.title+"</td>");
                               //日期
                               Response.Write("<td>"+new_record.publish_time+"</td>");
                               //发布人
                               Response.Write("<td>"+new_record.name+"</td>");
                               //内容链接
                               Response.Write("<td style=\"color:#900\" class=\"pointer\"><a href=\"../Home/NotificationContent?notice_id="+new_record.notice_id+"\">更多内容</a></td>");
                               Response.Write("</tr>");
                               count++;
                           }
                        %>
                    </tbody>
                </table>
                
                <div class="pagination pagination-centered">
                    <ul>
                       <%
                 
                        //判断是第一页
                        if (thisPage == 1)
                        {
                            Response.Write("<li><a = href=\"../Home/InformationList?NoticePage=1\">First Page</a></li>");
                        }
                        else {
                            Response.Write("<li><a = href=\"../Home/InformationList?NoticePage=" + (thisPage - 1) + "\">Prev</a></li>");
                        }
                        for (int i = thisPage + 1; i < pageCount && i < thisPage + 6; i++)
                        {
                            Response.Write("<li><a = href=\"../Home/InformationList?NoticePage=" + i + "\">" + i + "</a></li>");
                        }
                        
                        //判断是否是最后一页
                        if (thisPage == pageCount)
                        {
                            Response.Write("<li><a = href=\"../Home/InformationList?NoticePage=" + thisPage + "\">Last Page</a></li>");
                        }
                        else
                        {
                            Response.Write("<li><a = href=\"../Home/InformationList?NoticePage=" + (thisPage + 6) + "\">Next</a></li>");
                        }
                        if (pageCount == null)
                        {

                            Response.Write("<br>没有任何新闻！");
                        }
                        else
                        {

                            Response.Write("<br>第" + Convert.ToString(thisPage) + "页");
                        }
         
                    %>
                  </ul>
              </div>
            </div>
        </div>
    </div></td>
  </tr>
</table>
</asp:Content>