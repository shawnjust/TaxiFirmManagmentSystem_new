<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    关于我们
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
<meta charset="utf-8">
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
   <body>
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        车主信息<small>车主管理</small>
                    </h1>
                </div>
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
                                <h4>车主姓名:&nbsp;&nbsp; <small> 方志晗</small></h4></label>
                                <label><h4>公司：  &nbsp;&nbsp;<small>Google美国</small></h4></label>
                                <label><h4>身份证号码: &nbsp;&nbsp;<small>452524141241</small></h4></label>
                                <label><h4>出生日期:&nbsp;&nbsp;  <small>1993/7/12</small></h4></label>
                                <label><h4>性别:  &nbsp;&nbsp;<small>男</small></h4></label>
                        </fieldset>
                        </form>
                        <form>
                        <fieldset>
                            <legend>扩展信息</legend>
                            <label>
                                <h4>电话号码: &nbsp;&nbsp;<small>18914252534</small></h4></label><label><h4>地址:  &nbsp;&nbsp;<small>美国硅谷山景城谷歌总部</small></h4></label>
                        </fieldset>
                        </form>
                        </div>
                        <div class="span4">
                        <form>
                          <fieldset>
                            <legend>车主照片</legend>
                             <img src="../../Content/picture/FrontPage/about.jpg" />
                          </fieldset>
                        </form>
                       
                        </div>
                    </div>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            <li class="active"><a href="#">交易区域</a> </li>
                            <li><a id="modal-614546" href="#modal-container-614546" data-toggle="modal">
                                卖出车辆</a>
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
                            <li><a href="#">买入车辆</a> </li>
                            <li><a href="#">查看车辆信息</a> </li>
                            <li class="nav-header">其他操作 </li>
                            <li><a href="#">修改车主信息</a> </li>
                            <li class="divider"></li>
                            <li><a href="#">修改车辆信息</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:Content>