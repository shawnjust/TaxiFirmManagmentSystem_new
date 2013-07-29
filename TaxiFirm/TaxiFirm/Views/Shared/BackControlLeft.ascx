<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<link href="../../Content/css/BackControl/BackControlLeft.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {


        $(".leftSelect").click(function () {


            for (var i = 0; i < $(".leftSelect").length; i++) {
                var temp = $(".leftSelect").get(i);

                //window.alert($(this).css("background-image"));

                temp.style.backgroundImage = 'none';
                temp.style.color = "blue";


            }

            $(this).css("background-image", 'url("../../Content/picture/BackControl/leftSelect.png")');
            $(this).css("color", 'red');
            // $(this).css("color",'red');
            //  this.style.backgroudColor="red";



        });


    });

</script>
<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="40" height="659">&nbsp;</td>
    <td width="1042" align="left" valign="top"><table width="97%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="4%" height="53"><img src="../../Content/picture/BackControl/identity.png" width="30" height="30" /></td>
        <td width="96%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="12">&nbsp;</td>
            <td width="71">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td width="12">&nbsp;</td>
            <td width="71" height="29" align="center" valign="middle" class="leftSelect"><a href="/Home/ManagerList?type=common&page=1">角色管理</a></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="71">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="53"><img src="../../Content/picture/BackControl/number.png" width="30" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="12">&nbsp;</td>
            <td width="71">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td width="12">&nbsp;</td>
            <td width="71" height="29" align="center" valign="middle" class="leftSelect"><%:Html.ActionLink("账号管理","ManagerSelfInfo","Home") %></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="71">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
       <tr>
        <td width="4%" height="53"><img src="../../Content/picture/BackControl/identity.png" width="30" height="30" /></td>
        <td width="96%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="12">&nbsp;</td>
            <td width="71">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td width="12">&nbsp;</td>
            <td width="71" height="29" align="center" valign="middle" class="leftSelect"><a href="/Home/EmployeeList?type=common&page=1">工号管理</a></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="71">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="53"><img src="../../Content/picture/BackControl/organization.png" width="29" height="29" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="12">&nbsp;</td>
            <td width="71">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td width="12">&nbsp;</td>
            <td width="71" height="29" align="center" valign="middle" class="leftSelect"><a href="/Home/FirmList?page=1">组织管理</a></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="71">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="53">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="76">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>