<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Animated Form Switching with jQuery</title>
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
		        if (psword1 != psword2) { window.alert("两次密码不一致"); return; }
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
					<form class="login active" id="login_form" action="/FrontPage/ChangePasswordHandle" method="post">
						<h3>用户登录</h3>
						<div>
							<label>用户名:</label>
							<input type="text" name="username"/>
							<span class="error">用户名错误</span>
						</div>
						<div>
							<label>密码: <a   class="forgot linkform"></a></label>
							<input type="password" name="psword"/>
							
						</div>
                        <div>
							<label>新密码: <a id="ps1" rel="forgot_password" class="forgot linkform"></a></label>
							<input type="password" name="psword1"/>
							
						</div>
                         <div>
							<label>确认密码: <a  id="ps2" rel="forgot_password" class="forgot linkform"></a></label>
							<input type="password" name="psword2"/>
							
						</div>
						<div class="bottom">
							<div class="remember"><input type="checkbox" /><span>保持登录</span></div>
							<input type="submit"  value="确认" onclick="mySubmit()"></input>
							<a href="#" rel="register" class="linkform">还没账户？在这里注册</a>
							<div class="clear"></div>
						</div>
					</form>

				</div>
                </div>
                </div>
				<div class="clear"></div>
			</div>
		</div>
</body>
</html>
