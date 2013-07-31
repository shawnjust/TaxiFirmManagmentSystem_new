<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.getTaxiInformationByPlatenumberResult>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车辆报废确认
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <div class="page-header">
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="hero-unit">
                    <h2>
                        车辆报废确认
                    </h2>
                    报废车辆将无法在列表中查看,您确认要报废该车吗？
                    <br /><br/>
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
                    <br/><br/>
                    <% using (Html.BeginForm())
                       { %>
                    <input name="confirmButton" type="submit" class="btn btn-primary btn-large" value="确认报废" />
                    <% } %>
                </div>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
