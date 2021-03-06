﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Invoice" %>
<%@ Import Namespace="TaxiFirm.Models" %>
<%@ Import Namespace="TaxiFirm.Models.Customer" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    发票信息
</asp:Content>

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
            form1.action = "/Home/InvoiceList?type=search&NameID=" + name;
            form1.submit();



        });
        $(".ChangePage").click(
        function () {

            var CustomerId = document.getElementById("Cid");
            var id = CustomerId.value;
            var type = this.id;
            var form1 = document.getElementById("changepage");
            var content = form1.title;

            var CurrentPage = parseInt(content.substring(0, content.indexOf(' ')));
            var WholePage = parseInt(content.substring(content.indexOf(' ') + 1, content.length));


            if (type == "Prev") {
                if (CurrentPage <= 1) {
                    window.alert("已到最前页");
                } else {

                    form1.action = "/Home/InvoiceList?page=" + (CurrentPage - 1) + "&id=" + id;
                    form1.submit();

                }




            } else if (type == "Next") {
                if (CurrentPage >= WholePage) {
                    window.alert("已到最后页");

                } else {
                    form1.action = "/Home/InvoiceList?page=" + (CurrentPage + 1) + "&id=" + id; ;
                    form1.submit();

                }

            }



        }



        );


    });
</script>
<% 
    List<Invoice> invoices = (List<Invoice>) ViewData["invoices"];
    MyPage page = (MyPage) ViewData["page"];
     string type = (string)ViewData["type"];
     Customer customer = null;
     if ("common".Equals(type))
     {
         customer = (Customer)ViewData["customer"];
     }
     %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;">发票信息</td>
        <a>        </a>
        
        <td height="24">&nbsp;</td>
        <td width="379" height="24">&nbsp;</td>
        <td width="48" height="24" class="UpRight2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="38%" height="24"><input type="checkbox" name="checkbox" id="checkbox" /></td>
            <td width="62%" style="font-size:12px;">全选</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
           <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="42%" align="center" valign="middle"><img src="../../Content/picture/BackControl/edit.png" width="14" height="14" /></td>
            <td width="58%" height="23" style="font-size:12px;">删除</td>
          </tr>
        </table></td>
        </tr>
        </table></td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="45" height="24">&nbsp;</td>
  </tr>
  <tr>
    <td height="24" colspan="4" class="CenterUp"><div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div class="row-fluid">
            <div class="span6">
              <div class="page-header">
                <h1>发票列表</h1>
                <%if ("common".Equals(type))
                  { %>
                <h1><small style="font-size:15px">用户： <%:customer.NickName%>&nbsp;&nbsp; 发票张数：<%:invoices.Count%>&nbsp;&nbsp; 积分<%:customer.Credit%> </small> </h1><%} %>
              </div>
            </div>
            <div class="span6">
              <p>&nbsp;</p>
              <p>&nbsp;</p>
               <form id="search_form" method="post"> 
                            <input type="text" title= "输入发票号" class="input-medium search-query" id="NameID" name="NameID" /> <button type="button" class="btn">搜索</button>
                      </form>
            </div>
          </div>
          <table class="table table-hover table-bordered">
            <thead>
              <tr>
                <th width="34" align="center">选中</th>
                <th width="34">序号</th>
                <th width="87">发票号</th>
                <th width="68"> 金额</th>
                <th width="80">登记用户</th>
                <th width="49">登记时间</th>
                </tr>
            </thead>
           
            <tbody>
            
                <%int num=(page.CurrentPage-1)*page.CountPerPage+1;
                        for(int i=0;i<invoices.Count;i++) 
                        {
                            Invoice invoice = invoices[i];%>
                       
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
                           <td><%:invoice.InvoiceId %></td>
                           <td><%:invoice.Amount %></td>
                           <td><%:invoice.CustomerId %></td>
                           <td><%:invoice.RegisterTime %></td>
                                     </tr>
                        <%} %>

            </tbody>
          </table>
           <form id="changepage" title="<%:(page.CurrentPage)+" "+page.WholePage%>" class="<%:page.WholePage%>" method="post">
           </form>
           <%if ("common".Equals(type))
             {%>
           <input type="hidden" value="<%:customer.CustomerId%>" id="Cid" />
           <%} %>
           <%if ("common".Equals(type))
             { %>
            <div class="pagination pagination-centered">
              <ul>
                <li> <a class="ChangePage" id="Prev">Prev</a> </li>
                <%  int current = page.CurrentPage - 3;
                    for (int i = 0; i < page.PageWidth; i++)
                    {
                        current++;
                        if (current == page.CurrentPage)
                        { %>
                      <li> <a href="/Home/InvoiceList?page=<%:current%>&id=<%:customer.CustomerId %>" style="background-color:Orange"><%:current%></a> </li>
                      <%
               }
                        else if (current >= 1 && current <= page.WholePage)
                        {%>
                  
                <li> <a href="/Home/InvoiceList?page=<%:current%>&id=<%:customer.CustomerId %>"><%:current%></a> </li>
                <%}
                        else if (current < 1)
                        {
                            while (current < 1)
                            { current++; }

                            if (current == page.CurrentPage)
                            { %>
                      <li> <a href="/Home/InvoiceList?page=<%:current%>&id=<%:customer.CustomerId %>" style="background-color:Orange"><%:current%></a> </li>
                      <%
               }
                            else
                            {%> 
                           <li> <a href="/Home/InvoiceList?page=<%:current%>&id=<%:customer.CustomerId %>"><%:current%></a> </li>
                          <%
               }
                        }
                    }%>
            
                <li> <a class="ChangePage" id="Next">Next</a> </li>
            </ul>
          </div>
          <%}else{ %>
           <div class="pagination pagination-centered">
              <ul>
                <li> <a class="ChangePage" id="A1">Prev</a> </li>
                 <li> <a href="#" style="background-color:Orange">1</a> </li>
                  <li> <a class="ChangePage" id="A2">Next</a> </li>
                </ul>
                </div>

                <%} %>
        </div>
      </div>
    </div></td>
  </tr>
</table>
</asp:Content>
