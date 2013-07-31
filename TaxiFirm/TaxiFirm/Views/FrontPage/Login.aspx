﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Expand, contract, animate forms with jQuery wihtout leaving the page" />
        <meta name="keywords" content="expand, form, css3, jquery, animate, width, height, adapt, unobtrusive javascript"/>
		<link rel="shortcut icon" href="../../Content/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css" href="../../Content/css/FrontPage/login-style.css" />
		<script src="../../Scripts/FrontPage/cufon-yui.js" type="text/javascript"></script>
		<script src="../../Scripts/FrontPage/ChunkFive_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
		    Cufon.replace('h1', { textShadow: '1px 1px #fff' });
		    Cufon.replace('h2', { textShadow: '1px 1px #fff' });
		    Cufon.replace('h3', { textShadow: '1px 1px #000' });
		    Cufon.replace('.back');

		    function Submit() {
		        var form1 = document.getElementById("login_form");
		        form1.submit();  

		    }
		    function mySubmit() {
		        var psword1 = document.getElementById("ps1").value;
		        var psword2 = document.getElementById("ps2").value;
		        if (psword1.length < 6) { window.alert("密码长度应大于6"); return; }
		        if (psword1 != psword2) {window.alert("两次密码不一致");return; }
		        var form1 = document.getElementById("register");
		        form1.submit();
            }
		</script>
    </head>
    <body>
		<div class="wrapper">
			<h1></h1>
			<h2></h2>
			<div class="content">
				<div id="form_wrapper" class="form_wrapper">
					<form class="register" id="register" method="post" action="/FrontPage/RegisterHandle">
						<h3>注册</h3>
						<div class="column">
							<div>
								<label>昵称:</label>
								<input name="NickName" type="text" />
								<span class="error" pattern="[\u4e00-\u9fa5]{1,2}" title="输入汉字">需要输入汉字</span>
							</div>
						
							<div>
								<label>密码:</label>
								<input  name="Password" type="password" id="ps1"/>
								<span class="error">This is an error</span>
							</div>
						</div>
						<div class="column">
							<div>
								<label>Email:</label>
								<input name="email" type="text"/> 
								<span class="error">This is an error</span>
							</div>
						
							<div>
								<label>确认密码:</label>
								<input name="Password2"  id="ps2" type="password"/>
								<span class="error">密码输入错误</span>
							</div>
						</div>
						<div class="bottom">
							<input type="submit"  onclick="mySubmit()" value="注册" />
							<a  rel="login" class="linkform">已有账户？在这登录</a>
							<div class="clear"></div>
						</div>
					</form>

					<form class="login active" id="login_form" action="/FrontPage/CustomerLoginHandle" method="post">
						<h3>用户登录</h3>
						<div>
							<label>用户名:</label>
							<input type="text" name="username"/>
							<span class="error">用户名错误</span>
						</div>
						<div>
							<label>密码: <a href="forgot_password.html" rel="forgot_password" class="forgot linkform"></a></label>
							<input type="password" name="psword"/>
							<span class="error">密码错误</span>
						</div>
						<div class="bottom">
							<div class="remember"><input type="checkbox" /><span>保持登录</span></div>
							<input type="submit"  value="登录" onclick="Submit()"></input>
							<a href="#" rel="register" class="linkform">还没账户？在这里注册</a>
							<div class="clear"></div>
						</div>
					</form>

					<form class="forgot_password">
						<h3>Forgot Password</h3>
						<div>
							<label>Username or Email:</label>
							<input type="text" />
							<span class="error">This is an error</span>
						</div>
						<div class="bottom">
							<input type="submit" value="Send reminder"></input>
							<a href="/FrontPage/Index" rel="login" class="linkform">Suddenly remebered? Log in here</a>
							<a  rel="register" class="linkform">You don't have an account? Register here</a>
							<div class="clear"></div>
						</div>
					</form>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		

		<!-- The JavaScript -->
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript">
		    $(function () {
		        //the form wrapper (includes all forms)
		        var $form_wrapper = $('#form_wrapper'),
		        //the current form is the one with class active
					$currentForm = $form_wrapper.children('form.active'),
		        //the change form links
					$linkform = $form_wrapper.find('.linkform');

		        //get width and height of each form and store them for later						
		        $form_wrapper.children('form').each(function (i) {
		            var $theForm = $(this);
		            //solve the inline display none problem when using fadeIn fadeOut
		            if (!$theForm.hasClass('active'))
		                $theForm.hide();
		            $theForm.data({
		                width: $theForm.width(),
		                height: $theForm.height()
		            });
		        });

		        //set width and height of wrapper (same of current form)
		        setWrapperWidth();

		        /*
		        clicking a link (change form event) in the form
		        makes the current form hide.
		        The wrapper animates its width and height to the 
		        width and height of the new current form.
		        After the animation, the new form is shown
		        */
		        $linkform.bind('click', function (e) {
		            var $link = $(this);
		            var target = $link.attr('rel');
		            $currentForm.fadeOut(400, function () {
		                //remove class active from current form
		                $currentForm.removeClass('active');
		                //new current form
		                $currentForm = $form_wrapper.children('form.' + target);
		                //animate the wrapper
		                $form_wrapper.stop()
									 .animate({
									     width: $currentForm.data('width') + 'px',
									     height: $currentForm.data('height') + 'px'
									 }, 500, function () {
									     //new form gets class active
									     $currentForm.addClass('active');
									     //show the new form
									     $currentForm.fadeIn(400);
									 });
		            });
		            e.preventDefault();
		        });

		        function setWrapperWidth() {
		            $form_wrapper.css({
		                width: $currentForm.data('width') + 'px',
		                height: $currentForm.data('height') + 'px'
		            });
		        }

		        /*
		        for the demo we disabled the submit buttons
		        if you submit the form, you need to check the 
		        which form was submited, and give the class active 
		        to the form you want to show
		        */
		        $form_wrapper.find('input[type="submit"]')
							 .click(function (e) {
							     e.preventDefault();
							 });
		    });
        </script>
    </body>
    <%
        if (Session["AddCustomerSuccess"] != null)
        {
            string success = (string)Session["AddCustomerSuccess"];
            if ("success".Equals(success))  //删除才成功
            {%>
            
            
            <script type="text/javascript">
                window.alert("注册成功");
            
            </script>
            <%

            }
            else if ("failed".Equals(success))
            { %>
            
            
            <script type="text/javascript">
                window.alert("注册失败");
            
            </script>
            <%
            
            
            
            
}
            else if ("EmailError".Equals(success))
            {%>
            
             <script type="text/javascript">
                 window.alert("该email已经注册,注册失败");
            
            </script>
            <%}

                Session.Remove("AddCustomerSuccess");
        }
        
         %>
</html>
