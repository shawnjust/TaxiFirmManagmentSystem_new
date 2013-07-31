
<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.getTaxiInformationByPlatenumberResult>"%>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车辆信息修改
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
                        车辆信息修改<small>车辆管理</small>
                    </h1>
                </div>
                <div class="row-fluid">
                    <div class="span8">
                        <%= Html.ValidationSummary("Edit unsuccssful. Try again please.") %>
                        <% using (Html.BeginForm()){%>
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
                                 <br/><br/>
                                
                                <lable>品牌型号:</lable>
                                 <%= Html.TextBox("taxi_brand",Model.taxi_brand) %>
                                 <%= Html.ValidationMessage("taxi_brand","*") %>
                                 <br/><br/>
                                
                                <lable>所有者ID:</lable>
                                 <%=Html.DropDownList("host_employee_id", ViewData["hosts"] as SelectList, "--请选择--")%>
                                 <%= Html.ValidationMessage("host_name","*") %>
                                 <br/><br/>
                               
                                
                              <br/><br/>
                                
                                <input type="submit" value="保存修改"/>
                                
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
