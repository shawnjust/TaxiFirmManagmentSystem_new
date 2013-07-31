<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.getTaxiInformationByPlatenumberResult>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车辆信息
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
                        车辆信息<small>车辆管理</small>
                    </h1>
                </div>
                <div class="row-fluid">
                    <div class="span8">
                        <!--<a id="A1" href="#modal-container-614546" role="button" class="btn" data-toggle="modal">Launch demo modal</a>
					
					<div id="Div1" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h3 id="H1">
								Modal header
							</h3>
						</div>
						<div class="modal-body">
							<p>
								One fine body…
							</p>
						</div>
						<div class="modal-footer">
							 <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button> <button class="btn btn-primary">Save changes</button>
						</div>
					</div>-->
                        <form>
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
                            <strong>驾驶司机ID:</strong>
                            <%= Html.Encode(Model.driver_empolyee_id) %>
                            <br />
                            <br />
                            <legend>车主信息</legend><strong>车主ID:</strong> <a href="/Home/HostInfo/<%=Model.host_empolyee_id%>">
                                <%= Html.Encode(Model.host_empolyee_id) %>
                            </a>
                            <br />
                            <br />
                            <strong>车主姓名:</strong>
                            <%= Html.Encode(Model.host_name) %>
                            <br />
                            <br />
                            <strong>车主身份证号:</strong>
                            <%= Html.Encode(Model.host_id_card) %>
                            <br />
                            <br />
                            <strong>车主电话:</strong>
                            <%= Html.Encode(Model.host_telephone )%>
                            <br />
                            <br />
                            <strong>车主住址:</strong>
                            <%= Html.Encode(Model.host_address) %>
                            <br />
                            <br />
                            <br />
                            <br />
                            <legend>租赁信息</legend><strong>订单号:</strong>
                            <%= Html.Encode(Model.order_id) %>
                            <br />
                            <br />
                            <strong>开始日期:</strong>
                            <%= Html.Encode(Model.rent_begin_time) %>
                            <br />
                            <br />
                            <strong>还车日期:</strong>
                            <%= Html.Encode(Model.rent_due_return_time) %>
                            <br />
                            <br />
                        </fieldset>
                        </form>
                    </div>
                    
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            <li class="active"><a href="/Home/CarInfoDisplay/<%=Model.plate_number%>">信息展示</a>
                            </li>
                            <% if (Model.order_id == 0 || Model.order_id == null)
                               { %>
                            <%= Html.ActionLink("租出", "RentOutTaxi", new { id=Model.plate_number }) %>
                            <% } %>
                            <% else
                               { %>
                            <%= Html.ActionLink("回收", "ReturnCar", new { id=Model.plate_number }) %>
                            <% } %>
                            
                            <li><a href="/Home/CarDealing/<%=Model.plate_number%>">交易</a></li>
                            <li class="nav-header">其它操作 </li>
                            <li><a href="/Home/EditCarInfo/<%=Model.plate_number%>">修改信息</a> </li>
                            <li><a href="/Home/AddCar">添加车辆</a> </li>
                            <li><a href="/Home/DeleteTaxi/<%=Model.plate_number%>">报废车辆</a> </li>
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
