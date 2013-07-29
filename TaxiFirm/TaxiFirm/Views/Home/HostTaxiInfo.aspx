<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TaxiFirm.Models.getAllTaxiInformationResult>>" %>

<asp:content id="aboutTitle" contentplaceholderid="TitleContent" runat="server">
    关于我们
</asp:content>
<asp:content id="aboutContent" contentplaceholderid="MainContent" runat="server">
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
                        车主信息<small>车辆管理</small>
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
                        <table class="table table-hover table-bordered">
        <tr>
            <th>
                plate_number
            </th>
            <th>
                taxi_color
            </th>
            <th>
                taxi_brand
            </th>
            <th>
                driver_name
            </th>
            <th>
                操作
            </th>
        </tr>

    <% foreach (var item in Model)
       { %>
    
        <tr>
            
            <td>
                <%: item.plate_number %>
            </td>
            <td>
                <%: item.taxi_color %>
            </td>
            <td>
                <%: item.taxi_brand %>
            </td>
            <td>
                <%: item.driver_name %>
            </td>
            <td>
                <%: Html.ActionLink("卖出", "HostTransaction", new { id=item.plate_number  }) %>
                <%: Html.ActionLink("详细", "hostTaxiDetail", new { id = item.plate_number })%>
            </td>
        </tr>
    
    <% } %>

    </table>
                        </div>
                    </div>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                          <%--  <li class="active"><a href="#">交易区域</a> </li>
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
                            <%--
                            <li><a href="#">买入车辆</a> </li>--%>
                            <%: Html.ActionLink("查看车辆信息", "HostTaxiInfo", new { id = ViewData["employee_id"] })%>
                            <%--<li class="nav-header">其他操作 </li>--%>
                            <p>
                                <%: Html.ActionLink("修改车主信息", "EditHost", new { id = ViewData["employee_id"] })%>
                            </p>
                            <p>
                                <%: Html.ActionLink("买入车辆", "HostBuyTaxi", new { id = ViewData["employee_id"] })%>
                            </p>
                            <%--<li class="divider"></li>--%>
                            <%--<li><a href="#">修改车辆信息</a></li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:content>
