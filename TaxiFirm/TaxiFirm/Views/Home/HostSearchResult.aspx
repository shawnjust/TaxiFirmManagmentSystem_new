<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TaxiFirm.Models.HostListModal>>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车主列表
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
    <link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet"
        type="text/css" />
    <link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
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
            <td height="24" class="CenterUp">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color: #06F;
                            background-image: url(../../Content/picture/BackControl/CenterUp2Select.png);">
                            车主
                        </td>
                        <td height="24">
                            &nbsp;
                        </td>
                        <td width="379" height="24">
                            &nbsp;
                        </td>
                        <td width="48" height="24" class="UpRight2">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="38%" height="24">
                                        <input type="checkbox" name="checkbox" id="checkbox" />
                                    </td>
                                    <td width="62%" style="font-size: 12px;">
                                        全选
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="48" height="24" class="UpRight">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="35%" height="23" align="center" valign="middle">
                                        <img src="../../Content/picture/BackControl/add.png" width="11" height="11" />
                                    </td>
                                    <td width="65%" style="font-size: 12px;">
                                        <%:Html.ActionLink("添加","AddHost","Home")%>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="48" height="24" class="UpRight">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="42%" align="center" valign="middle">
                                        <img src="../../Content/picture/BackControl/edit.png" width="14" height="14" />
                                    </td>
                                    <td width="58%" height="23" style="font-size: 12px;">
                                        编辑
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="48" height="24" class="UpRight">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                </
                                <tr>
                                    <td width="29%" align="center" valign="middle">
                                        <img src="../../Content/picture/BackControl/delete.png" width="11" height="12" />
                                    </td>
                                    <td width="71%" height="23" style="font-size: 12px;" style="font-size: 12px;">
                                        删除
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="48" height="24" class="UpRight">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="44%" height="23" align="center" valign="middle">
                                        <img src="../../Content/picture/BackControl/save.png" width="12" height="12" />
                                    </td>
                                    <td width="56%" height="23" style="font-size: 12px;">
                                        保存
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="48" height="24" class="UpRight">
                            &nbsp;
                        </td>
                        <td width="45" height="24">
                            &nbsp;
                        </td>
                    </tr>
                </table>
        </tr>
        <tr>
            <td align="left" valign="middle">
                <div class="container-fluid">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="span6">
                                    <div class="page-header">
                                        <h1>
                                            车主列表</h1>
                                        <h1>
                                            &nbsp;</h1>
                                    </div>
                                </div>
                                <div class="span6">
                                    <p>
                                        &nbsp;</p>
                                    <p>
                                        &nbsp;</p>
                                    <% using (Html.BeginForm("HostSearchResult", "Home", new { page = "" }, FormMethod.Get))
                                       {%>
                                    <%= Html.TextBox("query") %>
                                    <button type="submit" class="btn">
                                        搜索</button>
                                    <% }%>
                                </div>
                            </div>
                            <table class="table table-hover table-bordered">
                                <thead>
                                    <tr>
                                        <th>
                                            序号
                                        </th>
                                        <th>
                                            姓名
                                        </th>
                                        <th>
                                            年龄
                                        </th>
                                        <th>
                                            性别
                                        </th>
                                        <th>
                                            电话
                                        </th>
                                        <th>
                                            拥有车辆数
                                        </th>
                                        <th>
                                            信息
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% foreach (var item in Model)
                                       { %>
                                    <tr>
                                        <td>
                                            <%: item.employee_id %>
                                        </td>
                                        <td>
                                            <%: item.name %>
                                        </td>
                                        <td>
                                            <%: item.age %>
                                        </td>
                                        <td>
                                            <%: item.gender==true?"男":"女" %>
                                        </td>
                                        <td>
                                            <%: item.telephone %>
                                        </td>
                                        <td>
                                            <%: item.car_count %>
                                        </td>
                                        <td style="color: #900" class="pointer">
                                            <%: Html.ActionLink("详细信息", "HostInfo", new { id = item.employee_id })%>
                                        </td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                            <div class="pagination pagination-centered">
                                <ul>
                                    <% int curPage = (int)ViewData["pageCount"];
                                       int total = (int)ViewData["maxPage"]; %>
                                    <li>
                                        <%: Html.ActionLink("Prev", "HostSearchResult", new { id = Math.Max(curPage - 1, 0), query = Request["query"]})%>
                                    </li>
                                    <%
                            
                                        for (int i = Math.Max(0, curPage - 2); i < Math.Min(curPage + 3, total); i++)
                                        {
                                    %>
                                    <li>
                                        <%: Html.ActionLink(i + 1 + "", "HostSearchResult", new { id = i, query = Request["query"] })%>
                                    </li>
                                    <% } %>
                                    <li>
                                        <%: Html.ActionLink("Next", "HostSearchResult", new { id = Math.Min(curPage + 1, total - 1), query = Request["query"] })%>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
