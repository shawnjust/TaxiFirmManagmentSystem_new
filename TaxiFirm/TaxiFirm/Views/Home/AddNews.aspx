<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    关于我们
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
  <meta charset="utf-8">
 <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <style type="text/css">
	input[type="text"], input[type="password"], input[type="email"], textarea, select {
    border: 1px solid rgb(224, 224, 224);
    padding: 8px 9px;
    outline: medium none;
    font-size: 13px;
    color: rgb(136, 136, 136);
    margin: 0px;
    max-width: 100%;
    display: block;
    background: none repeat scroll 0% 0% rgb(255, 255, 255);
    box-shadow: 0px 2px 0px 0px rgba(0, 0, 0, 0.03);
    border-radius: 2px 2px 2px 2px;
}
#contact input.error, #contact textarea.error, #contact select.error {
    border: 1px solid rgb(242, 196, 194);
    background: none repeat scroll 0% 0% rgb(255, 236, 235);
}
#contact textarea {
    max-width: 1000px;
    min-width: 620px;
    min-height: 160px;
}
	</style>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        发布新闻<small>新闻公告</small></h1>
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
                                <legend>基本内容 </legend>
                                <label>
                                                                
                            <h4>新闻标题：&nbsp;&nbsp;</h4></label> <br/><input type="text" align="middle" class="span10"/>

                               
                                    <label><h4>新闻图片： &nbsp;&nbsp;</h4></label>
                                    <input name="image" type="file" />
                                   <br/>
                                   <label>
                                   <br/>
                            <h4>新闻内容：</h4>
                            <textarea name="contents" cols="800" rows="10" spellcheck="true" class="span12"></textarea>
                            <br/>
   	   &nbsp;&nbsp;
   	   </label>
   	   </h4>
       </fieldset>
       </form>
       </div>

                        <form>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            <li class="active"><a href="#">新闻操作
                            </a> </li>
                            <li><a id="modal-614546" href="#modal-container-614546" data-toggle="modal">
                                其他新闻</a>
                                <div id="modal-container-614546" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel"
                                    aria-hidden="true">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            ×</button>
                                        <h3 id="myModalLabel">
                                            Modal header
                                        </h3>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            One fine body…
                                        </p>
                                    </div>
                                    <div class="modal-footer">
                                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                                            Close</button>
                                        <button class="btn btn-primary">
                                            Save changes</button>
                                    </div>
                                </div>
                            </li>
                            <li><a href="#">预览新闻</a> </li>
                            <li><a href="#">保存新闻</a> </li>
                        </ul>
                    </div>
</asp:Content>
