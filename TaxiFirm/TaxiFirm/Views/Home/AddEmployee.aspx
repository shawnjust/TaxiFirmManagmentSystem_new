<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
   信息修改
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
   <meta charset="utf-8">
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="../../Scripts/BackControl/My97DatePicker/WdatePicker.js"></script>

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
                            <form id="employee_info">
                            <br/>
                            <fieldset>
                                <legend><h3>基本信息<h3>
                                 </legend>
                                <label>
                                    <h4>姓名</h4></label>
                                <p>
                                    <input name="Driver_Name" type="text"/>
                                </p>
                                <p>
                                    
                                        <h4>性别</h4>
                                </p>
                                <p>
                                   <small><input id="man" type="radio" checked="checked" name="1" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="woman" type="radio"  name="1"/>&nbsp;&nbsp;女
                                   </small>
                                </p>
                                <p>
                                        <h4>出生日期</h4>
                                </p>
                                <p>
                                    <input name="Driver_Birthday" type="text" onClick="WdatePicker()" value="1993-3-27"/>
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
                                    <input name="Driver_ID" type="text" />
                                </p>
                            </fieldset>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                                                
                            </div>
                            
                            <div class="span4">
                              <br/>
                            <fieldset>
                          
                                <legend><h3>联系方式</h3></legend><legend>
                                <p>
                                <h4>联系电话</h4>
                                </p>
                                <p>
                                    <input name="employee_TelePhone" type="text" class="error" pattern="^1[3|4|5|8][0-9]\d{4,8}$" title="电话号码为11位数字\" onBlur="if (!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(this.value)) ){alert('联系电话为11位\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                                <p>
                                <h4>家庭住址</h4>
                                </p>
                                <p>
                                    <input name="employee_HomeAddress" type="text" class="error" pattern="^(?=.*?[\u4E00-\u9FA5])[\d\u4E00-\u9FA5]+" title="地址不能为空" onBlur="if (!(/^(?=.*?[\u4E00-\u9FA5])[\d\u4E00-\u9FA5]+/.test(this.value)) ){alert('地址不能为空\n请仔细检查您的输入'); this.value='';this.focus();}"/>
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
                    <button class="btn btn-primary" type="button" style="alignment-adjust:middle">
                        提交</button>
                </div>
            </div>
        </div>
</asp:Content>
