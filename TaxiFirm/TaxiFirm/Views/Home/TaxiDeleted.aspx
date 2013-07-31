<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.getTaxiInformationByPlatenumberResult>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车辆已报废
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
                        车辆已报废，成功移出当前管理系统。
                    </h2>
                    <legend>提示</legend>报废车辆无法直接从车辆列表中查找，若您仍需要参考报废车辆信息，请至 <a href="/Home/BackupList">信息管理
                    </a>查询相应历史信息。
                    <br />
                    <br />
                    <p>
                        <a class="btn btn-primary btn-large" href="/Home/TaxiList?type=common&page=1">
                            返回车辆列表 »</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
