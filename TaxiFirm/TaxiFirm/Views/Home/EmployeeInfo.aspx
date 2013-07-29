<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models" %>
<%@ Import Namespace="TaxiFirm.Models.Employee" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    关于我们
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
  <meta charset="utf-8">
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
   
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        工号信息<small>角色管理</small>
                    </h1>
                </div>
                <%Employee employee = (Employee)ViewData["employee"];

                  string type = (string)ViewData["type"];  %>
                <div class="row-fluid">
                    <div class="span8">
                    <div class="span4">
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
                                <h4>姓名:&nbsp;&nbsp; <small> <%:employee.Name%></small></h4></label>
                                <label><h4>公司：  &nbsp;&nbsp;<small><%:employee.FirmID %></small></h4></label>
                                <label><h4>身份证号码: &nbsp;&nbsp;<small><%:employee.IdCard %></small></h4></label>
                                <label><h4>出生日期:&nbsp;&nbsp;  <small><%:employee.Birthday %></small></h4></label>
                                <label><h4>性别:  &nbsp;&nbsp;<small><%:employee.Gender %></small></h4></label>
                                 <label><h4>年龄:  &nbsp;&nbsp;<small><%:employee.Age%></small></h4></label>
                                
                        </fieldset>
                        </form>
                        <form>
                        <fieldset>
                            <legend>扩展信息</legend>
                            <label>
                                <h4>电话号码: &nbsp;&nbsp;<small><%:employee.Telephone %></small></h4></label><label><h4>地址:  &nbsp;&nbsp;<small><%:employee.Address %></small></h4></label>
                                <label><h4>身份:  &nbsp;&nbsp;<small>司机</small></h4></label>
                        </fieldset>
                        </form>
                        </div>
                        <div class="span4" style="width:300px">
                        <form>
                          <fieldset>
                            <legend>公司信息</legend>
                       
                            <label>
                                <h4>公司编号: &nbsp;&nbsp;<small><%:employee.FirmID %></small></h4></label><label><h4>公司名称:  &nbsp;&nbsp;<small><%:employee.firm.FirmName%></small></h4></label>
                                <label><h4>公司地址:  &nbsp;&nbsp;<small><%:employee.firm.FirmAddress %></small></h4></label>
                                 <label><h4>公司电话:  &nbsp;&nbsp;<small><%:employee.firm.PhoneNumber %></small></h4></label>
                     
                          </fieldset>
                        </form>
                       
                        </div>
                    </div>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            
                            <li class="active"><a href="#">信息管理</a> </li>
                           
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
                                            Close</button>
                                        <button class="btn btn-primary">
                                            Save changes</button>
                                    </div>
                                </div>
                            </li>
                            <%if("Info".Equals(type)){ %>
                            <li><a href="#">删除</a> </li>
            
                            <li><a href="/Home/ModifyEmployee">修改信息</a> </li>
                            <%} %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
