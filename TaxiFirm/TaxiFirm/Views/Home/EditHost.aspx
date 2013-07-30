<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master"  Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.ShowHostModal>" %>

<asp:content id="aboutTitle" contentplaceholderid="TitleContent" runat="server">
    关于我们
</asp:content>
<asp:content id="aboutContent" contentplaceholderid="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.name) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.name) %>
                <%: Html.ValidationMessageFor(model => model.name) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id_card) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_card) %>
                <%: Html.ValidationMessageFor(model => model.id_card) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.gender) %>
            </div>
            <div class="editor-field">
                <%: Html.Label("Male") %>
                <%: Html.RadioButtonFor(model => model.gender, true)%>
                <%: Html.Label("Female") %>
                <%: Html.RadioButtonFor(model => model.gender, false)%>
                <%: Html.ValidationMessageFor(model => model.gender)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.address) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.address) %>
                <%: Html.ValidationMessageFor(model => model.address) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.telephone) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.telephone) %>
                <%: Html.ValidationMessageFor(model => model.telephone) %>
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

