<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master"  Inherits="System.Web.Mvc.ViewPage<TaxiFirm.Models.BuyTaxiModal>" %>

<asp:content id="aboutTitle" contentplaceholderid="TitleContent" runat="server">
    关于我们
</asp:content>
<asp:content id="aboutContent" contentplaceholderid="MainContent" runat="server">
<link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/bootstrap.js"></script>
<link href="../../Content/css/BackControl/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/clean.css" rel="stylesheet" type="text/css" />
<link href="../../Content/css/BackControl/model.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/BackControl/jquery.js"></script>
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
        <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h3 class="text-center text-info">
				买入车辆
			</h3>
		</div>
	</div>
	<div class="row-fluid">
    <legend>
		<div class="span6" align="center">
			<dl>
				<dt>
					当前用户ID
				</dt>
				<br/>
				<dd>
					<%: Model.now_id %>
				</dd>
				<br/>
				<dt>
					当前用户姓名
				</dt>
			</dl>
			<h4>
				<small><%: Model.now_name%></small>
			</h4>
		</div>
        </legend>
		<div class="span6">
			<dl>
				<dt>
					<%: Html.TextBoxFor(model => model.car_id, new { id="Comment", @class="input-medium search-query" }) %>
					<ul id="carinfo">        
					</ul>
					<button type="button" class="btn" onclick="getMessage()">搜索</button>
                
					<%: Html.ValidationMessageFor(model => model.car_id)%>
				</dt>
				
			</dl>
           	<br/>
            <br/>
            <br/> 
		</div>
	</div>
    <div class="row-fluid">
		<div class="span12" align="center">
		<input type="submit" class="btn btn-success" value="保存" />
		
		</div>
	</div>
</div>
<% } %>


</asp:content>

