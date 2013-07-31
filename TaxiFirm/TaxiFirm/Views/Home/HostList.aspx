<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TaxiFirm.Models.HostListModal>>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车主列表
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
  <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
<link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
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
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;background-image:url(../../Content/picture/BackControl/CenterUp2Select.png);">车主</td>
        <td height="24">&nbsp;</td>
        <td width="379" height="24">&nbsp;</td>
        <td width="48" height="24" class="UpRight2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="38%" height="24"></td>
            <td width="62%" style="font-size:12px;"></td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="35%" height="23" align="center" valign="middle"><img src="../../Content/picture/BackControl/add.png" width="11" height="11" /></td>
            <td width="65%" style="font-size:12px;"> <a href="/Home/EmployeeList?type=common&subtype=AddHost&page=1">添加</a> </td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0"></
          <tr>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
          </tr>
        </table></td>
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
                          <h1>车主列表</h1>
                            <h1>&nbsp;</h1>
                      </div>
              </div>
                    <div class="span6">
                         <p>&nbsp;</p>
                         <p>&nbsp;</p>

                         <% using (Html.BeginForm("HostSearchResult", "Home", new { page = "" }, FormMethod.Get))
                            {%>
                                <%= Html.TextBox("query") %>
                                <button type="submit" class="btn">搜索</button>
                            <% }%>
                </div>
                </div>
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                          <%--<th align="center">选中</th>--%>
                          <th>序号</th>
                          <th>姓名</th>
                          <th>
                                年龄</th>
                          <th>
                                性别</th>
                          <th>电话</th>
                          <th>拥有车辆数</th>
                            <th>信息</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                    <% foreach (var item in Model)
                        { %>
                        <tr>
                            <%--<td align="center">
                                <input name="" type="checkbox" value="" />&nbsp;
                            </td>--%>

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
                            <td  style="color:#900" class="pointer">
                                <%: Html.ActionLink("详细信息", "HostInfo", new { id = item.employee_id })%>
                            </td>
                            <td  style="color:#900" class="pointer">
                                <%: Html.ActionLink("编辑", "EditHost", new { id = item.employee_id })%>
                                <%: Html.ActionLink("删除", "DeleteHost", new { id = item.employee_id }, new { onclick = "if (" + item.car_count.ToString() + "!=0) { alert('这个人还有出租车呢！'); return false;} else return true" })%>
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
                            <%: Html.ActionLink("Prev", "HostList", new { id = Math.Max(curPage-1, 0) })%>
                        </li>
                        <%
                            
                            for (int i = Math.Max(0, curPage - 2); i < Math.Min(curPage + 3, total); i++)
                            {
                        %>
                            <li>
                                <%: Html.ActionLink(i+1+"", "HostList", new { id = i })%>
                            </li>
                        <% } %>
                        <li>
                            <%: Html.ActionLink("Next", "HostList", new { id = Math.Min(curPage+1, total-1) })%>
                        </li>
                  </ul>
              </div>
            </div>
        </div>
    </div></td>
  </tr>
</table>
</asp:Content>
