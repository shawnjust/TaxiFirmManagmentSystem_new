<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    选择司机
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
  <link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />

    <script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
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
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/driver.css" rel="stylesheet" type="text/css" />

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
        <td height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight"><input type="text" name="textfield2" id="textfield2" /></td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" align="center" valign="middle"><input type="submit" name="button6" id="button6" value="搜索" /></td>
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


<ul id="grid" class="group">
            <li>
                <div class="details">
                	<h3>张晓雅</h3>
                    <a class="more" href="/Home/DriverInfo">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/01.jpg" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>李大仁</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/02.jpg" /></a>
            </li>
            <li >
                <div class="details">
                	<h3>戴佳佳</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/03.jpg" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>王振东</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/04.jpg" /></a>
            </li>
            <li class="end">
                <div class="details">
                	<h3>陈俊</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/05.jpg" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>克莱尔</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/06.jpg" /></a>
            </li>  
            <li>
                <div class="details">
                	<h3>迈克尔</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/07.jpg" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>海瑟薇</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/08.png" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>米勒</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/09.jpg" /></a>
            </li>
            <li class="end">
                <div class="details">
                	<h3>罗伯特</h3>
                    <a class="more" href="">租出</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/10.jpg" /></a>
            </li>
</ul>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="32" align="left" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr class="centerButtom">
        <td width="27%">共有1111条信息，当前第1页，共100页</td>
        <td width="36%">&nbsp;</td>
        <td width="4%"><input type="submit" name="button" id="button" value="首页" /></td>
        <td width="5%"><input type="submit" name="button2" id="button2" value="上一页" /></td>
        <td width="5%"><input type="submit" name="button3" id="button3" value="下一页" /></td>
        <td width="5%"><input type="submit" name="button4" id="button4" value="尾页" /></td>
        <td width="4%">转到</td>
        <td width="3%"><input name="textfield" type="text" id="textfield" size="3" /></td>
        <td width="2%">页</td>
        <td width="9%"><input type="submit" name="button5" id="button5" value="跳转" /></td>
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
