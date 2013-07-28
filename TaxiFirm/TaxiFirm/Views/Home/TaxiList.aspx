﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
   车辆列表
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
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

       



    });
</script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="24" class="CenterUp"><table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
        <td width="77" height="24" align="center" valign="middle" class="UpSelect1" style="color:#06F;">车辆列表</td>
        <a>        </a>
        
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
            <td width="65%" style="font-size:12px;"><%:Html.ActionLink("增加","AddCar","Home") %></td>
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
            <td width="42%" align="center" valign="middle"><img src="../../Content/picture/BackControl/edit.png" width="14" height="14" /></td>
            <td width="58%" height="23" style="font-size:12px;">删除</td>
          </tr>
        </table></td>
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
  <tr>
    <td height="24" colspan="4" class="CenterUp"><div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div class="row-fluid">
            <div class="span6">
              <div class="page-header">
                <h1>车辆列表</h1>
                <h1><small></small></h1>
              </div>
            </div>
            <div class="span6">
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <form class="form-search">
                <input type="text" title= "输入客户名或id" class="input-medium search-query" />
                <button type="submit" class="btn">搜索</button>
              </form>
            </div>
          </div>
          <table class="table table-hover table-bordered">
            <thead>
              <tr>
                <th width="34" align="center">选中</th>
                <th width="34">序号</th>
                <th width="87">车牌</th>
                <th width="68"> 是否租出</th>
                <th width="80">车辆品牌</th>
                <th width="49">还车时间</th>
                <th width="122">详细信息</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td align="center"><input name="input" type="checkbox" value="" />
                  &nbsp;</td>
                <td> 1 </td>
                <td>皖A154111</td>
                <td> 是 </td>
                <td>大众帕萨特</td>
                <td> 2014-5-28</td>
                <td  style="color:#900" class="pointer"><%:Html.ActionLink("具体信息","CarInfoDisplay","Home") %></td>
              </tr>
              <tr class="success">
                <td align="center"><input name="input" type="checkbox" value="" /></td>
                <td>2</td>
                <td>皖A154111</td>
                <td>是 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span style="color: #900"></span><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
              <tr class="error">
                <td align="center"><input name="input2" type="checkbox" value="" /></td>
                <td>3</td>
                <td>皖A154111 </td>
                <td>是 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
              <tr class="warning">
                <td align="center"><input name="input3" type="checkbox" value="" /></td>
                <td>4</td>
                <td>皖A154111</td>
                <td>是 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
              <tr class="info">
                <td align="center"><input name="input4" type="checkbox" value="" /></td>
                <td>5</td>
                <td>皖A154111</td>
                <td>是 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
              <tr>
                <td align="center"><input name="input5" type="checkbox" value="" /></td>
                <td> 1 </td>
                <td>皖A154111</td>
                <td>是 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
              <tr class="success">
                <td align="center"><input name="input6" type="checkbox" value="" /></td>
                <td>2</td>
                <td>皖A154111</td>
                <td>是 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
              <tr class="error">
                <td align="center"><input name="input7" type="checkbox" value="" /></td>
                <td>3</td>
                <td>皖A154111</td>
                <td> 否 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
              <tr class="warning">
                <td align="center"><input name="input8" type="checkbox" value="" /></td>
                <td>4</td>
                <td>皖A154111</td>
                <td>否 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
              <tr class="info">
                <td align="center"><input name="input9" type="checkbox" value="" /></td>
                <td>5</td>
                <td>皖A154111</td>
                <td>否 </td>
                <td>雪弗兰</td>
                <td>2014-5-28</td>
                <td><span class="pointer" style="color:#900">具体信息</span></td>
              </tr>
            </tbody>
          </table>
          <div class="pagination pagination-centered">
            <ul>
              <li> <a href="#">Prev</a></li>
              <li> <a href="#">1</a></li>
              <li> <a href="#">2</a></li>
              <li> <a href="#">3</a></li>
              <li> <a href="#">4</a></li>
              <li> <a href="#">5</a></li>
              <li> <a href="#">Next</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div></td>
  </tr>
    </table>


</asp:Content>
