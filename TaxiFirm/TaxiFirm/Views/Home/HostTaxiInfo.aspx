<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TaxiFirm.Models.getTaxiInformationByEmpolyeeIdResult>>" %>

<asp:content id="aboutTitle" contentplaceholderid="TitleContent" runat="server">
    关于我们
</asp:content>
<asp:content id="aboutContent" contentplaceholderid="MainContent" runat="server">
<meta charset="utf-8">
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
<link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/jquery.js"></script>
       <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h3 class="text-center text-info">
				车辆信息
			</h3>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span6">
			<table class="table">
				<thead>
					<tr>
						<th>车牌号</th>
						<th>
							车辆颜色
						</th>
						<th>
							车辆品牌
						</th>
						<th>
							司机姓名
						</th>
                        <th>
                        	操作
                        </th>
					</tr>
				</thead>
				<tbody>
                <%foreach (var item in Model){ %>
					<tr>
						<td><%: item.plate_number %> </td>
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
                &nbsp;
                <%: Html.ActionLink("详细", "hostTaxiDetail", new { id = item.plate_number })%>
                        </td>
                        
					</tr>
                    <% } %>
				</tbody>
			</table>
		</div>
		<div class="span3" align="right">
        <ul class="nav nav-list"><li class="nav-header">
          基本操作 
        </li><%: Html.ActionLink("查看车辆信息", "HostTaxiInfo", new { id = ViewData["employee_id"] })%>
		<p><%: Html.ActionLink("修改车主信息", "EditHost", new { id = ViewData["employee_id"] })%>
		</p><p><%: Html.ActionLink("买入车辆", "HostBuyTaxi", new { id = ViewData["employee_id"] })%>
		</p></ul></div>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span12" align="center">
			 <button class="btn" type="button">返回</button>
		</div>
	</div>
    </asp:content>
