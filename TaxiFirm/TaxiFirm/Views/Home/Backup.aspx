<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    我要备份
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
<link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/jquery.js"></script>
<script type="text/javascript">

    function backupSubmit() {
        var backupForm = document.getElementById("backup_form");
        backupForm.submit();

    }
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


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
       <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;background-image:url(../../Content/picture/BackControl/CenterUp2Select.png);"><a href="/Home/BackupList?type=common&page=1">历史备份</a></td>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;">我要备份</td>
        <td height="24">&nbsp;</td>
        <td width="379" height="24">&nbsp;</td>
        <td width="48" height="24" class="UpRight2">&nbsp;</td>
        <td width="48" height="24" class="UpRight"></td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
        <td width="48" height="24" class="UpRight">&nbsp;</td>
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
                <div class="span4" style="width:600px">
                     <!--<a id="A1" href="#modal-container-614546" role="button" class="btn" data-toggle="modal">Launch demo modal</a>
					
					<div id="Div1" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h3 id="H1">
								Modal header
							</h3>
						</div>
						<div class="modal-body">
							<p>
								One fine body…
							</p>
						</div>
						<div class="modal-footer">
							 <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button> <button class="btn btn-primary">Save changes</button>
						</div>
					</div>-->
                        <form id="backup_form" action="/Home/SetNewBackup" method="post">
                        <fieldset>
                            <legend>备份信息</legend>
                            <label>
                                <h4>当前时间:&nbsp;&nbsp; <small> <font id="time2"></font></small></h4></label>
                                <label>
                                <h4>备份名称：  &nbsp;&nbsp;<small><input name="Name" type="text"></small></h4>
                                </label>
                                
                                
                        </fieldset>
                        </form>
                        <script type="text/javascript">
                            function clock2() {


                                var today = new Date();

                           

                                var date = today.getFullYear() + "/" + (today.getMonth() + 1) + "/" + (today.getDate()) + "   " + today.getHours() +
":" + today.getMinutes() + ":" + today.getSeconds() ;
                                mydate1.innerHTML = date;

                            }
                            var mydate1 = window.document.getElementById("time2");
                            var today = new Date();
                            var day;

                            var date = today.getFullYear() + "/" + (today.getMonth() + 1) + "/" + (today.getDate()) + "   " + today.getHours() +
":" + today.getMinutes() + ":" + today.getSeconds();

                            mydate1.innerHTML = date;
                            window.setInterval("clock2()", 1000);
</script>
                        </div>
				</div>
				<div class="span6">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span6">
					 <button class="btn btn-success" type="button" onclick="backupSubmit()">备份</button>
				</div>
				<div class="span6">
				</div>
			</div>
		</div>
	</div>
</div></td>
  </tr>
</table>
<% if (Session["BackupSuccess"] != null)
   {
       string backupSuccess = (string)Session["BackupSuccess"];
       if (backupSuccess.Equals("success"))
       {%>
       <script type="text/javascript">
           window.alert("备份成功");
       </script>
       <%
       }
       else if (backupSuccess.Equals("failed"))
       { %>
          <script type="text/javascript">
              window.alert("抱歉,备份失败,描述信息不多于100汉字!");
       </script>
       <%
       }

           Session.Remove("BackupSuccess");
   }
       
       %>
</asp:Content>
