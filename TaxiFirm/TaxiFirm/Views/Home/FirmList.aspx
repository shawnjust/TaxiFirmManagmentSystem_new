﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Firm" %>
<%@ Import Namespace="TaxiFirm.Models" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">组织管理</asp:Content><asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
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
        $(".ChangePage").click(
        function () {

            var type = this.id;
            var form1 = document.getElementById("changepage");
            var content = form1.title;
           
            var CurrentPage = parseInt(content.substring(0,content.indexOf(' ')));
            var WholePage = parseInt(content.substring(content.indexOf(' ')+1,content.length));
        
           
            if (type == "Prev") {
                if (CurrentPage <= 1) {
                    window.alert("已到最前页");
                } else {

                    form1.action = "/Home/FirmList?page=" + (CurrentPage - 1);
                    form1.submit();

                }




            } else if (type == "Next") {
                if (CurrentPage >= WholePage) {
                    window.alert("已到最后页");

                } else {
                    form1.action = "/Home/FirmList?page=" + (CurrentPage + 1);
                    form1.submit();

                }

            }



        }



        );



    });
</script>
    <% List<Firm> firms = (List<Firm>)ViewData["firms"]; 
       MyPage page =(MyPage) ViewData["CurrentPage"];%>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;background-image:url(../../Content/picture/BackControl/CenterUp2Select.png);">子公司</td>
          <td height="24">&nbsp;</td>
          <td width="379" height="24">&nbsp;</td>
          <td width="48" height="24" class="UpRight2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="38%" height="24"><input type="checkbox" name="checkbox" id="checkbox" /></td>
            </tr>
          </table></td>
          <td width="48" height="24" class="UpRight">&nbsp;</td>
          <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="42%" align="center" valign="middle">&nbsp;</td>
            </tr>
          </table></td>
          <td width="48" height="24" class="UpRight">&nbsp;</td>
          <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="44%" height="23" align="center" valign="middle">&nbsp;</td>
            </tr>
          </table></td>
          <td width="48" height="24" class="UpRight">&nbsp;</td>
          <td width="45" height="24">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td align="left" valign="middle"><div class="container-fluid">
        <div class="row-fluid">
          <div class="span12">
            <div class="row-fluid">
              <div class="span6">
                <div class="page-header">
                  <h1>子公司列表</h1>
                  <h1>&nbsp;</h1>
                </div>
              </div>
              <div class="span6">
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <form class="form-search" >
                  <input type="text" title= "输入客户名或id" class="input-medium search-query" />
                  <button type="submit" class="btn">搜索</button>
                </form>
              </div>
            </div>
            <table class="table table-hover table-bordered">
              <thead>
                <tr>
                  <th width="34" align="center">选中</th>
                  <th width="24">序号</th>
                  <th width="47">编号</th>
                     <th width="120">公司名称</th>
                    <th width="114">公司地址</th>
                    <th width="83">公司电话</th>
                  <th width="33"> 车辆数</th>
                  <th width="25">车主数</th>                 
                  <th width="36">司机数</th>
                </tr>
              </thead>
              <tbody>
           
                <%int num=(page.CurrentPage-1)*page.CountPerPage+1;
                        for(int i=0;i<firms.Count;i++) 
                        {
                            Firm firm = firms[i];%>
                       
                        <%if(i==0||i==5) {%>  <tr>
                        <%}else if(i==1||i==6){%> <tr class="success">
                        <%}else if(i==2||i==7){ %><tr class="error">
                       <% }else if(i==3||i==8){ %><tr class="warning">
                        <%}else if(i==4||i==9){ %><tr class="info">
                       <%} %>
                       <td align="center"> <input name="" type="checkbox" value="" />&nbsp;</td>
                            <td>
                                <%:num++ %>
                            </td>
                            <td><%:firm.FirmID %></td>
                            <td><%:firm.FirmName %></td>
                            <td><%:firm.FirmAddress %></td>
                            <td><%:firm.PhoneNumber %></td>
                            <td><%:firm.TaxiCount %></td>
                            <td><%:firm.HostCount %></td>
                            <td><%:firm.DriverCount %></td>
                                     </tr>
                        <%} %>

            <!--
                <tr class="success">
                  <td align="center"><input name="input" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr class="error">
                  <td align="center"><input name="input2" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr class="warning">
                  <td align="center"><input name="input3" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr class="info">
                  <td align="center"><input name="input4" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td align="center"><input name="input5" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr class="success">
                  <td align="center"><input name="input6" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr class="error">
                  <td align="center"><input name="input7" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr class="warning">
                  <td align="center"><input name="input8" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr class="info">
                  <td align="center"><input name="input9" type="checkbox" value="" /></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>-->
              </tbody>
            </table>
            <form id="changepage" title="<%:(page.CurrentPage)+" "+page.WholePage%>" class="<%:page.WholePage%>" method="post"></form>


            <div class="pagination pagination-centered">
              <ul>
                <li> <a class="ChangePage" id="Prev">Prev</a> </li>
                <%  int current = page.CurrentPage - 3;
                    for (int i = 0; i < page.PageWidth; i++)
                    {
                        current++;
                        if (current == page.CurrentPage)
                        { %>
                      <li> <a href="/Home/FirmList?page=<%:current%>" style="background-color:Orange"><%:current%></a> </li>
                      <%
}
                        else if (current >= 1 && current <= page.WholePage)
                        {%>
                  
                <li> <a href="/Home/FirmList?page=<%:current%>"><%:current%></a> </li>
                <%}
                        else if (current < 1)
                        {
                            while (current < 1)
                            { current++; }

                            if (current == page.CurrentPage)
                            { %>
                      <li> <a href="/Home/FirmList?page=<%:current%>" style="background-color:Orange"><%:current%></a> </li>
                      <%
}
                            else
                            {%> 
                           <li> <a href="/Home/FirmList?page=<%:current%>"><%:current%></a> </li>
                          <%
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
