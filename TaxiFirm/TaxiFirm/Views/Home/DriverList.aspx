<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Employee"  %>
<%@ Import Namespace="TaxiFirm.Models" %>
<%@ Import Namespace="TaxiFirm.Models.Driver" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    司机列表
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
        <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/driver.css" rel="stylesheet" type="text/css" />
<%  List<Driver> drivers = (List<Driver>)ViewData["drivers"];
    MyPage page = (MyPage)ViewData["page"];
    string type = (string)ViewData["type"];
    string myType =(string)Session["subtype"];
%>
<table width="1100"  align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;font-size:12px; background-image:url(../../Content/picture/BackControl/CenterUp2Select.png)">司机列表</td>
        <td height="24">&nbsp;</td>
        <td width="379" height="24">&nbsp;</td>
        <td width="48" height="24" class="UpRight2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="38%" height="23">&nbsp;</td>
            <td width="62%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="35%" height="23" align="center" valign="middle"><img src="../../Content/picture/BackControl/add.png" width="11" height="11" /></td>
            <td width="65%" style="font-size:13px;"><a href="/Home/EmployeeList?type=common&subtype=AddDriver&page=1">增删</a></td>
          </tr>
        </table></td>
        <td width="45" height="24">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center" valign="middle">
 <link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/driver.css" rel="stylesheet" type="text/css">
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
        $(".btn").click(
        function () {
            var NameInput = document.getElementById("NameID");
            var name = NameInput.value;
            var form1 = document.getElementById("search_form");
            form1.action = "/Home/DriverList?type=search&NameID=" + name + "&page=1";
            form1.submit();



        }

        );
        $(".ChangePage").click(
        function () {

            var type = this.id;
            var form1 = document.getElementById("changepage");
            var content = form1.title;

            var CurrentPage = parseInt(content.substring(0, content.indexOf(' ')));
            var WholePage = parseInt(content.substring(content.indexOf(' ') + 1, content.length));


            if (type == "Prev") {
                if (CurrentPage <= 1) {
                    window.alert("已到最前页");
                } else {

                    var type = document.getElementById("type").value;


                    if ("common" == type) {
                        form1.action = "/Home/DriverList?type=common&page=" + (CurrentPage - 1);
                    } else if ("search" == type) {

                        var name = document.getElementById("name_id").value;
                        form1.action = "/Home/DriverList?type=search&NameID=" + name + "&page=" + (CurrentPage - 1);
                    }
                    form1.submit();

                }




            } else if (type == "Next") {
                if (CurrentPage >= WholePage) {
                    window.alert("已到最后页");

                } else {
                    var type = document.getElementById("type").value;


                    if ("common" == type) {
                        form1.action = "/Home/DriverList?type=common&page=" + (CurrentPage + 1);
                    } else if ("search" == type) {

                        var name = document.getElementById("name_id").value;
                        form1.action = "/Home/DriverList?type=search&NameID=" + name + "&page=" + (CurrentPage + 1);
                    }
                    form1.submit();
                }

            }



        }



        );


    });
</script>

            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <form id="search_form" method="post"> 
            <input type="text" title= "输入客户名或id" class="input-medium search-query" id="NameID" name="NameID" /> <button type="button" class="btn">搜索</button>
        </form>
        <input type="hidden" id="type" value=<%:type%> />

<br />
<%  if (drivers != null && drivers.Count != 0)
    {  %>
<ul id="grid" class="group">
 <%int num = (page.CurrentPage - 1) * page.CountPerPage + 1;

   for (int i = 0; i < drivers.Count; i++)
   {
       Driver driver = drivers[i];%>
                       
            <li>
                <div class="details">
                	<h3><%:driver.name %></h3>
                    <a class="more" href="/Home/DriverInfo?EMID=<%:driver.Employee_id %>">更多信息</a> 
                </div>
                
               <a class="more" href="#info1"><img alt=" " src='<%=driver.license.photo_path %>' /></a>
            </li>
 <%} %>
           
</ul>
<%} %>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="32" align="left" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr class="centerButtom">
        
          <form id="changepage" title="<%:(page.CurrentPage)+" "+page.WholePage%>" class="<%:page.WholePage%>"
          method="post">
          </form>
          <%if ("search".Equals(type)) { 
                 
          %>
          <input type="hidden" id="name_id" value="<%:ViewData["NameID"] %>" />
          <%
                 
                 }%>
          <div class="pagination pagination-centered">
              <ul>
                  <li><a class="ChangePage" id="Prev">Prev</a> </li>
                  <%  int current = page.CurrentPage - 3;
                    for (int i = 0; i < page.PageWidth; i++)
                    {
                        current++;
                        if (current == page.CurrentPage)
                        {
                            if ("common".Equals(type))
                            {%>
                  <li><a href="/Home/DriverList?type=common&page=<%:current%>" style="background-color: Orange">
                      <%:current%></a> </li>
                  <%}
                            else if ("search".Equals(type))
                            {%>
                  <li><a href="/Home/DriverList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>"
                      style="background-color: Orange">
                      <%:current%></a> </li>
                  <%
                            }
}
                        else if (current >= 1 && current <= page.WholePage)
                        
                            if ("common".Equals(type))
                            {%>
                  <li><a href="/Home/DriverList?type=common&page=<%:current%>">
                      <%:current%></a> </li>
                  <%}
                            else if ("search".Equals(type))
                            {%>
                  <li><a href="/Home/DriverList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>">
                      <%:current%></a> </li>
                  <%
                            }
                        else if (current < 1)
                        {
                            while (current < 1)
                            { current++; }

                            if (current == page.CurrentPage)
                            {  if ("common".Equals(type))
                            {%>
                  <li><a href="/Home/DriverList?type=common&page=<%:current%>" style="background-color: Orange">
                      <%:current%></a> </li>
                  <%}
                            else if ("search".Equals(type))
                            {%>
                  <li><a href="/Home/DriverList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>"
                      style="background-color: Orange">
                      <%:current%></a> </li>
                  <%
                            }
}
                            else
                            {  if ("common".Equals(type))
                            {%>
                  <li><a href="/Home/DriverList?type=common&page=<%:current%>">
                      <%:current%></a> </li>
                  <%}
                            else if ("search".Equals(type))
                            {%>
                  <li><a href="/Home/DriverList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>">
                      <%:current%></a> </li>
                  <%
                            }
}
                        }
                    }%>
                  <li><a class="ChangePage" id="Next">Next</a> </li>
              </ul>
          </div>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
  </tr>
</table></td>
  </tr>
</table>
</asp:Content>

