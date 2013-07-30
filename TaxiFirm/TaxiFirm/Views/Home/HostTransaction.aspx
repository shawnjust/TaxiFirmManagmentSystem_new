<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master"  Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.TransactionModal>" %>

<asp:content id="aboutTitle" contentplaceholderid="TitleContent" runat="server">
    关于我们
</asp:content>
<asp:content id="aboutContent" contentplaceholderid="MainContent" runat="server">
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.owner_id) %>
            </div>
            <div class="editor-field">
                <%: Model.owner_id%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.owner_name) %>
            </div>
            <div class="editor-field">
                <%: Model.owner_name%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.buyer_id) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.buyer_id, Model.buyer_list)%>
                <%: Html.ValidationMessageFor(model => model.buyer_id) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.car_id) %>
            </div>
            <div class="editor-field">
                <%: Model.car_id%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.car_name) %>
            </div>
            <div class="editor-field">
                <%: Model.car_name%>
            </div>

            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:content>

