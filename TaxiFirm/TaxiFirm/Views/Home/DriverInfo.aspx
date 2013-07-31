<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Driver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    车辆管理
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
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
        $(".UpSelect1").click(function () {
            for (var i = 0; i < $(".UpSelect1").length; i++) {
                var temp = $(".UpSelect1").get(i);

                //window.alert($(this).css("background-image"));

                temp.style.backgroundImage = 'none';
                temp.style.color = "black";
            }

            $(this).css("background-image", 'url("../../Content/picture/BackControl/CenterUp2Select.png")');
            $(this).css("color", 'blue');
            // $(this).css("color",'red');
            //  this.style.backgroudColor="red";

        });

    });
</script>
<% 
    Driver driver = (Driver)ViewData["driver"];
     %>

<br/>
<br />

<p style="margin-left: 440px"><h2 style="font-size:60" align="center">司机个人基本信息</h2></p>

<table  frame="box" cellpadding="5" cellspacing="5" width="500px" align="center">
    <tr>
        <td>
            <table border="0" cellspacing="5" cellpadding="5" align="center">
                <tr>
                    <td>姓名：</td>
					<td><%:driver.name %></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td><%:driver.getGenderToString() %></td>
				</tr>
                <tr>
                     <td>年龄：</td>
                     <td><%:driver.getAge() %>岁</td>
                </tr>
                <tr>
					 <td>出生日期：</td>
					 <td><%:driver.birthday %></td>
				</tr>
                <tr>
                     <td>健康状况：</td>
                     <td><%:driver.getConditionToString() %></td>
                </tr>
            </table>
        </td>
        <td>
            <table border="0" cellspacing="0" cellpadding="5" width="100%">
            	<tr>
            		<td rowspan="5"><img  src="../../Content/picture/driver.jpg" alt="photo" width="170px" height="170px" /> </td>
            	</tr>
            </table>
        </td>
    </tr>

    <tr>
        <td colspan="2">
            <table border="0" cellspacing="12" cellpadding="5" align="center">
                <tr>
                    <td>员工编号：</td>
                    <td><%:driver.Employee_id %></td>
                </tr>
                <tr>
                    <td>驾驶证编号：</td>
                    <td><%if (driver.License_id == null)
                          {%>
                          驾照被吊销
                          <% }
                          else
                          {  %>
                          <%:driver.License_id %>
                          <%} %></td>
                </tr>
                <tr>
                    <td>驾驶车辆车牌号：</td>
                    <td><%if (driver.plateNumber == null)
                          { %>
                          未绑定车牌
                          <% }
                          else
                          {%>
                          <%:driver.plateNumber %>
                          <%} %>
                          
                    </td>
                </tr>
				<tr>
					<td>联系电话：</td>
					<td><%:driver.telephone %></td>
				</tr>
				<tr>
					<td>家庭住址：</td>
					<td><%:driver.emoloyee_address %></td>
				</tr>
            </table>
        </td>
    </tr>
    <tr>
    <td>
 
    </td>
    </tr>
</table>
    <div align="center" class="container-fluid">
    <br />
    <br />
     <button class="btn btn-primary" type="button" style="alignment-adjust:middle" name="Driver_Modify" onclick="/Home/Driver">修改</button>
     <button class="btn btn-primary" type="button" style="alignment-adjust:middle" name="Driver_Delete" onclick="deleteDriver()">删除</button>
    </div>

		       

</asp:Content>



