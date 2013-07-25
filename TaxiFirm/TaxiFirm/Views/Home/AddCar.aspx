<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    添加车辆
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    <body>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="page-header">
                        <h1>
                           添加车辆 <small>车辆管理模块</small>
                        </h1>
                    </div>
                    <div class="row-fluid">
                        <div class="span8">
                            <form>
                            <fieldset>
                                <legend>基本信息 </legend>
                                <label>
                                    车牌号（*必填）</label>
                                <p>
                                    <input type="text" />
                                </p>
                                <p>
                                    
                                        颜色</p>
                                <p>
                                    <input name="text" type="text" />
                                </p>
                                <p>
                                    <label>
                                      品牌</label>
                                </p>
                                <p>
                                    <input name="text2" type="text" />
                                </p>
                                <p>
                                    <label>
                                        经营公司
                                    </label>
                                </p>
                                <p>
                                    <input name="text3" type="text" />
                                </p>
                                <p>
                                    <label>
                                        车主ID
                                    </label>
                                </p>
                                <p>
                                    <input name="text4" type="text" />
                                </p>
                                <label class="checkbox">
                                    <input type="checkbox" />
                                </label>信息确认？
                            </fieldset>
                            </form>
                        </div>
                        <div class="span4">
                            <form>
                            <fieldset>
                                <legend>扩展信息</legend><legend>
                                    <label class="checkbox">
                                        <input name="checkbox" type="checkbox" />
                                        已经租出？
                                        <br>
                                        <br>
                                        <span class="help-block">如果租出，请填下栏<br>
                                        </span>
                                    </label>
                                </legend>
                                <label>
                                   租出时间
                                    <br>
                                </label>
                                <p>
                                    <input type="text" />
                                </p>
                                <p>
                                    <label>
                                       回收时间
                                        <br>
                                    </label>
                                </p>
                                <p>
                                    <input name="text5" type="text" />
                                </p>
                                <p>&nbsp;
                                    </p>
                                <label class="checkbox">
                                </label>
                                <p>&nbsp;
                                    </p>
                            </fieldset>
                            </form>
                        </div>
                    </div>
                    <button class="btn btn-primary" type="button">
                        Add</button>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
