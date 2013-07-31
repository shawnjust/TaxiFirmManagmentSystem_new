<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master"  Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.TransactionModal>" %>

<asp:content id="aboutTitle" contentplaceholderid="TitleContent" runat="server">
    关于我们
</asp:content>
<asp:content id="aboutContent" contentplaceholderid="MainContent" runat="server">
<body>
<link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
<link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/jquery.js"></script>


<% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h3 class="text-center text-info">
				卖出车辆
			</h3>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span6" align="center">
			<dl>
				<dt>
					卖家ID
				</dt>
                <br/>
				<dd>
					<%: Model.owner_id%>
				</dd>
                <br/>
				<dt>
					卖家姓名
				</dt>
                <br/>
				<dd>
					<%: Model.owner_name%>
				</dd>
                <br />

			</dl>
		</div>
		<div class="span6" align="center">
			<dl>
				<dt>
					选择买方
				</dt>

				<dd>
					<div class="btn-group">
                         <%: Html.DropDownListFor(model => model.buyer_id, Model.buyer_list)%>
                <%: Html.ValidationMessageFor(model => model.buyer_id) %>
                    </div>
				</dd>

				<dt>
					车辆ID
				</dt>
				<dd>
					<%: Model.car_id%>
				</dd>
				<dt>
					车辆品牌
				</dt>
				<dd>
					<%: Model.car_name%>
				</dd>
			</dl>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span12" align="center">
			 <button class="btn btn-success" type="button">保存</button>
             
		</div>
	</div>
</div>
<button class="btn btn-info" type="button" onclick="history.back()">返回</button>
<% } %>


</asp:content>

