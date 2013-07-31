<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Manager"  %>
<%@ Import Namespace="TaxiFimr.Models" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    关于我们
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
  <meta charset="utf-8">
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <%
    //判断是否登陆
    Manager CurrentManager = (Manager)Session["CurrentManager"];
    if (CurrentManager == null)
    {
        Response.Redirect("../Home/Login",false);
    }
%>
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <style type="text/css">
	input[type="text"], input[type="password"], input[type="email"], textarea, select {
    border: 1px solid rgb(224, 224, 224);
    padding: 8px 9px;
    outline: medium none;
    font-size: 13px;
    color: rgb(136, 136, 136);
    margin: 0px;
    max-width: 100%;
    display: block;
    background: none repeat scroll 0% 0% rgb(255, 255, 255);
    box-shadow: 0px 2px 0px 0px rgba(0, 0, 0, 0.03);
    border-radius: 2px 2px 2px 2px;
}
#contact input.error, #contact textarea.error, #contact select.error {
    border: 1px solid rgb(242, 196, 194);
    background: none repeat scroll 0% 0% rgb(255, 236, 235);
}
#contact textarea {
    max-width: 1000px;
    min-width: 620px;
    min-height: 160px;
}
	</style>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        发布公告<small><%if (Request.QueryString["hint_message"] != null)
                                         Response.Write(Request.QueryString["hint_message"]);
                                         %></small></h1>
                </div>
                <div class="row-fluid">
                    <div class="span8">
                     <!--<a id="A1" href="#modal-container-614546" role="button" class="btn" data-toggle="modal">Launch demo modal</a>
					
					<div id="Div1" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h3 id="H1">
								Modal header
							</h3>
						</div>
						<div class="modal-body">
							<p>
								One fine body…
							</p>
						</div>
						<div class="modal-footer">
							 <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button> <button class="btn btn-primary">Save changes</button>
						</div>
					</div>-->
  <%-- <form id="form_upload" action="" method="post">--%><%--
  <%using(Html.BeginForm("SaveNewNotice","Home",FormMethod.Post,new { enctype = "multipart/form-data" })){ %>--%>
  <form action="../Home/SaveNewNotice" method="post" enctype="multipart/form-data">
                          <fieldset>
                                <legend>基本内容 </legend>
                                <label>
                                                                
                            <h4>公告标题：&nbsp;&nbsp;</h4></label> <br/>
                            <%--<input type="text" align="middle" name="title_str" id="title_str" class="span10"/>--%>
                            <% 
                                //显示默认的文件
                                
                                <input type="text" align="middle" name="title_str" id="title_str" class="span10"/>
                                %>
                               
                                    
                                 
                            <h4>公告内容：</h4>
                            <textarea id="content_str" name="content_str" cols="800" rows="10" spellcheck="true" class="span12">
                            </textarea>
                            <input type="submit" id="submit" value="发送公告"  />
                            <br/>
   	   &nbsp;&nbsp;
   	   </label>
   	   </h4>
       </fieldset>
       </form>
       <%--<%} %>--%>
       <%--//
       （0）修改简单的link ok
       （1）实现ajax异步发布公告
       
       （3）
       //--%>

       </div>

                        <form>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            <li class="active"><a href="#">公告操作
                            </a> </li>
                            <li><%:Html.ActionLink("其他公告","InformationList","Home" )%>
                            </li>
                            
                            
                        </ul>
                    </div>
                  
<script src="../../Scripts/BackControl/jquery.js" type="text/javascript" ></script>
<script src="../../Scripts/BackControl/jquery.form.js" type="text/javascript" ></script>

</asp:Content>
