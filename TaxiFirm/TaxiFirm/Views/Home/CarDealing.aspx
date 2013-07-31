<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.getTaxiInformationByPlatenumberResult>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车辆交易
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">

        function change() {

            window.alert("你好");
        }
        

    </script>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        车辆交易 <small>车辆管理</small>
                    </h1>
                </div>
                <% Html.BeginForm(); %>
                <fieldset>
                    <legend>基本信息</legend><strong>车牌号:</strong>
                    <%= Html.Encode(Model.plate_number) %>
                    <br />
                    <br />
                    <strong>颜色:</strong>
                    <%= Html.Encode(Model.taxi_color) %>
                    <br />
                    <br />
                    <strong>品牌型号:</strong>
                    <%= Html.Encode(Model.taxi_brand) %>
                    <br />
                    <br />
                    <strong>所有者ID:</strong>
                    <%= Html.Encode(Model.host_empolyee_id) %>
                    <br />
                    <br />
                    <strong>驾驶司机ID:</strong>
                    <%= Html.Encode(Model.driver_empolyee_id) %>
                    <br />
                    <br />
                </fieldset>
                <h3>
                    交易双方
                </h3>
                <div class="row-fluid">
                    <div class="span6">
                        <fieldset>
                            <legend>买方</legend>
                            <lable>所有者ID:</lable>
                                 <%=Html.DropDownList("host_employee_id",ViewData["hosts"] as SelectList,"--请选择--")%>
                                 <%= Html.ValidationMessage("host_name","*") %>
                                 <br/><br/>
                                 <span class="help-block">请确认ID填写正确</span>
                        </fieldset>
                    </div>
                    <div class="span6">
                        <fieldset>
                            <legend>卖方</legend><strong>车主ID: </strong>
                            <%= Html.Encode(Model.host_empolyee_id) %>
                            <br />
                            <br />
                            <strong>姓名: </strong>
                            <%= Html.Encode(Model.host_name) %>
                            <br />
                            <br />
                            <strong>地址: </strong>
                            <%= Html.Encode(Model.host_address )%>
                            <br />
                            <br />
                            <strong>电话号码: </strong>
                            <%= Html.Encode(Model.host_telephone) %>
                            <br />
                            <br />
                        </fieldset>
                    </div>
                </div>
                <input type="submit" value="确认交易"/>
                <% Html.EndForm(); %>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
