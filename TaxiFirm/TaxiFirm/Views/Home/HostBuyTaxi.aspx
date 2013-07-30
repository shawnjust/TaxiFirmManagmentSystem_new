<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master"  Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.BuyTaxiModal>" %>

<asp:content id="aboutTitle" contentplaceholderid="TitleContent" runat="server">
    关于我们
</asp:content>
<asp:content id="aboutContent" contentplaceholderid="MainContent" runat="server">
<link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
<body>
    
    <script type="text/javascript">
        function getXmlHttpRequest() {
            var xhr;
            //check for IE implementation(s)
            if (typeof ActiveXObject != 'undefined') {
                try {
                    xhr = new ActiveXObject("Msxml2.XMLHTTP");
                } catch (e) {
                    xhr = new ActiveXObject("Microsoft.XMLHTTP");
                }
            } else if (XMLHttpRequest) {
                //this works for Firefox, Safari, Opera    
                xhr = new XMLHttpRequest();
            } else {
                alert("对不起，你的浏览器不支持ajax");
            }

            return xhr;
        }

        function getMessage() {
            //get our xml http request object
            var xhr = getXmlHttpRequest();

            //prepare the request
            xhr.open("GET", "/Home/getTaxiInfoByID?comment=" + document.getElementById("Comment").value, true)

            //setup the callback function
            xhr.onreadystatechange = function () {
                //readyState 4 means we're done
                if (xhr.readyState != 4) return;

                //populate the page with the result
                document.getElementById('carinfo').innerHTML = xhr.responseText;
            };

            //fire our request
            xhr.send();
        }
    </script>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.now_id) %>
            </div>
            <div class="editor-field">
                <%: Model.now_id %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.now_name) %>
            </div>
            <div class="editor-field">
                <%: Model.now_name%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.car_id) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.car_id, new { id="Comment" }) %>
                <ul id="carinfo">        
                </ul>
                <button type="button" onclick="getMessage()">搜索</button>
                
                <%: Html.ValidationMessageFor(model => model.car_id)%>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

</asp:content>

