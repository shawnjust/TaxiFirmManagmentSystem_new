<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="TaxiFirm.Models.Employee" %>
<%@ Import Namespace="TaxiFirm.Models.Firm" %>
<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
   注册工号
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

                form1.action = "/Home/AddEmployeeHandle";
                form1.submit();





            }

            );
        });
    
    </script>
     <%  List<Firm> firms = (List<Firm>)ViewData["firms"];
         %>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="page-header">
                        <h1>
                            添加雇员信息 <small>信息管理</small>
                        </h1>
                    </div>
                    <div class="row-fluid">
                        <div class="span8">
                        <div class="span4">
                            <form id="form1" method="post">
                            <br/>
                            <fieldset>
                                <legend><h3>基本信息<h3>
                                 </legend>
                                     <p>
                           
                               
                                <label>
                                    <h4>姓名</h4></label>
                                <p>
                                    <input name="Employee_Name" type="text"/>
                                </p>
                                <p>
                                    
                                        <h4>性别</h4>
                                </p>
                                <p>
                              
                                   <small><input id="man" type="radio" checked="checked" name="gender" value="true" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="woman" type="radio"  name="gender" value="false"/>&nbsp;&nbsp;女
                                   </small>
                              
                                </p>
                                <p>
                                        <h4>出生日期</h4>
                                </p>
                                <p>
                                    <input name="Employee_Birthday" type="text" onClick="WdatePicker()"/>
                                </p>
                                <p>
                                        <h4>公司</h4>
                                </p>
                                <p>
                                    <select name="FirmID">
                                  <% for (int i = 0; i < firms.Count(); i++)
                                     {
                                        
                                     %>
                                       <option value="<%:firms[i].FirmID%>"><%:firms[i].FirmID%></option>
                                     
                                         
                                       
                                     
     
                                  <%   }%>
                               
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
                                  <input name="Employee_IDCard" type="text"  />
                                </p>
                            </fieldset>
                            
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                                                <button class="btn btn-primary" type="button" id="button1" style="alignment-adjust:middle">
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
                                    <input name="Employee_TelePhone" type="text" />
                                </p>
                                <p>
                                <h4>家庭住址</h4>
                                </p>
                                <p>
                                    <input name="Employee_HomeAddress" type="text" />
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