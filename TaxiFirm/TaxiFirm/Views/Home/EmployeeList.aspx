<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Employee"  %>
<%@ Import Namespace="TaxiFirm.Models" %>
<%@ Import Namespace="TaxiFirm.Models.Driver" %>
<%@ Import Namespace="TaxiFirm.Models.Manager" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">工号管理</asp:Content>

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
            form1.action = "/Home/EmployeeList?type=search&NameID=" + name + "&page=1";
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
                        form1.action = "/Home/EmployeeList?type=common&page=" + (CurrentPage - 1);
                    } else if ("search" == type) {

                        var name = document.getElementById("name_id").value;
                        form1.action = "/Home/EmployeeList?type=search&NameID=" + name + "&page=" + (CurrentPage - 1);
                    }
                    form1.submit();

                }




            } else if (type == "Next") {
                if (CurrentPage >= WholePage) {
                    window.alert("已到最后页");

                } else {
                    var type = document.getElementById("type").value;


                    if ("common" == type) {
                        form1.action = "/Home/EmployeeList?type=common&page=" + (CurrentPage + 1);
                    } else if ("search" == type) {

                        var name = document.getElementById("name_id").value;
                        form1.action = "/Home/EmployeeList?type=search&NameID=" + name + "&page=" + (CurrentPage + 1);
                    }
                    form1.submit();
                }

            }



        }



        );


    });
</script>

<%  List<Employee> employees = (List<Employee>)ViewData["employees"];
    MyPage page = (MyPage)ViewData["page"];
    string type = (string)ViewData["type"];
    string myType =(string)Session["subtype"];
    DriverHandle driverHandler = (DriverHandle)ViewData["EM_DriverHandler"];
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td width="82" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;background-image:url(../../Content/picture/BackControl/CenterUp2Select.png);">管理者</td>
        <td width="4" height="24">&nbsp;</td>
        <td width="402" height="24">&nbsp;</td>
        <td width="10" height="24" class="UpRight2"><table width="43%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="38%" height="24">&nbsp;</td>
            <td width="62%" style="font-size:12px;">&nbsp;</td>
          </tr>
        </table></td>
        <td width="38" height="24" class="UpRight">&nbsp;</td>
        <td width="104" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21%" align="center" valign="middle"><input type="image" name="imageField" id="imageField" src="../../Content/picture/BackControl/add.png" /></td>
            <td width="79%" height="23" style="font-size:12px;"><a href="/Home/AddEmployee">注册新工号</a></td>
            </tr>
        </table></td>
        <td width="59" height="24">&nbsp;</td>
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
                          <h1>工号列表</h1>
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
                          <th>姓名</th>
                          <th>
                                年龄</th>
                          <th>
                                性别</th>
                          <th>电话</th>
                          <%if (myType.Equals("AddDriver"))
                            {
                               %>
                               <th>司机</th>
                               <%
                            }
                                 %>
                          <th>工号</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <%
                            if (employees != null && employees.Count != 0)
                            { %>
                    <tbody>
                    <%int num = (page.CurrentPage - 1) * page.CountPerPage + 1;

                      for (int i = 0; i < employees.Count; i++)
                      {
                          Employee employee = employees[i];%>
                       
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
                            <td><%:employee.Name%></td>
                            <td>
                                <%:employee.Age%></td>
                            <td><%:employee.Gender%></td>
                            <td><%:employee.Telephone%></td>
                           <%if (myType.Equals("AddDriver"))
                            {
                                 if (driverHandler==null)
                                 {
                                     driverHandler = new DriverHandle();
                                 }
                                if (driverHandler.isDriver(employee.EmployeeId))
                                {
                                   %>
                                      <td>
                                          是
                                      </td>
                                   <%                                    
                                 }
                                else
                                {
                                 
                               %>
                               <td>否</td>
                               <%
                                 }
                            }
                                 %>
                            <td><%:employee.EmployeeId%></td>
                            <td  style="color:#900" class="pointer">
                            
                            <a href="/Home/EmployeeInfo?id=<%:employee.EmployeeId%>&subtype=<%:myType %>">信息管理</a></td>
                            <%if ("AddDriver".Equals(myType)) {
                                  if (new DriverHandle().IsDriver(employee.EmployeeId))  //是司机
                                  {%>
                                   <td  style="color:#900" class="pointer">
                            
                                   <a href="/Home/DeleteDriver?id=<%:employee.EmployeeId%>">删除司机</a></td>

                              <%    }
                                  else    //不是司机
                                  { %>

                                  <td  style="color:#900" class="pointer">
                            
                                   <a href="/Home/AddDriver?id=<%:employee.EmployeeId%>">添加司机</a></td>
                                  
                                  
                          <%        }
                              
                              
                              }
                                  
                              else if ("AddHost".Equals(myType)) {
                                  
                                    if (new DriverHandle().IsDriver(employee.EmployeeId))  //是司机
                                  {%>
                                   <td  style="color:#900" class="pointer">
                            
                                   <a href="/Home/DeleteDriver?id=<%:employee.EmployeeId%>">删除车主</a></td>

                              <%    }
                                  else    //不是司机
                                  { %>

                                  <td  style="color:#900" class="pointer">
                            
                                   <a href="/Home/AddHost?id=<%:employee.EmployeeId%>">添加车主</a></td>
                                  
                                  
                          <%        }
                                  
                                  
                              
                              }
                              else if ("AddManager".Equals(myType)) { 
                                 if (new ManagerHandle().IsManager(employee.EmployeeId))  //是经理
                                  {%>
                                   <td  style="color:#900" class="pointer">
                            
                                   <a href="/Home/GetManagerRightBack?id=<%:employee.EmployeeId%>">删除经理</a></td>

                              <%    }
                                  else    //不是司机
                                  { %>                                                                                                                                               

                                  <td  style="color:#900" class="pointer">
                            
                                   <a href="/Home/AddManager?id=<%:employee.EmployeeId%>">添加经理</a></td>
                                  
                                  
                          <%        }
                              }
                           %>
                        </tr>
                        <%}
                      
                       %>
                    
                    </tbody><%
                        }%>




                     
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
                      <li> <a href="/Home/EmployeeList?type=common&page=<%:current%>" style="background-color:Orange"><%:current%></a> </li>
                      <%}
                            else if ("search".Equals(type))
                            {%>
                            <li> <a href="/Home/EmployeeList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>" style="background-color:Orange"><%:current%></a> </li>
                            <%
                            }
}
                        else if (current >= 1 && current <= page.WholePage)
                        
                            if ("common".Equals(type))
                            {%>
                      <li> <a href="/Home/EmployeeList?type=common&page=<%:current%>"><%:current%></a> </li>
                      <%}
                            else if ("search".Equals(type))
                            {%>
                            <li> <a href="/Home/EmployeeList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>"><%:current%></a> </li>
                            <%
                            }
                        else if (current < 1)
                        {
                            while (current < 1)
                            { current++; }

                            if (current == page.CurrentPage)
                            {  if ("common".Equals(type))
                            {%>
                      <li> <a href="/Home/EmployeeList?type=common&page=<%:current%>" style="background-color:Orange"><%:current%></a> </li>
                      <%}
                            else if ("search".Equals(type))
                            {%>
                            <li> <a href="/Home/EmployeeList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>" style="background-color:Orange"><%:current%></a> </li>
                            <%
                            }
}
                            else
                            {  if ("common".Equals(type))
                            {%>
                      <li> <a href="/Home/EmployeeList?type=common&page=<%:current%>" ><%:current%></a> </li>
                      <%}
                            else if ("search".Equals(type))
                            {%>
                            <li> <a href="/Home/EmployeeList?type=search&page=<%:current%>&NameID=<%:ViewData["NameID"] %>"><%:current%></a> </li>
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

