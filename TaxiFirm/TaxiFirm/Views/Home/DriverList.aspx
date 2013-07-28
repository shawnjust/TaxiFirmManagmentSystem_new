<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    司机列表
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
        <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
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
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="35%" height="23" align="center" valign="middle"><img src="../../Content/picture/BackControl/add.png" width="11" height="11" /></td>
            <td width="65%" style="font-size:13px;"><%:Html.ActionLink("添加","AddDriver","Home") %></td>
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
                    <a class="more" href="/Home/DriverInfo">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/01.jpg" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>李大仁</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/02.jpg" /></a>
            </li>
            <li >
                <div class="details">
                	<h3>戴佳佳</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/03.jpg" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>王振东</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/04.jpg" /></a>
            </li>
            <li class="end">
                <div class="details">
                	<h3>陈俊</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/05.jpg" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>克莱尔</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/06.jpg" /></a>
            </li>  
            <li>
                <div class="details">
                	<h3>迈克尔</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/07.jpg" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>海瑟薇</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/08.png" /></a>
            </li>
            <li>
                <div class="details">
                	<h3>米勒</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/09.jpg" /></a>
            </li>
            <li class="end">
                <div class="details">
                	<h3>罗伯特</h3>
                    <a class="more" href="">更多信息</a> 
                </div>
               <a class="more" href="#info1"><img alt=" " src="../../Content/picture/drivers/10.jpg" /></a>
            </li>
</ul>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="32" align="left" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr class="centerButtom">
        
                <div class="pagination pagination-centered">
                    <ul>
                        <li>
                            <a href="#">Prev</a>
                        </li>
                        <li>
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">5</a>
                        </li>
                        <li>
                            <a href="#">Next</a>
                        </li>
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

