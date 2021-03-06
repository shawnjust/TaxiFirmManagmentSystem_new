﻿    <%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="TaxiFirm.Models.News" %>
<%@ Import Namespace="TaxiFirm.Models" %>
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
========================================= ========= -->
 
<link rel="stylesheet" type="text/css" href="../../Content/css/FrontPage/style.css">
<link rel="stylesheet" type="text/css" href="../../Content/css/FrontPage/icons.css">
<link rel="stylesheet" type="text/css" href="../../Content/css/FrontPage/colors/blue.css" id="colors">
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
<%  
    List<News> newses = (List<News>)ViewData["newses"];
    NewsHandle handler = new NewsHandle();
     %>
<body>

<!-- Wrapper / Start -->
<div id="wrapper">

<!-- Header
================================================== -->
<div id="top-line"></div>
<%Identity current = Identity.unlegal;
  if (Session["Identity"] != null)
  {
      current=(Identity)Session["Identity"]; 
  }%>
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
	

			<div class="clearfix">
			  <table width="100%" border="0" cellspacing="0" cellpadding="0">
			    <tr>
			      <td width="63%">&nbsp;</td>
			      <td width="37%" align="right"><a href="/Home/Login">我的TaxiServer</a></td>
		        </tr>
		      </table>
		  </div>
			<br/>
            <br/>
			<!-- Contact Details -->
			<div class="contact-details">联系电话: +86 131 6293 7287</div>

			<div class="clearfix"></div>

			<!-- Search -->
			<nav class="top-search">
              <%if(current==Identity.unlegal){ %>
                <a class="button color medium" href="/FrontPage/Login"  rel="register" >
                
                	<i class="icon-cloud white"></i>注册
                </a>
               
				<a class="button color medium" href="/FrontPage/Login">
                	<i class="icon-user white"></i>
                   登录
                     </a>
                    <%}
                   else if (current == Identity.manager)
                   { 
                       %> 
                     <a class="button color medium"   href="/Home/Index">
                	<i class="icon-user white"></i>后台
                     </a>
               
			
                   <a class="button color medium" href="/Home/BackHandle?type=logout">
                	<i class="icon-user white"></i>
                    注销
                     </a>
               <%}else if(current==Identity.custemer) {%>
                  <a class="button color medium"   href="/FrontPage/ChangerPassword">
                	<i class="icon-user white"></i>改密
                     </a>
               
			
                   <a class="button color medium" href="/Home/BackHandle?type=logout">
                	<i class="icon-user white"></i>
                    注销
                    </a>
               <%}%>
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

	<li><a href="/FrontPage/Index" id="current"><i class="halflings white home"></i> 主页</a></li>

	<li><a href="/FrontPage/News"><i class="halflings white file"></i> 新闻</a>
	</li>
	<li><a href="/FrontPage/Notification"><i class="halflings white bullhorn"></i> 通知</a>
    </li>
    <li><a href="/FrontPage/Complain"><i class="halflings white hdd"></i> 评价</a>
	</li>
	<li><a href="/FrontPage/Gallery"><i class="halflings white picture"></i> 画廊</a>
	</li>
	<li><a href="/FrontPage/Elements"><i class="halflings white road"></i> 其他</a>
	</li>
	<li><a href="/FrontPage/About"><i class="halflings white leaf"></i> 关于我们</a>
    </li>
</ul>
</nav>
<div class="clearfix"></div>


<!-- Content
=============	<li><a href="contact.html"><i class="halflings white envelope"></i> 联系我们</a>
  -->
<section id="layerslider-container">	
	<div id="layerslider" style="width: 1020px; height: 450px; margin: 0 auto;">
		
		<!-- Slide 1 -->
		<article class="ls-layer" style="slidedelay: 10000;">
			<img src="../../Content/picture/FrontPage/slide-01.jpg" class="ls-bg" alt="">
			<h3 class="ls-s1 caption-color" style="top: 357px; left: 756px; slidedirection: right; slideoutdirection: right; durationin: 400; durationout: 1000; easingin: easeOutExpo; delayin: 1000;">Taxi Firm Server助您成功</h3>
		</article>
		
		<!-- Slide 2 -->
		<article class="ls-layer" style="slidedelay: 10000; slidedirection: top;">
			<img src="../../Content/picture/FrontPage/slide-02.png" class="ls-bg">
			<img class="ls-s4" src="../../Content/picture/FrontPage/slide-02a.png" style="top: 50%; left: 260px; slidedirection: left; slideoutdirection: left; durationin: 800; durationout: 800; easingin : easeOutExpo; delayin : 1200;" alt=""/>
			<img class="ls-s4" src="../../Content/picture/FrontPage/slide-02b.png" style="top: 50%; left: 544px; slidedirection: right; slideoutdirection: right; durationin: 800; durationout: 800; easingin : easeOutExpo; delayin : 1200;" alt=""/>
			
			<img class="ls-s4" src="../../Content/picture/FrontPage/slide-02c.png" style="top: 230px; left: 494px; slidedirection: top; durationin: 800; durationout: 800; easingin : easeOutExpo; delayin : 1200;" alt=""/>
			
			<img class="ls-s2" src="../../Content/picture/FrontPage/slide-02d.png" style="top: 15px; left: -142px; slidedirection: left; slideoutdirection: left; durationin: 600; durationout: 1000; easingin: easeOutExpo; delayin: 1200;" alt=""/>
			<img class="ls-s2" src="../../Content/picture/FrontPage/slide-02e.png" style="top: 15px; left: 784px; slidedirection: right; slideoutdirection: right; durationin: 600; durationout: 1000; easingin: easeOutExpo; delayin: 1200;" alt=""/>
            <h3 class="ls-s1 caption-transparent" style="top: 357px; left: 40px;">HTML5和CSS3协力创作</h3>
		</article>
		
		<!-- Slide 3 -->
		<article class="ls-layer" style="slidedelay: 7000;">
			<img src="../../Content/picture/FrontPage/slide-03.jpg" class="ls-bg" alt="">
			<h3 class="ls-s1 caption-transparent" style="top: 357px; left: 40px;">完美的出租车信息化解决方案</h3>
		</article>

	</div>					
</section>
<!-- LayerSlider / End -->


<!-- 960 Container -->
<div class="container">

	<!-- Icon Boxes -->
	<section class="icon-box-container">

		<!-- Icon Box Start -->
		<div class="one-third column">
			<article class="icon-box">
				<i class="icon-bullhorn"></i>
				<h3>简洁的设计</h3>
				<p>Taxi Firm Server秉承着极简设计思想，为您的公司打造一个方便简洁的门户网站</p>
			</article>
		</div>
		<!-- Icon Box End -->

		<!-- Icon Box Start -->
		<div class="one-third column">
			<article class="icon-box">
				<i class="icon-magic"></i>
				<h3>完善的功能</h3>
				<p>我们致力于打造一个功能完善的前台主页信息系统，为公司提供各种交互接口 </p>
			</article>
		</div>
		<!-- Icon Box End -->

		<!-- Icon Box Start -->
		<div class="one-third column">
			<article class="icon-box">
				<i class="icon-beaker"></i>
				<h3>强大的后台</h3>
				<p>在登录后台后，可以对包括用户管理，新闻管理，司机和车辆管理以及交易</p>
			</article>
		</div>
		<!-- Icon Box End -->

	</section>
	<!-- Icon Boxes / End -->

</div>
<!-- 960 Container / End -->


<!-- 960 Container -->
<div class="container floated">
	<div class="blank floated">

		<!-- Recent Work Entire -->
		<div class="four columns carousel-intro">

			<section class="entire">
				<h3>最近新闻</h3>
				<p>这里可以显示最近的新闻系统，具有翻页的功能</p>
			</section>

			<div class="carousel-navi">
				<div id="work-prev" class="arl jcarousel-prev"><i class="icon-chevron-left"></i></div>
				<div id="work-next" class="arr jcarousel-next"><i class="icon-chevron-right"></i></div>
			</div>
			<div class="clearfix"></div>

		</div>

		<!-- jCarousel -->
		<section class="jcarousel recent-work-jc">
			<ul>
            <%
        if (newses != null && newses.Count != 0)
        { %>
           <%

               for (int i = 0; i < newses.Count; i++)
               {
                   News news = newses[i];%>
				<!-- Recent Work Item -->
				<li class="four columns">
					<a href="NewsContent?NWID=<%:news.NewsId %>" class="portfolio-item">
						<figure>
							<img src="<%:news.picture_path %>" alt=""/>
							<figcaption class="item-description">
								<h5><%:handler.GetPartOfTitle(news.Title) %></h5>
								<span><%:news.author %></span>
							</figcaption>
						</figure>
					</a>
				</li>
              <%}
        } %>
				
			</ul>
		</section>
		<!-- jCarousel / End -->

	</div>
</div>
<!-- 960 Container / End -->


<!-- 960 Container -->
<div class="container">

	<!-- Recent News -->
	<div class="eight columns">
		
		<h3 class="margin-1">最近公告<span>/ 来自公告系统</span></h3>

		<div class="four columns alpha">
			<article class="recent-blog">
				<section class="date">
					<span class="day">28</span>
					<span class="month">Jun</span>
				</section>
				<h4><a href="#">出租车公司快倒闭了</a></h4>
				<p>最近发现出租车公司的管理很混乱 <span class="cut">都不想干了</span></p>
			</article>
		</div>
		
		<div class="four columns omega">
			<article class="recent-blog">
				<section class="date">
					<span class="day">15</span>
					<span class="month">Dec</span>
				</section>
				<h4><a href="#">全体员工明天开会</a></h4>
				<p>收那么高的费用，还不如早点用taxi firm server呢 <span class="cut">出租车管理系统</span></p>
			</article>
		</div>

	</div>

	<!-- Testimonials -->
	<div class="eight columns">

		<h3 class="margin-1">使用回馈 <span>/ 显示评论</span></h3>

		<!-- Testimonial Rotator -->
		<section class="flexslider testimonial-slider">
			<ul class="slides">
				<li class="testimonial">
					<div class="testimonials">我觉得TaxiFirm Server非常好用，界面简洁大方，而且功能强大，用过还想用，下次还来</div>
					<div class="testimonials-bg"></div>
					<div class="testimonials-author">程冉, <span>业务主管</span></div>
				</li>

				<li class="testimonial">
					<div class="testimonials">人们都说好的产品就要有一个好的设计师，这个设计师挺棒的，我喜欢这种简洁的界面和强大的功能</div>
					<div class="testimonials-bg"></div>
					<div class="testimonials-author">路捷, <span>副总裁</span></div>
				</li>

				<li class="testimonial">
					<div class="testimonials">公司的管理和销售业绩因为这个系统明显提升了不少，下次还用</div>
					<div class="testimonials-bg"></div>
					<div class="testimonials-author">方志晗, <span>总经理</span></div>
				</li>

				<li class="testimonial">
					<div class="testimonials">我提议让Taxi Firm Server推广到全球使用</div>
					<div class="testimonials-bg"></div>
					<div class="testimonials-author">奥巴马, <span>美国总统</span></div>
				</li>
			</ul>
		</section>
		<!-- Testomonial Rotator / End -->

	</div>

</div>
<!-- 960 Container / End -->

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
</body>
<!-- Style Switcher / End -->

<%
    if (Session["ChangeCustomerPassword"] != null)
    {
        string success = (string)Session["ChangeCustomerPassword"];
        if ("success".Equals(success))  //删除才成功
        {
          
          
            %>
            
              <script type="text/javascript">
                  window.alert("修改密码成功");
            
            </script>
           
            <%
             

    }
        else if ("failed".Equals(success))
        { %>
            
            
            <script type="text/javascript">
                window.alert("修改密码失败");
            
            </script>
            <%
            
           
    }
        else if ("PrePassword".Equals(success))
        {%>
             <script type="text/javascript">
                 window.alert("密码验证错误");
            
            </script>
            
           <% }
        else if ("NewPassword".Equals(success))
        {%>
              <script type="text/javascript">
                  window.alert("新密码不一致");
            
            </script>
                
            <%}

        Session.Remove("ChangeCustomerPassword");
       
     
    }%>

</html>
