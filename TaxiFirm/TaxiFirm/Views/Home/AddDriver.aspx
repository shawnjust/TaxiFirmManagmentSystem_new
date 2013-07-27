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
                            <form name="basic_information_form" action="AddDriver.aspx">
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
                                    <input name="Driver_Name" type="text" onblur="if ((/[^\u4E00-\u9FA5]/g.test(this.value)) ){alert('对不起，司机姓名需要输入汉字\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                                <p>
                                    
                                        <h4>司机性别</h4>
                                </p>
                                <p>
                                   <small><input id="man" type="radio" checked="checked" name="1" />&nbsp;&nbsp;男 &nbsp;&nbsp;<input id="woman" type="radio"  name="1"/>&nbsp;&nbsp;女
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
                                    <input name="Driver_Condition" type="text" onblur="if (!(/^(?:0|[1-9][0-9]?|100)$/.test(this.value)) ){alert('健康状况需要输入100以内的数字\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                            </fieldset>
                            </form>
                            </div>
                            <div class="span4">
                            	<form>
                                <br/>
                            <fieldset>
                                <legend><h3>扩展信息</h3></legend><legend>
                                <label>
                                    <h4>驾驶证编号：</h4>
                                </label>
                                <p>
                                    <input name="Driver_DriverNumber" type="text" />
                                </p>
                                <p>
                                    <h4>身份证号：</h4>
                                </p>
                                <p>
                                    <input name="Driver_ID" type="text" onblur="if (!(/\d{17}[\d|X]|\d{15}/g.test(this.value)) ){alert('身份证号码为17位\n请仔细检查您的输入'); this.value='';this.focus();}"/>
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
                                    <input name="Driver_TelePhone" type="text"  onblur="if (!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(this.value)) ){alert('电话号码为11位数字\n请仔细检查您的输入'); this.value='';this.focus();}"/>
                                </p>
                                <p>
                                <h4>家庭住址</h4>
                                </p>
                                <p>
                                    <input name="Driver_HomeAddress" type="text" />
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



