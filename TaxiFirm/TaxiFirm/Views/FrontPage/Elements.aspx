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
<link rel="stylesheet" href="../../Content/css/FrontPage/style.css">
<link rel="stylesheet" href="../../Content/css/FrontPage/colors/blue.css" id="colors">
<link rel="shortcut icon" href="../../Content/favicon.ico" type="image/x-icon" />
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Java Script
================================================== -->
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

		<h2>Shortcodes <span>/ Elements</span></h2>

		<nav id="breadcrumbs">
			<ul>
				<li>你在:</li>
				<li><a href="/FrontPage/Index">主页</a></li>
				<li>Elements</li>
			</ul>
		</nav>

	</div>

</div>
<!-- 960 Container / End -->


<!-- Page Content -->
<div class="page-content">


	<!-- 960 Container -->
	<div class="container">

	<!-- Buttons
	================================================== -->

		<div class="eight columns">

			<!-- Headline -->
			<h3 class="margin-reset">Buttons</h3><br />

			<a href="#" class="button gray">Button</a>&nbsp;
			<a href="#" class="button color">Button</a>&nbsp;
			<a href="#" class="button light">Button</a>

			<div class="clearfix" style="margin: 6px 0 0 0;"></div>

			<a href="#" class="button gray medium"><i class="icon-folder-open white"></i> Button</a>&nbsp;
			<a href="#" class="button color medium"><i class="icon-beaker white"></i> Button</a>&nbsp;
			<a href="#" class="button light medium"><i class="halflings user white"></i> Button</a>&nbsp;

			<div class="clearfix"></div>
			<br />
			<br />

		</div>


	<!-- Tabs
	================================================== -->

		<div class="eight columns">

			<!-- Headline -->
			<h3 class="margin-reset">Tabs</h3><br />

			<!-- Tabs Navigation -->
			<ul class="tabs-nav">
				<li class="active"><a href="#tab1">First Tab</a></li>
				<li><a href="#tab2">Second</a></li>
				<li><a href="#tab3">Third</a></li>
			</ul>

			<!-- Tabs Content -->
			<div class="tabs-container">
				<div class="tab-content" id="tab1">1. Lorem ipsum pharetra lorem felis. Aliquam egestas consectetur elementum class aptentea taciti sociosqu ad litora torquent perea conubia nostra lorem consectetur adipiscing elit.</div>
				<div class="tab-content" id="tab2">2. Lorem ipsum pharetra lorem felis. Aliquam egestas consectetur elementum class aptentea taciti sociosqu ad litora torquent perea conubia nostra lorem consectetur adipiscing elit.</div>
				<div class="tab-content" id="tab3">3. Lorem ipsum pharetra lorem felis. Aliquam egestas consectetur elementum class aptentea taciti sociosqu ad litora torquent perea conubia nostra lorem consectetur adipiscing elit.</div>
			</div>

		</div>

	</div>
	<!-- 960 Container / End -->


	<!-- Divider -->
	<div class="line" style="margin-top: 25px; margin-bottom: 40px;"></div>


	<!-- 960 Container -->
	<div class="container">


	<!-- Large Notice
	================================================== -->

		<div class="eight columns">
			
			<!-- Headline -->
			<h3 class="margin-reset">Large Notice</h3><br />

			<!-- Large Notice -->
			<div class="large-notice">
				<h2>This is a Headline</h2>
				<p>This is example of style component for calling extra attention to featured content or information.</p>
				<a href="#" class="button medium color">Read More</a>
			</div>

		<br /><br />

		</div>


	<!-- Accordions
	================================================== -->

		<div class="eight columns">

			<!-- Headline -->
			<h3 class="margin-reset">Accordions</h3><br />

			<!-- Accordion -->
			<ul id="accordion">

				<!-- Section 1 -->
				<h3>Web Development</h3>
				<div>
					<p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate aliquam egestas litora torquent conubia.</p>
				</div>

				<!-- Section 2 -->
				<h3>Top Notch Support</h3>
				<div>
					<p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. Nullam laoreet, velit ut condimentum feugiat.</p>
				</div>

				<!-- Section 3 -->
				<h3>Social Marketing</h3>
				<div>
					<p>Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper.</p>
					<br />
					<ul class="check-list">
						<li>Compatible with the latest W3C standards</li>
						<li>Flexible, Responsive Layout</li>
						<li>Compatible with Major Browsers</li>
						<li>Attuned to Smartphones and Tablet PCs</li>
					</ul>
				</div>
			</div>
			<!-- Accordion / End -->

		</div>

	</div>
	<!-- 960 Container / End -->


	<!-- Divider -->
	<div class="line" style="margin-top: 0px; margin-bottom: 40px;"></div>


	<!-- 960 Container -->
	<div class="container">

	<!-- Progress Bars
	================================================== -->

		<div class="eight columns">

			<!-- Headline -->
			<h3 class="margin-reset">Progress Bars</h3><br />
		
			<!-- Progress Bars -->
			<div id="skill-bars">
				<div class="skill-bar"><div class="skill-bar-content" data-percentage="80"></div><span class="skill-title">Web Design 80%</span></div>
				<div class="skill-bar"><div class="skill-bar-content" data-percentage="90"></div><span class="skill-title">HTML / CSS 90%</span></div>
				<div class="skill-bar"><div class="skill-bar-content" data-percentage="85"></div><span class="skill-title">WordPress 85%</span></div>
				<div class="skill-bar"><div class="skill-bar-content" data-percentage="70"></div><span class="skill-title">jQuery 70%</span></div>
				<div class="skill-bar"><div class="skill-bar-content" data-percentage="75"></div><span class="skill-title">SEO 75%</span></div>
			</div>

		</div>


	<!-- Alert Boxes
	================================================== -->

		<div class="eight columns">

			<!-- Headline -->
			<h3 class="margin-reset">Alert Boxes</h3><br />


			<div class="notification error closeable">
				<p><span>Error!</span> Please fill in all the fields required.</p>
			</div>

			<div class="notification success closeable">
				<p><span>Success!</span> You did it, now relax and enjoy it.</p>
			</div>

			<div class="notification warning closeable">
				<p><span>Warning!</span> Change this and that and try again.</p>
			</div>

			<div class="notification notice closeable">
				<p><span>Notice!</span> Please edit the information below.</p>
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
			<h3 class="margin-reset">Client List</h3><br />

			<ul class="client-list">
				<li><img src="../../Content/picture/FrontPage/logo-01.png" alt=""/></li>
				<li><img src="../../Content/picture/FrontPage/logo-01.png" alt=""/></li>
				<li><img src="../../Content/picture/FrontPage/logo-01.png" alt=""/></li>
				<li><img src="../../Content/picture/FrontPage/logo-01.png" alt=""/></li>
				<li><img src="../../Content/picture/FrontPage/logo-01.png" alt=""/></li>
			</ul>
		</div>

	</div>
	<!-- 960 Container / End -->


	<div class="line" style="margin-top: 40px; margin-bottom: 40px;"></div>


	<!-- 960 Container -->
	<div class="container">

	<!-- Regular Table
	================================================== -->

		<div class="sixteen columns">
			<!-- Headline -->
			<h3 class="margin-reset">Regular Table</h3><br />

			<table class="standard-table">

				<tr>
					<th>Header 1</th>
					<th>Header 2</th>
					<th>Header 3</th>
					<th>Header 4</th>
				</tr>

				<tr>
					<td>Item #1</td>
					<td>Description</td>
					<td>100 GB</td>
					<td>100 GB</td>
				</tr>

				<tr>
					<td>Item #2</td>
					<td>Description</td>
					<td>200 GB</td>
					<td>200 GB</td>
				</tr>

				<tr>
					<td>Item #3</td>
					<td>Description</td>
					<td>300 GB</td>
					<td>300 GB</td>
				</tr>

				<tr>
					<td>Item #4</td>
					<td>Description</td>
					<td>400 GB</td>
					<td>400 GB</td>
				</tr>

				<tr>
					<td>Item #5</td>
					<td>Description</td>
					<td>500 GB</td>
					<td>500 GB</td>
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