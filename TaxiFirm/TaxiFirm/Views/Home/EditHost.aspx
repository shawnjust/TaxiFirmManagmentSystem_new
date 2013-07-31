<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.ShowHostModal>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    关于我们
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../Scripts/BackControl/jquery.js"></script>
    <body>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="page-header">
                        <h1>
                            编辑车主信息 <small>管理</small>
                        </h1>
                    </div>
                    <div class="row-fluid">
                        <div class="span8">
                            <% using (Html.BeginForm("EditHost/" + ViewData["id"], "Home", FormMethod.Post, new { enctype = "multipart/form-data" }))
                               {%>
                            <%: Html.ValidationSummary(true) %>
                            <div class="span4">
                                <br />
                                <fieldset>
                                    <legend>
                                        <h3>
                                            基本信息<h3>
                                    </legend>
                                    <h4>
                                        车主姓名</h4>
                                    <p>
                                        <%: Html.TextBoxFor(model => model.name, new { disabled = "disabled", @readonly = "readonly" })%>
                                        <%: Html.ValidationMessageFor(model => model.name) %>
                                    </p>
                                    <p>
                                        <h4>
                                            性别</h4>
                                    </p>
                                    <p>
                                        <small>
                                            男
                                            <%: Html.RadioButtonFor(model => model.gender, true, new { disabled = "disabled", @readonly = "readonly" })%>
                                            女
                                            <%: Html.RadioButtonFor(model => model.gender, false, new { disabled = "disabled", @readonly = "readonly" })%>
                                            <%: Html.ValidationMessageFor(model => model.gender)%>
                                        </small>
                                    </p>
                                    <p>
                                        <h4>
                                            身份证号</h4>
                                    </p>
                                    <p>
                                        <%: Html.TextBoxFor(model => model.id_card, new { disabled = "disabled", @readonly = "readonly" })%>
                                        <%: Html.ValidationMessageFor(model => model.id_card) %>
                                    </p>
                                </fieldset>
                            </div>
                            <div class="span4">
                                <br />
                                <fieldset>
                                    <legend>
                                        <h3>
                                            联系方式</h3>
                                    </legend><legend>
                                        <p>
                                            <h4>
                                                联系电话</h4>
                                        </p>
                                        <p>
                                            <%: Html.TextBoxFor(model => model.telephone, new { disabled = "disabled", @readonly = "readonly" })%>
                                        <%: Html.ValidationMessageFor(model => model.telephone) %>
                                        </p>
                                        <p>
                                            <h4>
                                                家庭住址</h4>
                                        </p>
                                        <p>
                                            <%: Html.TextBoxFor(model => model.address, new { disabled = "disabled", @readonly = "readonly" })%>
                                        <%: Html.ValidationMessageFor(model => model.address) %>
                                        </p>
                                        <h4>
                                                照片</h4>
                                        </p>
                                        <p>
                                            <input name="ImgUpload" type="file" />
                                        <p>
                                            &nbsp;
                                        </p>
                                        <input type="submit" class="btn btn-primary" value="提交"/>
                                </fieldset>
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
