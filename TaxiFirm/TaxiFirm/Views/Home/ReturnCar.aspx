<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.getTaxiInformationByPlatenumberResult>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车辆归还确认
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
                        车辆已归还公司。
                    </h2>
                    
                        
                         <legend>订单已完成</legend>
                            
                               

                               <strong>实际还车日期:</strong>
                               <%= Html.Encode(DateTime.Now) %>

                              <br/><br/>

                    
                    <p>
                        <a class="btn btn-primary btn-large" href="/Home/CarInfoDisplay/<%=Model.plate_number%>">返回车辆信息 »</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
