<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.getTaxiInformationByPlatenumberResult>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    关于我们
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
    <body>
        <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
        </script>
        <div class="container-fluid">
            <div class="row-fluid">
                <fieldset>
                    <legend>Fields</legend>
                    <table class="table table-hover table-bordered">
                        <tr>
                            <td>
                                <div class="display-label">
                                    plate_number</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.plate_number %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    taxi_color</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.taxi_color %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    taxi_brand</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.taxi_brand %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    order_id</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.order_id %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    rent_begin_time</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: String.Format("{0:g}", Model.rent_begin_time) %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    rent_due_return_time</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: String.Format("{0:g}", Model.rent_due_return_time) %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    rent_return_time</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: String.Format("{0:g}", Model.rent_return_time) %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    driver_empolyee_id</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.driver_empolyee_id %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    driver_name</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.driver_name %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    driver_id_card</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.driver_id_card %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    driver_telephone</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.driver_telephone %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    driver_address</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.driver_address %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    host_empolyee_id</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.host_empolyee_id %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    host_name</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.host_name %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    host_id_card</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.host_id_card %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    host_telephone</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.host_telephone %></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="display-label">
                                    host_address</div>
                            </td>
                            <td>
                                <div class="display-field">
                                    <%: Model.host_address %></div>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </div>
        </div>
</asp:Content>
