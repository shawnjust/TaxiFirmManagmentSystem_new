<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
 
 

<link href="../../Content/css/BackControl/UpBackground.css" rel="stylesheet" type="text/css" />
<script src="../../Scripts/BackControl/jquery.js" type="text/javascript"></script>
<script src="../../Scripts/BackControl/UpSelect.js" type="text/javascript"></script>
<table width="1366" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="19" bgcolor="#000000"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>
          <img src="../../Content/picture/BackControl/Upicon.png"  width="77" height="12" />
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr class="center">
    <td height="91" class="center"><table width="100%" height="81%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="23%" height="60"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="12%" height="84">&nbsp;</td>
            <td width="23%" valign="bottom"><img src="../../Content/picture/BackControl/leftIcon.png" width="49" height="55" /></td>
            <td width="65%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="51" valign="bottom" class="font1">出租车公司管理系统</td>
              </tr>
              <tr>
                <td valign="bottom"><img src="../../Content/picture/BackControl/1.png" width="143" height="17" /></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="63%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="36">&nbsp;</td>
          </tr>
          <tr>
            <td height="40" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="129" height="80" align="center" valign="middle" class="upSelect"><%: Html.ActionLink("新闻公告", "NewsList", "Home")%></td>
                <td width="129" align="center" valign="middle" class="upSelect"><%: Html.ActionLink("司机管理","DriverList","Home") %></td>
                <td width="129" align="center" valign="middle" class="upSelect"><%: Html.ActionLink("车辆管理", "TaxiList", "Home")%></td>
                <td width="129" align="center" valign="middle" class="upSelect"><%: Html.ActionLink("车主管理","HostList","Home") %></td>
                <td width="129" align="center" valign="middle" class="upSelect"><a href="/Home/Customer?type=common&page=1">客户管理</a></td>
                <td width="129" align="center" valign="middle" class="upSelect"><%:Html.ActionLink("信息管理","BackupList","Home")%></td>
                <td width="129">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="14%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="30%" height="48">&nbsp;</td>
            <td width="70%" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="58" valign="bottom"><a href="/Home/BackHandle?type=logout"> <img title="安全退出" id="logout" src="../../Content/picture/BackControl/logout1.png" width="92" height="34" /></a></td>
                </tr>
              <tr>
                <td height="19">&nbsp;</td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="22" class="down"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="27" align="right"><img src="../../Content/picture/BackControl/3.png" width="17" height="17" /></td>
        <td width="68">&nbsp;</td>
        <td width="218" height="100%"><img src="../../Content/picture/BackControl/2.png" width="155" height="17" /></td>
        <td width="731">&nbsp;</td>
       <td width="40"  class="controlArea"><a href="/FrontPage/Index"><img  title="返回主页面" src="../../Content/picture/BackControl/homeButton.png" width="40" height="17" /></a></td>
         <td width="40" class="controlArea"><img src="../../Content/picture/BackControl/Upback.png" width="43" height="15" /></td>
        <td width="40" class="controlArea"><img src="../../Content/picture/BackControl/Upnext.png" width="42" height="15" /></td>
         <td width="40" class="controlArea"><img src="../../Content/picture/BackControl/User.png" width="38" height="15" /></td>
      </tr>
    </table></td>
  </tr>
</table>
