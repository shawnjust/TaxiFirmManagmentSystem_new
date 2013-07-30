<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>Taxi Firm Server</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link href="../../Content/css/FrontPage/style.css" rel="stylesheet" >
<link href="../../Content/css/FrontPage/colors/blue.css" id="colors" rel="stylesheet" >
<link rel="shortcut icon" href="../../Content/favicon.ico" type="image/x-icon" />
<!-- <link href="../../Content/css/BackControl/bootstrap.css" rel="stylesheet" type="text/css" /> -->
   
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Java Script
================================================== -->
<!-- <script src="../../Scripts/BackControl/bootstrap.js" type="text/javascript"></script> -->
<script src="../../Scripts/FrontPage/jquery.min.js"></script>
<script src="../../Scripts/FrontPage/jquery-ui.min.js"></script>
<script src="../../Scripts/FrontPage/jquery.flexslider.js"></script>
<script src="../../Scripts/FrontPage/jquery.selectnav.js"></script>
<script src="../../Scripts/FrontPage/jquery.twitter.js"></script>
<script src="../../Scripts/FrontPage/jquery.modernizr.js"></script>
<script src="../../Scripts/FrontPage/jquery.easing.1.3.js"></script>
<script src="../../Scripts/FrontPage/jquery.contact.js"></script>
<script src="../../Scripts/FrontPage/jquery.isotope.min.js"></script>
<script src="../../Scripts/FrontPage/jquery.jcarousel.js"></script>
<script src="../../Scripts/FrontPage/jquery.fancybox.min.js"></script>
<script src="../../Scripts/FrontPage/jquery.layerslider.min.js"></script>
<script src="../../Scripts/FrontPage/custom.js"></script>

<script src='../../google_analytics_auto.js'></script></head>
<body>

<!-- Wrapper / Start -->
<div id="wrapper">

<!-- Header
================================================== -->
<div id="top-line"></div>


<!-- Page Content -->
<div class="page-content">


	<!-- 960 Container -->
	<div class="container">
	<!-- Header -->
	<header id="header">

		<!-- Logo -->
		<div class="ten columns">
			<div id="logo">
				<h1><a href="#"><img src="../../Content/picture/FrontPage/logo.png" alt="Nevia Premium Template" height="62" /></a></h1>
				<div id="tagline">欢迎使用出租车信息管理系统</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Social / Contact -->
		<div class="six columns">

			<!-- Social Icons -->
	

			<div class="clearfix"></div>
			<br/>
            <br/>
			<!-- Contact Details -->
			<div class="contact-details">联系电话: +86 131 6293 7287</div>

			<div class="clearfix"></div>

			<!-- Search -->
			<nav class="top-search">
                <a class="button gray medium" href="#">
                	<i class="icon-cloud white"></i>注册
                </a>
				<a class="button color medium" href="/FrontPage/Login">
                	<i class="icon-user white"></i>登录
                </a>
			</nav>

		</div>
	</header>
	<!-- Header / End -->

	<div class="clearfix"></div>

</div>
<!-- 960 Container / End -->


<!-- Navigation
================================================== -->
<nav id="navigation" class="style-1">

<div class="left-corner"></div>
<div class="right-corner"></div>

<ul class="menu" id="responsive">
<li><a href="/FrontPage/Index"><i class="halflings white home"></i> 主页</a></li>

	<li><a href="/FrontPage/News"><i class="halflings white file"></i> 新闻</a>
	</li>
	<li><a href="/FrontPage/Notification"><i class="halflings white bullhorn"></i> 通知</a>
    </li>
    <li><a href="/FrontPage/Complain"><i class="halflings white hdd"></i> 评价</a>
	</li>
	<li><a href="/FrontPage/Gallery"><i class="halflings white picture"></i> 画廊</a>
	</li>
	<li><a href="/FrontPage/Elements" id="current"><i class="halflings white road"></i> 其他</a>
	</li>
	<li><a href="/FrontPage/About"><i class="halflings white leaf"></i> 关于我们</a>
    </li>
</ul>
</nav>
<div class="clearfix"></div>


<!-- Content
================================================== -->
<div id="content">


<!-- 960 Container -->
<div class="container floated">

	<div class="sixteen floated page-title">

		<h2>积分系统 <span>/ 请通过填写下列表单获取您的积分</span></h2>

		<nav id="breadcrumbs">
			<ul>
				<li>你在:</li>
				<li><a href="Index">主页</a></li>
				<li>积分系统</li>
			</ul>
		</nav>

	</div>

</div>
<!-- 960 Container / End -->


<!-- Page Content -->
<div class="page-content">

    <!-- 960 Container -->
	<div class="container">

	<!-- Blockquote
	================================================== -->

		<div class="sixteen columns">
			<!-- Headline -->
			<p>请您认真填写下列表单，我们会通过您输入的发票号码来获取您的消费消息。您获得的积分是和您的消费金额成一比一关系。我们会根据您的积分为您在后续消费中给予优惠，感谢您支持我们的公司。</p>
			<blockquote>长运出租车董事长 盛雯</blockquote>
		</div>

	</div>
	<!-- 960 Container / End -->
	<!-- 960 Container -->
	<div class="container">



	<!-- Divider -->
	<div class="line" style="margin-top: 25px; margin-bottom: 40px;"></div>


	<!-- 960 Container -->
	<div class="container">


	<!-- Large Notice
	================================================== -->

		<div class="eight columns">
			
			<!-- Headline -->
			<h3 class="margin-reset">乘换车优惠</h3><br />

			<!-- Large Notice -->
			<div class="large-notice">
				<h3>当前等级： 5</h3>
                <div class="skill-bar"><div class="skill-bar-content" data-percentage="80" style="width: 80%;">
                      80%
                    </div><span class="skill-title">
                      完成 80%
                    </span>
                </div>
				<p>当前优惠： 积分满2000可换取50元话费</p>
                <h4>发票号</h4>
                <p>
                <input id="invoiceNumber" type="text" style="width: 70%;" name="invoiceNumber"></input>
                </p>
                <p>一张发票仅能作用一次</p>
				<a href="#" class="button medium color">提交</a>
			</div>

		<br /><br />

		</div>


	<!-- Alert Boxes
	================================================== -->

		<div class="eight columns">

			<!-- Headline -->
			<h3 class="margin-reset">注意事项</h3><br />


			<div class="notification error closeable">
				<p><span> 乘车结束后请收集发票</span></p>
			</div>

			<div class="notification success closeable">
				<p><span>等级越高享受的优惠越多</span></p>
			</div>

			<div class="notification warning closeable">
				<p><span>登记完成后便不能对发票信息进行更改</span></p>
			</div>

			<div class="notification notice closeable">
				<p><span>积分仅限本人使用，不得转让或出租</span></p>
			</div>
            
            <div class="notification success closeable">
				<p><span>使用发票前请仔细核对是否过期</span></p>
			</div>

	</div>
	<!-- 960 Container / End -->


	<div class="clearfix"></div>
	<!-- Divider -->
	<div class="line" style="margin-top: 30px; margin-bottom: 40px;"></div>


	<!-- 960 Container -->
	<div class="container">

	<!-- Regular Table
	================================================== -->

		<div class="sixteen columns">
			<!-- Headline -->
			<h3 class="margin-reset">积分记录</h3><br />

			<table class="standard-table">

				<tr>
					<th>编号</th>
					<th>发票号</th>
					<th>报销时间</th>
					<th>金额</th>
				</tr>

				<tr>
					<td>1</td>
					<td>103254352</td>
					<td>01/04/2012</td>
					<td>50 ￥</td>
				</tr>

				<tr>
					<td>2</td>
					<td>103242563</td>
					<td>01/04/2012</td>
					<td>50 ￥</td>
				</tr>

				<tr>
					<td>3</td>
					<td>103242563</td>
					<td>01/04/2012</td>
					<td>50 ￥</td>
				</tr>

				<tr>
					<td>4</td>
					<td>103242563</td>
					<td>01/04/2012</td>
					<td>50 ￥</td>
				</tr>

				<tr>
					<td>5</td>
					<td>103242563</td>
					<td>01/04/2012</td>
					<td>50 ￥</td>
				</tr>

			</table>

		</div>

	</div>
	<!-- 960 Container / End -->
<br />
</div>
<!-- Page Content / End -->

</div>
<!-- Content / End -->

</div>
<!-- Wrapper / End -->



<!-- Footer
================================================== -->

<!-- Footer / Start -->
<footer id="footer">
	<!-- 960 Container -->
	<div class="container">

		<!-- About -->
		<div class="four columns">
			<img id="logo-footer" src="../../Content/picture/FrontPage/logo-footer.png" alt="" />
			<p>出租车管理系统由一行八人历时20天开发完成，具有独立的运作能力，可以直接投入商业化运作</p>
			
		</div>

		<!-- Contact Details -->
		<div class="four columns">
			<h4>联系方式</h4>
			<ul class="contact-details-alt">
				<li><i class="halflings white map-marker"></i> <p><strong>地址:</strong> 4800号 曹安公路,上海市嘉定区, CHA</p></li>
				<li><i class="halflings white user"></i> <p><strong>电话:</strong> +86 189 1827 1950</p></li>
				<li><i class="halflings white envelope"></i> <p><strong>Email:</strong> <a href="#">chengran327@gmail.com</a></p></li>
			</ul>
		</div>

		<!-- Photo Stream -->
		<div class="four columns">
			<h4>照片流</h4>
			<div class="flickr-widget">
				<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=6&amp;display=latest&amp;size=s&amp;layout=x&amp;source=user&amp;user=48035108@N07"></script>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Twitter -->
		<div class="four columns">
			<h4>成员</h4>
			<ul id="facebook">
            	<li><i class="icon-group"></i>方志晗  &nbsp; &nbsp;<i class="icon-user"></i>盛雯 &nbsp; &nbsp;<i class="icon-user"></i>王成</li>
                <li></li>
                <li><i class="icon-user"></i>赵青</li>
                <li><i class="icon-user"></i>路捷</li>
                <li><i class="icon-user"></i>洪海杰</li>
                <li><i class="icon-user"></i>宁婧</li>
                <li><i class="icon-user"></i>程冉</li>
            </ul>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- 960 Container / End -->

</footer>
<!-- Footer / End -->


<!-- Footer Bottom / Start  -->
<footer id="footer-bottom">

	<!-- 960 Container -->
	<div class="container">

		<!-- Copyrights -->
		<div class="eight columns">
			<div class="copyright">
				© Copyright 2012 by <a href="#">TaxiFirm Server</a>. All Rights Reserved.
			</div>
		</div>

		<!-- Menu -->
		<div class="eight columns">
			<nav id="sub-menu">
				<ul>
					<li><a href="#">FAQ's</a></li>
					<li><a href="#">Sitemap</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</nav>
		</div>
        </div>
	</div>
	<!-- 960 Container / End -->

</footer>
<!-- Footer Bottom / End -->


<!-- Style Switcher
================================================== -->
<link rel="stylesheet" href="../../Content/css/FrontPage/switcher.css">
<script src="../../Scripts/FrontPage/switcher.js"></script>

<section id="style-switcher">
	<h2>选择样式 <a href="#"></a></h2>
	<div>
	<h3>预定颜色</h3>
		<ul class="colors" id="color1">
			<li><a href="#" class="blue" title="Blue"></a></li>
			<li><a href="#" class="green" title="Green"></a></li>
			<li><a href="#" class="orange" title="Orange"></a></li>
			<li><a href="#" class="navy" title="Navy"></a></li>
			<li><a href="#" class="yellow" title="Yellow"></a></li>
			<li><a href="#" class="peach" title="Peach"></a></li>
			<li><a href="#" class="beige" title="Beige"></a></li>
			<li><a href="#" class="purple" title="Purple"></a></li>
			<li><a href="#" class="red" title="Red"></a></li>
			<li><a href="#" class="pink" title="Pink"></a></li>
			<li><a href="#" class="celadon" title="Celadon"></a></li>
			<li><a href="#" class="brown" title="Brown"></a></li>
			<li><a href="#" class="cherry" title="Cherry"></a></li>
			<li><a href="#" class="gray" title="Gray"></a></li>
			<li><a href="#" class="dark" title="Dark"></a></li>
			<li><a href="#" class="cyan" title="Cyan"></a></li>
			<li><a href="#" class="olive" title="Olive"></a></li>
			<li><a href="#" class="dirty-green" title="Dirty Green"></a></li>
		</ul>
		
	<h3>菜单款式</h3>
	<select id="menu-style">
		<option value="1">3D特效</option>
		<option value="2">极简风格</option>
	</select>

	<h3>背景图片</h3>
		 <ul class="colors bg" id="bg">
			<li><a href="#" class="bg1"></a></li>
			<li><a href="#" class="bg2"></a></li>
			<li><a href="#" class="bg3"></a></li>
			<li><a href="#" class="bg4"></a></li>
			<li><a href="#" class="bg5"></a></li>
			<li><a href="#" class="bg6"></a></li>
			<li><a href="#" class="bg7"></a></li>
			<li><a href="#" class="bg8"></a></li>
			<li><a href="#" class="bg9"></a></li>
			<li><a href="#" class="bg10"></a></li>
			<li><a href="#" class="bg11"></a></li>
			<li><a href="#" class="bg12"></a></li>
			<li><a href="#" class="bg13"></a></li>
			<li><a href="#" class="bg14"></a></li>
			<li><a href="#" class="bg15"></a></li>
			<li><a href="#" class="bg16"></a></li>
			<li><a href="#" class="bg17"></a></li>
			<li><a href="#" class="bg18"></a></li>
		</ul>
	</div>

	<div id="reset"><a href="#" class="button color blue">重置</a></div>

</section>
<!-- Style Switcher / End -->


</body>
</html>