<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    新闻内容
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>新闻内容<small></small>
                    </h1>
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
                            <legend>基本信息</legend>
                            <label>
                                标题：</label><label>发布时间:</label><label>发布人:</label>
                        </fieldset>
                        </form>
                        <form>
                        <fieldset>
                            <legend>内容</legend>
                        <p style="TEXT-ALIGN: left" align="left"><font color="navy" face="微软雅黑">  &nbsp; &nbsp; &nbsp; &nbsp;昨日下午5时，深圳市宝安区街头竟然难以打到一辆绿的。记者昨日走遍宝安区多个片区发现，许多绿的停在街头，车窗处都放着“暂停营业”的牌子。司机们告诉  记者，深圳绿的遭遇非法营运的伤害很大，他们早想“休息几天”。前日凌晨发生一起的哥被砍伤事件成为昨日停工的导火线，司机担忧营运时的安全问题。</font></p>	
                        </fieldset>
                        </form>
                    </div>
                    <div class="span4">
                        <ul class="nav nav-list">
                            <li class="nav-header">基本操作 </li>
                            <li class="active"><a href="#">新闻展示</a> </li>
                            <li><a id="modal-614546" href="" data-toggle="modal">
                               删除</a>
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
                                            关闭</button>
                                        <button class="btn btn-primary">
                                            保存修改</button>
                                    </div>
                                </div>
                            </li>
                          
                            <li><a href="#">修改</a> </li>
                          
                            <li class="nav-header">图片信息 </li>
                            <li><a href="#">图片</a></li>
                            <li class="divider"></li>
                            <li>   <p style="TEXT-ALIGN: center" align="center">
  <img style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px;width:200px; height:100px;" id="{AEA937E9-2595-4B9A-B701-A4E75A28B282}" title=""  border="0" hspace="0" align="center"  src="../../Content/picture/FrontPage/blog-02a-large.jpg"/></p></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
