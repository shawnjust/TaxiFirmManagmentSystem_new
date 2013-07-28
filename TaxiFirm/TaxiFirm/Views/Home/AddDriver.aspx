<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    添加司机
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<meta charset="utf-8">
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="../../Scripts/BackControl/My97DatePicker/WdatePicker.js"></script>
    <script language="javascript">
        function check(basic_information_form) {
            if (basic_information_form.Driver_Name.value == "") {
                alert("请输入Email地址!"); basic_information_form.Driver_Name.focus(); return;
            }
            if (!checkemail(basic_information_form.Driver_Name.value)) {
                alert("您输入Email地址不正确!"); basic_information_form.Driver_Name.focus(); return;
            }
            basic_information_form.submit();
        }
        function checkemail(Driver_Name) {
            var str = Driver_Name;
            var Expression = /[^\u4E00-\u9FA5]/;
            var objExp = new RegExp(Expression);
            if (objExp.test(str) == true) {
                return true;
            } else {
                return false;
            }
        }

        function submitAll() {
            var form1 = window.document.getElementById("info_form1");
            var form2 = window.document.getElementById("info_form2");
            var form3 = window.document.getElementById("info_form3");
            form1.submit();
            form2.submit();
            form3.submit();
        }
    </script>
<body>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="page-header">
                        <h1>
                            添加司机 <small>司机管理</small>
                        </h1>
                    </div>
                    <div class="row-fluid">
                        <div class="span8">
                        <div class="span4">
                            <form name="basic_information_form" id="info_form1" action="/Home/SaveDriverInfo" method="post">
                            <br/>
                            <fieldset>
                                <legend><h3>基本信息<h3>
                                 </legend>
                                <label>
                                    <h4>司机姓名</h4></label>
                                <p>
                                 <!--  
                                    <input name="Driver_Name" type="text" onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))"/>
                                   -->
                                    <input name="Driver_Name" type="text" pattern="[\u4e00-\u9fa5]{2,4}" title="司机姓名需要输入汉字" onblur="if (!(/[\u4e00-\u9fa5]{2,4}/.test(this.value)) ){alert('司机姓名需要输入汉字\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                                <p>
                                    
                                        <h4>司机性别</h4>
                                </p>
                                <p>
                                   <small><input id="man" type="radio" checked="checked" name="Driver_Gender" value="1" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="woman" type="radio" value="0"  name="Driver_Gender"/>&nbsp;&nbsp;女
                                   </small>
                                </p>
                                <p>
                                        <h4>出生日期</h4>
                                </p>
                                <p>
                                    <input name="Driver_Birthday" type="text" onClick="WdatePicker()"/>
                                </p>
                                <p>
                                		<h4>健康状况</h4>
                                </p>
                                <p>
                                    <input name="Driver_Condition" type="text" class="error" pattern="^(?:0|[1-9][0-9]?|100)$" title="健康状况需要输入100以内的数字" onblur="if (!(/^(?:0|[1-9][0-9]?|100)$/.test(this.value)) ){alert('健康状况需要输入100以内的数字\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                            </fieldset>
                            </form>
                            </div>
                            <div class="span4">
                            	<form id="info_form2" action="/Home/SaveDriverInfo" method="post">
                                <br/>
                            <fieldset>
                                <legend><h3>扩展信息</h3></legend><legend>
                                <label>
                                    <h4>驾驶证编号：</h4>
                                </label>
                                <p>
                                    <input name="Driver_DriverNumber" type="text" class="error" pattern="\d{15}[\d|X]|\d{12}" title="驾驶证编号为12位数字"  onblur="if (!(/\d{15}[\d|X]|\d{12}/.test(this.value)) ){alert('驾驶证编号为12位数字\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                                <p>
                                    <h4>身份证号：</h4>
                                </p>
                                <p>
                                   <input name="Driver_ID" type="text" class="error" pattern="\d{17}[\d|X]|\d{15}" title="身份证号码为17位" onblur="if (!(/\d{17}[\d|X]|\d{15}/.test(this.value)) ){alert('身份证号码为11位\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                            </fieldset>
                            </form>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                                                <button class="btn btn-primary" type="button" style="alignment-adjust:middle" onclick="submitAll()">
                        提交</button>
                            </div>
                            
                            <div class="span4">
                            <form id="info_form3" action="/Home/SaveDriverInfo" method="post">
                              <br/>
                            <fieldset>
                          
                                <legend><h3>联系方式</h3></legend>
                                <p>
                                <h4>联系电话</h4>
                                </p>
                                <p>
                                    <input name="Driver_TelePhone" type="text" class="error" pattern="^1[3|4|5|8][0-9]\d{4,8}$" title="电话号码为11位数字\" onblur="if (!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(this.value)) ){alert('联系电话为11位\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                                <p>
                                <h4>家庭住址</h4>
                                </p>
                                <p>
                                    <input name="Driver_HomeAddress" type="text" class="error" pattern="^(?=.*?[\u4E00-\u9FA5])[\d\u4E00-\u9FA5]+" title="地址不能为空" onblur="if (!(/^(?=.*?[\u4E00-\u9FA5])[\d\u4E00-\u9FA5]+/.test(this.value)) ){alert('地址不能为空\n请仔细检查您的输入'); this.value='';this.focus();}"/>
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



