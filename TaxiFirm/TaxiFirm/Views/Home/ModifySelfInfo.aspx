<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Manager" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
   信息修改
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
   <meta charset="utf-8" />
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="../../Scripts/BackControl/My97DatePicker/WdatePicker.js"></script>
   <style type="text/css">
    input[type="text"]
    {
        height:32px;
        
        }
	</style>
     <% Manager manager=(Manager)Session["CurrentManager"];%>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="page-header">
                        <h1>
                            修改经理信息 <small>信息管理</small>
                        </h1>
                    </div>
                    <div class="row-fluid">
                        <div class="span8">
                        <div class="span4">
                            <form>
                            <br/>
                            <fieldset>
                                <legend><h3>基本信息<h3>
                                 </legend>
                                     <p>
                                        <h4>经理编号</h4>
                                </p>
                                <p>
                                    <input name="Manager_ID" type="text" readonly value="<%:manager.EmployId%>"/>
                                </p>
                                <label>
                                    <h4>经理姓名</h4></label>
                                <p>
                                    <input name="Manager_Name"  value="<%:manager.Name%>" type="text" />
                                </p>
                                <p>
                                    
                                        <h4>经理性别</h4>
                                </p>
                                <p>
                                <%if (manager.Gender == "男")
                                  { %>
                                   <small><input id="man" type="radio" checked="checked" name="1" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="woman" type="radio"  name="1"/>&nbsp;&nbsp;女
                                   </small>
                                   <%}
                                  else if (manager.Gender == "女")
                                  { %>
                                     <small><input id="Radio1" type="radio" name="1" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="Radio2" type="radio"  checked="checked"  name="1"/>&nbsp;&nbsp;女
                                   </small>
                                   <%}
                                  else
                                  { %>
                                     <small><input id="Radio3" type="radio"  name="1" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="Radio4" type="radio"  name="1"/>&nbsp;&nbsp;女
                                   </small>
                                   <%} %>
                                </p>
                                <p>
                                        <h4>出生日期</h4>
                                </p>
                                <p>
                                    <input name="Manager_Birthday" type="text" onClick="WdatePicker()" value="1994-3-27"/>
                                </p>
                                <p>
                                        <h4>公司</h4>
                                </p>
                                <p>
                                  <select name="select" size="1" id="select">
                                  <option>1222</option>
                                  <option>1222</option>
                                  </select>
                                </p>
                              
                            </fieldset>

                            </form>
                            </div>
                            <div class="span4">
                            	<form>
                                <br/>
                            <fieldset>
                                <legend><h3>扩展信息</h3></legend><legend>
                                <p>
                                    <h4>身份证号：</h4>
                                </p>
                                <p>
                                  <input name="Manager_IDCard" type="text" value="<%:manager.IdCard %>" />
                                </p>
                            </fieldset>
                            </form>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                                                <button class="btn btn-primary" type="button" style="alignment-adjust:middle">
                        提交</button>
                            </div>
                            
                            <div class="span4">
                            <form>
                              <br/>
                            <fieldset>
                          
                                <legend><h3>联系方式</h3></legend><legend>
                                <p>
                                <h4>联系电话</h4>
                                </p>
                                <p>
                                    <input name="Manager_TelePhone" type="text" value="<%:manager.Telephone%>"/>
                                </p>
                                <p>
                                <h4>家庭住址</h4>
                                </p>
                                <p>
                                    <input name="Manager_HomeAddress" type="text" value="<%:manager.Address %>"/>
                                </p>
                                <p>
                                    </p>
                                <label class="checkbox">
                                </label>
                                <p>&nbsp;
                                    </p>
                            </fieldset>
                            </form>
                        </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
