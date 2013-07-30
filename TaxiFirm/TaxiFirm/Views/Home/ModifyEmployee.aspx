<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Employee" %>
<%@ Import Namespace="TaxiFirm.Models.Firm" %>
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
    <script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#button1").click(
            function () {
                var form1 = document.getElementById("form1");

                var con = window.confirm("是否保存更改");
                if (con) {
                    form1.submit();
                    window.alert("保存成功");
                }
                else {
                    form1.action = "/Home/EmployeeSelfInfo";
                    form1.submit();


                }

            }

            );
        });
    
    </script>
     <% Employee employee=(Employee)ViewData["employee"];
        List<Firm> firms = (List<Firm>)ViewData["firms"];
         %>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="page-header">
                        <h1>
                            修改工号 <small>工号管理</small>
                        </h1>
                    </div>
                    <div class="row-fluid">
                        <div class="span8">
                        <div class="span4">
                           <form id="form1" method="post" action="/Home/GetSelfEmployeeModify">
                            <br/>
                            <fieldset>
                                <legend><h3>基本信息<h3>
                                 </legend>
                                     <p>
                                        <h4>工号</h4>
                                </p>
                                <p>
                                    <input name="Employee_ID" type="text" readonly value="<%:employee.EmployeeId%>"/>
                                </p>
                                <label>
                                    <h4>姓名</h4></label>
                                <p>
                                    <input name="Employee_Name"  value="<%:employee.Name%>" type="text" />
                                </p>
                                <p>
                                    
                                        <h4>性别</h4>
                                </p>
                                <p>
                                <%if (employee.Gender == "男")
                                  { %>
                                   <small><input id="man" type="radio" checked="checked" name="gender" value="true" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="woman" type="radio"  name="gender" value="false"/>&nbsp;&nbsp;女
                                   </small>
                                   <%}
                                  else if (employee.Gender == "女")
                                  { %>
                                     <small><input id="Radio1" type="radio" name="gender" value="true" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="Radio2" type="radio"  checked="checked"  name="gender" value="false"/>&nbsp;&nbsp;女
                                   </small>
                                   <%}
                                  else
                                  { %>
                                     <small><input id="Radio3" type="radio"  name="gender"  value="true"/>&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="Radio4" type="radio"  name="gender" value="false"/>&nbsp;&nbsp;女
                                   </small>
                                   <%} %>
                                </p>
                                <p>
                                        <h4>出生日期</h4>
                                </p>
                                <p>
                                    <input name="Employee_Birthday" type="text" onClick="WdatePicker()" value="<%:employee.Birthday.ToShortDateString().ToString().Replace("/","-")%>"/>
                                </p>
                                <p>
                                        <h4>公司</h4>
                                </p>
                                <p>
                                  <select name="FirmID" size="1" id="select">
                                  <% for (int i = 0; i < firms.Count(); i++)
                                     {
                                         if (firms[i].FirmID == employee.FirmID)
                                         { 
                                         
                                         
                                         %>
                                          <option selected value="<%:firms[i].FirmID %>"><%:firms[i].FirmID%></option>
                                         <%}
                                         else
                                         {
                                         %>
                                     
                                       <option value="<%:firms[i].FirmID%>"><%:firms[i].FirmID%></option>
                                     <%
                                         
                                       
                                     
                                      }
                                     }%>
                               
                                  </select>
                                </p>
                              
                            </fieldset>

                           
                            </div>
                            <div class="span4">
                            	
                                <br/>
                            <fieldset>
                                <legend><h3>扩展信息</h3></legend><legend>
                                <p>
                                    <h4>身份证号：</h4>
                                </p>
                                <p>
                                  <input name="Employee_IDCard" type="text" value="<%:employee.IdCard %>" />
                                </p>
                            </fieldset>
                         
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                                                <button id="button1" class="btn btn-primary" type="button" style="alignment-adjust:middle">
                        提交</button>
                            </div>
                            
                            <div class="span4">
                          
                              <br/>
                            <fieldset>
                          
                                <legend><h3>联系方式</h3></legend><legend>
                                <p>
                                <h4>联系电话</h4>
                                </p>
                                <p>
                                    <input name="Employee_TelePhone" type="text" value="<%:employee.Telephone%>"/>
                                </p>
                                <p>
                                <h4>家庭住址</h4>
                                </p>
                                <p>
                                    <input name="Employee_HomeAddress" type="text" value="<%:employee.Address %>"/>
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