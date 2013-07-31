<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.View_taxi>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    添加车辆
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        添加车辆 <small>车辆管理</small>
                    </h1>
                </div>
                <div class="row-fluid">
                    <%= Html.ValidationSummary("Edit unsuccssful. Try again please.") %>
                    <% using (Html.BeginForm())
                       {%>
                    <fieldset>
                        <legend>基本信息</legend>
                        <lable>车牌号:</lable>
                        <input name="plate_number" id="plate_number" type="text" class="error" pattern="^[\u4e00-\u9fa5]{1}[A-Z]{1}[A-Z_0-9]\d*$"
                            value="<%:Model.plate_number%>" title="确认车牌号格式输入正确，如“晋A12345”" onblur="if (!(/^[\u4e00-\u9fa5]{1}[A-Z]{1}[A-Z_0-9]\d*$/.test(this.value)) ){alert('车牌号：省+地级市+字母或数字组合'); this.value='';this.focus();}" />
                        <%= Html.ValidationMessage("plate_number","*") %>
                        <br />
                        <br />
                        <lable>颜色:</lable>
                        <input name="taxi_color" id="taxi_color" type="text" value="<%:Model.taxi_color%>"
                            class="error" pattern="^[A-Za-z0-9]+$" title="颜色请用字母和数字表示" onblur="if (!(/^[A-Za-z0-9]+$/.test(this.value)) ){alert('颜色请用字母和数字表示'); this.value='';this.focus();}" />
                        <%= Html.ValidationMessage("taxi_color","*") %>
                        <br />
                        <br />
                        <lable>品牌型号:</lable>
                        <%= Html.TextBox("taxi_brand",Model.taxi_brand) %>
                        <%= Html.ValidationMessage("taxi_brand","*") %>
                        <br />
                        <br />
                        <lable>所有者ID:</lable>
                        <%=Html.DropDownList("host_employee_id",ViewData["hosts"] as SelectList,"--请选择--")%>
                        <%= Html.ValidationMessage("host_name","*") %>
                        <br />
                        <br />
                        <br />
                        <input type="submit" value="添加" />
                        </p>
                    </fieldset>
                    <!--
                            <fieldset>
                            <legend>租赁信息</legend>
                                <p>
                                <lable>订单号:</lable>
                                 <%= Html.TextBox("order_id",Model.order_id) %>
                                 <%= Html.ValidationMessage("order_id","*") %>
                                </p>
                                <p>
                                <lable>开始日期:</lable>
                                 <%= Html.TextBox("rent_begin_time",Model.rent_begin_time) %>
                                 <%= Html.ValidationMessage("rent_begin_time","*") %>
                                </p>
                                <p>
                                <lable>还车日期:</lable>
                                 <%= Html.TextBox("rent_due_return_time",Model.rent_due_return_time) %>
                                 <%= Html.ValidationMessage("rent_due_return_time","*") %>
                                </p>
                                <p>
                                <input type="submit" value="Save"/>
                                </p>
                        </fieldset>-->
                    <% } %>
                </div>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
