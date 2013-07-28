<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" MasterPageFile="~/Views/Shared/Site.Master"%>
<%@ Import Namespace="TaxiFirm.Models.Customer" %>
<%@ Import Namespace="TaxiFirm.Models" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    顾客列表
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">

<style>
a:hover
{
   cursor:pointer;
    }

</style>
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

                    form1.action = "/Home/Customer?page=" + (CurrentPage - 1);
                    form1.submit();

                }




            } else if (type == "Next") {
                if (CurrentPage >= WholePage) {
                    window.alert("已到最后页");

                } else {
                    form1.action = "/Home/Customer?page=" + (CurrentPage + 1);
                    form1.submit();

                }

            }



        }



        );


    




    });
</script>
<%
    List<Customer> customers = (List<Customer>)ViewData["customers"];
    MyPage page = (MyPage) ViewData["page"];
    
     %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="background-image:url(../../Content/picture/BackControl/CenterUp2Select.png);color:#06F;">客户列表</td>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1"><%:Html.ActionLink("投诉建议","ComplainList") %></td>
        <td height="24">&nbsp;</td>
        <td width="379" height="24">&nbsp;</td>
        <td width="48" height="24" class="UpRight2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="38%" height="24"><input type="checkbox" name="checkbox" id="checkbox" /></td>
            <td width="62%" style="font-size:12px;">全选</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="35%" height="23" align="center" valign="middle"><img src="../../Content/picture/BackControl/add.png" width="11" height="11" /></td>
            <td width="65%" style="font-size:12px;">添加</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="42%" align="center" valign="middle"><img src="../../Content/picture/BackControl/edit.png" width="14" height="14" /></td>
            <td width="58%" height="23" style="font-size:12px;">编辑</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="29%" align="center" valign="middle"><img src="../../Content/picture/BackControl/delete.png" width="11" height="12" /></td>
            <td width="71%" height="23" style="font-size:12px;" style="font-size:12px;">删除</td>
          </tr>
        </table></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="44%" height="23" align="center" valign="middle"><img src="../../Content/picture/BackControl/save.png" width="12" height="12" /></td>
            <td width="56%" height="23" style="font-size:12px;">保存</td>
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
                          <h1>客户列表</h1>
                            <h1><small>顾客是上帝</small></h1>
                      </div>
              </div>
                    <div class="span6">
                         <p>&nbsp;</p>
                         <p>&nbsp;</p>
                         <form class="form-search"> 
                            <input type="text" title= "输入客户名或id" class="input-medium search-query" /> <button type="submit" class="btn">搜索</button>
                      </form>
                </div>
                </div>
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                          <th align="center">选中</th>
                          <th>序号</th>
                          <th>昵称</th>
                          <th>
                                用户编号</th>
                          <th>
                                积分</th>
                          <th>Email</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                         <%int num=(page.CurrentPage-1)*page.CountPerPage+1;
                        for(int i=0;i<customers.Count;i++) 
                        {
                            Customer customer = customers[i];%>
                       
                        <%if(i==0||i==5) {%>  <tr>
                        <%}else if(i==1||i==6){%> <tr class="success">
                        <%}else if(i==2||i==7){ %><tr class="error">
                        <%}else if(i==3||i==8){ %><tr class="warning">
                        <%}else if(i==4||i==9){ %><tr class="info">
                        <%}%>
                       <td align="center"> <input name="" type="checkbox" value="" />&nbsp;</td>
                            <td>
                                <%:num++ %>
                            </td>
                            <td><%:customer.NickName %></td>
                            <td>
                                <%:customer.CustomerId %></td>
                            <td><%:customer.Credit %></td>
                            <td><%:customer.Email %></td>
                            <td><a href="/Home/InvoiceList?id=<%:customer.CustomerId%>&page=1">查看记录</a></td>
                         
                        </tr>
                        <%} %>

                        <!--
                        <tr class="success">
                          <td align="center"><input name="input" type="checkbox" value="" /></td>
                            <td>2</td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Approved
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        <tr class="error">
                          <td align="center"><input name="input2" type="checkbox" value="" /></td>
                            <td>3</td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                02/04/2012
                            </td>
                            <td>
                                Declined
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        <tr class="warning">
                          <td align="center"><input name="input3" type="checkbox" value="" /></td>
                            <td>4</td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                03/04/2012
                            </td>
                            <td>
                                Pending
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        <tr class="info">
                          <td align="center"><input name="input4" type="checkbox" value="" /></td>
                            <td>5</td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                04/04/2012
                            </td>
                            <td>
                                Call in to confirm
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        <tr>
                          <td align="center"><input name="input5" type="checkbox" value="" /></td>
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Default
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        <tr class="success">
                          <td align="center"><input name="input6" type="checkbox" value="" /></td>
                            <td>2</td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Approved
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        <tr class="error">
                          <td align="center"><input name="input7" type="checkbox" value="" /></td>
                            <td>3</td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                02/04/2012
                            </td>
                            <td>
                                Declined
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        <tr class="warning">
                          <td align="center"><input name="input8" type="checkbox" value="" /></td>
                            <td>4</td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                03/04/2012
                            </td>
                            <td>
                                Pending
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        <tr class="info">
                          <td align="center"><input name="input9" type="checkbox" value="" /></td>
                            <td>5</td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                04/04/2012
                            </td>
                            <td>
                                Call in to confirm
                            </td>
                            <td>&nbsp;</td>
                            <td><span class="pointer" style="color:#900">查看记录</span></td>
                        </tr>
                        -->
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
                      <li> <a href="/Home/Customer?page=<%:current%>" style="background-color:Orange"><%:current%></a> </li>
                      <%
}
                        else if (current >= 1 && current <= page.WholePage)
                        {%>
                  
                <li> <a href="/Home/Customer?page=<%:current%>"><%:current%></a> </li>
                <%}
                        else if (current < 1)
                        {
                            while (current < 1)
                            { current++; }

                            if (current == page.CurrentPage)
                            { %>
                      <li> <a href="/Home/Customer?page=<%:current%>" style="background-color:Orange"><%:current%></a> </li>
                      <%
}
                            else
                            {%> 
                           <li> <a href="/Home/Customer?page=<%:current%>"><%:current%></a> </li>
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
