<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.getTaxiInformationByPlatenumberResult>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车辆租出
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
 
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        车辆租出<small>车辆管理</small>
                    </h1>
                </div>
                <div class="row-fluid">
                    <div class="span8">
                        <%= Html.ValidationSummary("Edit unsuccssful. Try again please.") %>
                        <% using (Html.BeginForm())
                           {%>
                        <fieldset>
                            <legend>租赁信息</legend><strong>车牌号:</strong>
                            <%= Html.Encode(Model.plate_number) %>
                            <br />
                            <br />
                            
                            <strong>订单号:</strong>
                            <%= Html.TextBox("order_id",Model.order_id) %>
                            <%= Html.ValidationMessage("order_id","*") %>
                            
                            <br />
                            <br />
                            <strong>司机ID:</strong>
                            <%=Html.DropDownList("driver_employee_id",ViewData["drivers"] as SelectList,"--请选择--")%>
                            <%= Html.ValidationMessage("driver_employee_id","*") %>
                            <br />
                            <br />

                            <strong>开始日期:</strong>
                            <%= Html.TextBox("rent_begin_time",Model.rent_begin_time) %>
                            <%= Html.ValidationMessage("rent_begin_time","*") %>
                            
                            <br />
                            <br />
                            
                            <strong>还车日期:</strong>
                            <%= Html.TextBox("rent_due_return_time", Model.rent_due_return_time)%>
                            <%= Html.ValidationMessage("rent_due_return_time","*") %>
                            
                            <br />
                            <br />
                            <br />
                            <input type="submit" value="确认租出" />
                        </fieldset>
                        <% } %>
                    </div>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            <li class="active"><a href="/Home/CarInfoDisplay/<%=Model.plate_number%>">信息展示</a> </li>
                            <li><a href="/Home/RentOutTaxi/<%=Model.plate_number%>">租出</a> </li>
                            <li><a href="/Home/ReturnCar/<%=Model.plate_number%>">回收</a></li>
                            <li><a href="/Home/CarDealing/<%=Model.plate_number%>">交易</a></li>
                            <li class="nav-header">其它操作 </li>
                            <li><a href="/Home/EditCarInfo/<%=Model.plate_number%>">修改信息</a> </li>
                            <li><a href="/Home/AddCar">添加车辆</a> </li>
                            <li class="divider"></li>
                            <li><a href="/Home/TaxiList">回到车辆列表 </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
