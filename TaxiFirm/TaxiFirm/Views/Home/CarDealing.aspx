<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    车辆交易
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script>
    </script>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        车辆过户 <small>车辆管理模块</small>
                    </h1>
                </div>
                <form>
                <fieldset>
                    <legend>车辆信息</legend>
                    <ul>
                        <li>车牌号: </li>
                        <li>车辆颜色: </li>
                        <li>车辆品牌: </li>
                        <li>车主: </li>
                        <li>司机: </li>
                    </ul>
                </fieldset>
                </form>
                <h3>
                    Contracting Parties
                </h3>
                <div class="row-fluid">
                    <div class="span6">
                        <form>
                        <fieldset>
                            <legend>买家</legend>
                            <label>
                                姓名</label>
                            <!--<input type="text" />-->
                            <select>
                                <option>TJSSE Taxi Co., Ltd</option>
                                <option>Zhiming Zhang</option>
                                <option>Mercedes</option>
                                <option>Audi</option>
                            </select>
                            <label>
                                ID(公司/个人)</label><input type="text" />
                            <label>
                                地址</label><input type="text" />
                            <label>
                               电话号码</label><input type="text" /><span class="help-block">请认真核对上述信息
                                   </span>
                        </fieldset>
                        </form>
                    </div>
                    <div class="span6">
                        <form>
                        <fieldset>
                            <legend>Seller</legend>
                            <label>
                               姓名</label><input type="text" />
                            <label>
                                ID(公司/个人)</label><input type="text" />
                            <label>
                                地址</label><input type="text" />
                            <label>
                                电话号码</label><input type="text" /><span class="help-block">请认真核对上述信息 </span>
                        </fieldset>
                        </form>
                    </div>
                </div>
                <button class="btn" type="button">
                    Submit</button>
            </div>
        </div>
    </div>
    </body>
</asp:Content>
