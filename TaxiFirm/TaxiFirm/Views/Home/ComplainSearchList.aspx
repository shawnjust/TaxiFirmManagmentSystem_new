<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TaxiFirm.Models.getComplaintBySearchContentByPageResult>>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    意见管理
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/ComplainList.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	width:449px;
	height:34px;
	z-index:1;
	left: 121px;
	top: 254px;
}
div a:hover{
	cursor:pointer;
	}
-->
</style>
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
    <link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet"
        type="text/css" />
    <link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <ul class="nav nav-tabs">
                <li class="active"><%: Html.ActionLink("未受理", "ComplainList")%></li>
                <li class="active"><%: Html.ActionLink("已受理", "ComplainListAccepted")%></li>
                </ul>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span6">
                <div class="page-header">
                    <h1>
                        投诉列表</h1>
                    <h1>
                        <small>竭诚为客户服务</small></h1>
                </div>
            </div>
            <div class="span6">
                <% using (Html.BeginForm("ComplainList", "Home", new { page = "" }, FormMethod.Get))
                            {%>
                                <%= Html.TextBox("query") %>
                                <button type="submit" class="btn">搜索</button>
                            <% }%>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span12">
            </div>
        </div>

            <%for (int id = 0; id < Model.Count(); id += 3)
              {
            %>
            <div class="row-fluid">
            <div class="span12">
                <%
                    for (int p = id; p < Math.Min(id + 3, Model.Count()); p++)
                    {
                %>
                <div class="span4">
                    <h2>
                        投诉人姓名：<%: Model.ElementAt(p).customer_name %>
                    </h2>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="45" style="font-size: 13px;">
                                <small>Email：<%: Model.ElementAt(p).customer_email %>
                                </small>
                            </td>
                            <td width="55%" style="font-size: 13px;">
                                <small></small>
                            </td>
                        </tr>
                    </table>
                    <p>
                        <%: Model.ElementAt(p).complaint_content %></p>
                    <p>
                        <%: Html.ActionLink("受理", "ComplainAccept", new { id = Model.ElementAt(p).complaint_id })%>
                    </p>
                    <div class="row-fluid">
                        <div class="span6">
                            <p>
                                &nbsp;</p>
                            <p>
                                &nbsp;</p>
                        </div>
                    </div>
                </div>
                <% }%>
            </div>
            <% } %>
            <div class="row-fluid">
                <div class="span12">
                    <div class="pagination pagination-centered">
                        <ul>
                            <% int curPage = (int)ViewData["pageCount"];
                           int total = (int)ViewData["maxPage"]; %>

                        <li>
                        <% if (curPage>0) { %>
                            <%: Html.ActionLink("Prev", "ComplainList", new { id = Math.Max(curPage-1, 0) })%>
                         <% } %>
                        </li>
                        <%
                            
                            for (int i = Math.Max(0, curPage - 2); i < Math.Min(curPage + 3, total); i++)
                            {
                        %>
                            <li>
                                <%: Html.ActionLink(i + 1 + "", "ComplainList", new { id = i })%>
                            </li>
                        <% } %>
                        <li>
                            <% if (curPage<total-1) { %>
                            <%: Html.ActionLink("Next", "ComplainList", new { id = Math.Min(curPage + 1, total - 1) })%>
                            <% } %>
                        </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
