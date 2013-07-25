<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    车辆管理
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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




<p><h2 style="font-size:60" align="center">司机个人基本信息</h2></p>

<table  frame="box" cellpadding="0" cellspacing="5" width="500px" align="center">
    <tr>
        <td>
            <table border="0" cellspacing="5" cellpadding="5" align="center">
                <tr>
                    <td>姓名：</td>
					<td>王二小</td>
				</tr>
				<tr>
					<td>性别：</td>
					<td>男</td>
				</tr>
                <tr>
                     <td>年龄：</td>
                     <td>30岁</td>
                </tr>
                <tr>
					 <td>出生日期：</td>
					 <td>1983-3-20</td>
				</tr>
                <tr>
                     <td>健康状况：</td>
                     <td>良好</td>
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
                    <td>11111111111</td>
                </tr>
                <tr>
                    <td>驾驶证编号：</td>
                    <td>63918291212717281912</td>
                </tr>
                <tr>
                    <td>驾驶车辆车牌号：</td>
                    <td>沪A D7801</td>
                </tr>
				<tr>
					<td>联系电话：</td>
					<td>11234567891</td>
				</tr>
				<tr>
					<td>家庭住址：</td>
					<td>地球村888号</td>
				</tr>
            </table>
        </td>
    </tr>
</table>


		

</asp:Content>



