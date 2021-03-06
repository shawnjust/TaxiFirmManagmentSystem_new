﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Taxi"  %>
<%@ Import Namespace="TaxiFirm.Models" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">车辆管理</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
  <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
<link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/jquery.js"></script>
<style>
a:hover
{
   cursor:pointer;
    }

</style>
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
            form1.action = "/Home/TaxiList?type=search&NameID=" + name + "&page=1";
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
                        form1.action = "/Home/TaxiList?type=common&page=" + (CurrentPage - 1);
                    } else if ("search" == type) {

                        var name = document.getElementById("name_id").value;
                        form1.action = "/Home/TaxiList?type=search&NameID=" + name + "&page=" + (CurrentPage - 1);
                    }
                    form1.submit();

                }




            } else if (type == "Next") {
                if (CurrentPage >= WholePage) {
                    window.alert("已到最后页");

                } else {
                    var type = document.getElementById("type").value;


                    if ("common" == type) {
                        form1.action = "/Home/TaxiList?type=common&page=" + (CurrentPage + 1);
                    } else if ("search" == type) {

                        var name = document.getElementById("name_id").value;
                        form1.action = "/Home/TaxiList?type=search&NameID=" + name + "&page=" + (CurrentPage + 1);
                    }
                    form1.submit();
                }

            }



        }



        );


    });
</script>

<% List<Taxi> taxis = (List<Taxi>)ViewData["taxis"];
    MyPage page = (MyPage)ViewData["page"];
    string type = (string)ViewData["type"];
    %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;background-image:url(../../Content/picture/BackControl/CenterUp2Select.png);"></td>
        <td height="24">&nbsp;</td>
        <td width="379" height="24">&nbsp;</td>
        <td width="48" height="24" class="UpRight2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="38%" height="24">&nbsp;</td>
            <td width="62%" style="font-size:12px;">&nbsp;</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="42%" align="center" valign="middle"><input type="image" name="imageField" id="imageField" src="../../Content/picture/BackControl/add.png" /></td>
            <td width="58%" height="23" style="font-size:12px;"><a href="/Home/AddCar">增加</a></td>
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
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="45" height="24">&nbsp;</td>
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
                          <h1>车辆列表</h1>
                            <h1>&nbsp;</h1>
                      </div>
              </div>
                    <div class="span6">
                         <p>&nbsp;</p>
                         <p>&nbsp;</p>
                         <form id="search_form" method="post"> 
                            <input type="text" title= "输入客户名或id" class="input-medium search-query" id="NameID" name="NameID" /> <button type="button" class="btn">搜索</button>
                      </form>
                       <input type="hidden" id="type" value=<%:type%> />
                </div>
                </div>
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                        
                          <th>序号</th>
                          <th>车牌</th>
                          <th>
                                品牌</th>
                          <th>
                                颜色</th>
                          <th>车主</th>
                         
                            <th>信息</th>
                        </tr>
                    </thead>
                    <% if (taxis != null && taxis.Count != 0)
                       { %>
                    <tbody>
                    <%int num = (page.CurrentPage - 1) * page.CountPerPage + 1;

                      for (int i = 0; i < taxis.Count; i++)
                      {
                          Taxi taxi = taxis[i];%>
                       
                        <%if (i == 0 || i == 5)
                          {%>  <tr>
                        <%}
                          else if (i == 1 || i == 6)
                          {%> <tr class="success">
                        <%}
                          else if (i == 2 || i == 7)
                          { %><tr class="error">
                        <%}
                          else if (i == 3 || i == 8)
                          { %><tr class="warning">
                        <%}
                          else if (i == 4 || i == 9)
                          { %><tr class="info">
                        <%}%>
                     
                            <td>
                                <%:num++%>
                            </td>
                            <td><%:taxi.PlateNumber%></td>
                            <td>
                                <%:taxi.TaxiBrand%></td>
                            <td><%:taxi.TaxiColor%></td>
                           <td> <%if (taxi.OwenerID == null)
                                  {%>
                            "无"
                            <%}
                                  else
                                  {%>
                            <%:(int)taxi.OwenerID%>
                            <%}%></td>
                            
                            <td  style="color:#900" class="pointer"><a href="/Home/CarInfoDisplay?id=<%:taxi.PlateNumber%>">信息管理</a></td>
                        </tr>
                        <%}
                      
                       %>
                    
                    </tbody><%} %>
                </table>
                
               <form id="changepage" title="<%:(page.CurrentPage)+" "+page.WholePage%>" class="<%:page.WholePage%>" method="post"></form>

              
               <%if ("search".Equals(type)) { 
                 
                 %>
                 
                 <input type="hidden" id="name_id" value="<%:ViewData["NameID"] %>" />
                 <%
                 
                 }%>
            <div class="pagination pagination-centered">
              <ul>
                <li> <a class="ChangePage" id="Prev">Prev</a> </li>
                <%  int current = page.CurrentPage - 3;
                    for (int i = 0; i < page.PageWidth; i++)
                    {
                        current++;
                        if (current == page.CurrentPage)
                        {
                            if ("common".Equals(type))
                            {%>
                      <li> <a href="/Home/TaxiList?type=common&page=<%:current%>" style="background-color:Orange"><%:current%></a> </li>
                      <%}
                            else if ("search".Equals(type))
                            {%>
                            <li> <a href="/Home/TaxiList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>" style="background-color:Orange"><%:current%></a> </li>
                            <%
                            }
}
                        else if (current >= 1 && current <= page.WholePage)
                        
                            if ("common".Equals(type))
                            {%>
                      <li> <a href="/Home/TaxiList?type=common&page=<%:current%>"><%:current%></a> </li>
                      <%}
                            else if ("search".Equals(type))
                            {%>
                            <li> <a href="/Home/TaxiList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>"><%:current%></a> </li>
                            <%
                            }
                        else if (current < 1)
                        {
                            while (current < 1)
                            { current++; }

                            if (current == page.CurrentPage)
                            {  if ("common".Equals(type))
                            {%>
                      <li> <a href="/Home/TaxiList?type=common&page=<%:current%>" style="background-color:Orange"><%:current%></a> </li>
                      <%}
                            else if ("search".Equals(type))
                            {%>
                            <li> <a href="/Home/TaxiList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>" style="background-color:Orange"><%:current%></a> </li>
                            <%
                            }
}
                            else
                            {  if ("common".Equals(type))
                            {%>
                      <li> <a href="/Home/TaxiList?type=common&page=<%:current%>" ><%:current%></a> </li>
                      <%}
                            else if ("search".Equals(type))
                            {%>
                            <li> <a href="/Home/TaxiList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>"><%:current%></a> </li>
                            <%
                            }
}
                        }
                    }%>
            
                <li> <a class="ChangePage" id="Next">Next</a> </li>
                        
                  </ul>
              </div>
            </div>
        </div>
    </div></td>
  </tr>
</table>
</asp:Content>
