<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Manager" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
   我的信息
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
  <meta charset="utf-8">
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
   <body>
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
   <script type="text/javascript">
       $(document).ready(function () {
           $("#button1").click(
            function () {
                var new1 = document.getElementById("New1").value;
                var new2 = document.getElementById("New2").value;

                if (new1.length < 6) { window.alert("新密码不得低于6位");return; }
                if (new1 != new2) { window.alert("两次密码不相同，请重新输入"); return; }

                var form1 = document.getElementById("form1");

                var con = window.confirm("确认修改");
                if (con) {
                    form1.submit();

                }
                else {
                    form1.action = "/Home/ManagerSelfInfo";
                    form1.submit();


                }

            }

            );
       });
    
    </script>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        我的信息<small>账号管理</small>
                    </h1>
                </div>
                <% Manager manager = (Manager)Session["CurrentManager"];   %>
                <div class="row-fluid">
                    <div class="span8">
                    <div class="span4" style="width:300px">
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
                        <form>
                        <fieldset>
                            <legend>基本信息</legend>
                             <label>
                                <h4>编号:&nbsp;&nbsp; <small> <%:manager.EmployId %></small></h4></label>
                            <label>
                                <h4>经理姓名:&nbsp;&nbsp; <small> <%:manager.Name %></small></h4></label>
                                <label><h4>公司：  &nbsp;&nbsp;<small><%:manager.FirmID %></small></h4></label>
                                <label><h4>身份证号码: &nbsp;&nbsp;<small><%:manager.IdCard %></small></h4></label>
                                <label><h4>出生日期:&nbsp;&nbsp;  <small><%:manager.Birthday.ToShortDateString().ToString().Replace("/","-") %></small></h4></label>
                                <label><h4>性别:  &nbsp;&nbsp;<small><%:manager.Gender %></small></h4></label>
                                <label><h4>年龄:  &nbsp;&nbsp;<small><%:manager.Age %></small></h4></label>
                                
                        </fieldset>
                        </form>
                        <form>
                        <fieldset>
                            <legend>扩展信息</legend>
                            <label>
                                <h4>电话号码: &nbsp;&nbsp;<small><%:manager.Telephone %></small></h4></label><label><h4>地址:  &nbsp;&nbsp;<small><%:manager.Address %></small></h4></label>
                                <label><h4>权限:  &nbsp;&nbsp;<small>无</small></h4></label>
                        </fieldset>
                        </form>
                        </div>
                        <div class="span4" style="width:380px">
                            <form id ="form1" method="post" action="/Home/ChangePasswordHandle">
                        <fieldset>
                            <legend>修改密码</legend>
                            <label>
                                <h4>旧密码: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="PrePassword"  type="password" /></h4>
                                </label><label>
                                <h4>新密码:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="NewPassword" id="New1" type="password" /></h4></label>
                                <label>
                                <h4>密码确认:  &nbsp;&nbsp;<input name="NewPassword2" id="New2" type="password" /></h4></label>
                                 <label><h4></h4></label>
                        </fieldset>
                        <br />
                        <br />
                       
                                                <button id="button1" class="btn btn-primary" type="button" style="alignment-adjust:middle">
                        提交</button>
                        </form>
                       
                        </div>
                    </div>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            <li class="active"><a href="#">我的信息</a> </li>
                            <li><a href="/Home/ModifySelfInfo">修改信息</a> </li>
                             <li><a href="/Home/ChangePassword">修改密码</a> </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
