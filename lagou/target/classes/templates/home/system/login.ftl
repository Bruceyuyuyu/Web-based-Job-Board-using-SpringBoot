<!--登录页面ftl -->
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8" src="/home/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login - Recruitment platform</title>
	<meta property="qc:admins" content="23635710066417756375" />
	<meta content="LaGou.com is a vertical recruitment website in the Internet field under 3W, and Internet career opportunities are all in LaGou.com" name="description">
	<meta content="LaGou, LaGou, LaGou recruitment, LaGou, LaGou, Internet recruitment, LaGou Internet recruitment, mobile Internet recruitment, vertical Internet recruitment, WeChat recruitment, microblog recruitment, LaGou official website, LaGou encyclopedia, job hopping, high paid positions, Internet circles, IT recruitment, workplace recruitment, headhunting recruitment, O2O recruitment, LBS recruitment, social recruitment, campus recruitment, school recruitment, social recruitment, social recruitment" name="keywords">

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link rel="stylesheet" type="text/css" href="/home/style/css/style.css"/>
<link href="/home/style/css/popup.css" type="text/css" rel="stylesheet">
<link href="/home/style/css/external.min.css" type="text/css" rel="stylesheet">

<script src="/home/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="/home/style/js/jquery.lib.min.js"></script>
<script src="/home/style/js/setting.js"></script>
<script type="text/javascript" src="/home/style/js/core.min.js"></script>
<script src="/home/style/js/popup.min.js" type="text/javascript"></script>


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="/home/style/js/conv.js"></script>
<script src="/home/common/confirm_null.js"></script>
</head>

<body id="login_bg" style="background: #019875">
	<div class="login_wrapper">

        
		 <div class="login_box">
        	<form id="loginForm">
				<input type="text" id="Email" name="Email" value="" tabindex="1" class="require" placeholder="Please enter the login email address"  tips="Email address cannot be empty！"  attributes="error_email" />
				<span for="email" generated="true" class="error" id="error_email"  style="display:none">Please enter the login email address</span>
				
			  	<input type="password" id="Password" name="Password" tabindex="2" class="require" placeholder="Please enter password"  tips="Password cannot be empty！"  attributes="error_password" /  >
			  	<span for="password" generated="true" class="error" id="error_password" style="display:none">Please enter password</span>
			  	 
			  	<input type="text" id="cpacha" name="cpacha" tabindex="3" class="require" placeholder="Verification code"  tips="The verification code cannot be empty！"  attributes="error_cpacha" />
			  	<img id="cpacha-img" title="Click to switch the verification code" style="cursor:pointer;margin-bottom: -13px;" src="/common/cpacha/generate_cpacha?vl=4&fs=21&w=98&h=33&method=user_login" width="110px" height="40px" onclick="changeCpacha()">
			  	<span for="cpacha" generated="true" class="error" id="error_cpacha" style="display:none">Please enter the verification code</span>
			  	
				<a style="color:#fff;" href="javascript:void(0);" onClick="submitLogin();" class="submitLogin" title="登 &nbsp; &nbsp; 录"/>Login</a>

			</form>
			<div class="login_right">
				<div>No account?</div>
				<a  href="/home/system/register"  class="registor_now">Register Now</a>
			</div>
        </div>
        <div class="login_box_btm"></div>
    </div>

<#include "../common/alert.ftl"/>
<script type="text/javascript">
	function changeCpacha(){
		$("#cpacha-img").attr("src",'/common/cpacha/generate_cpacha??vl=4&fs=21&w=98&h=33&method=user_login&t=' + new Date().getTime());
	}
	function submitLogin()
	{
			$('#error_email').css('display','none');
			$('#error_password').css('display','none');
			$('#error_cpacha').css('display','none');
			//进行统一表单验证
			if(!checkForm('loginForm'))
			{
				return;
			}
			var password = $("#Password").val();
			var email = $("#Email").val();
			var cpacha = $("#cpacha").val();
			
         	$.ajax({
				url:'/home/system/login',
				dataType:'json',
				type:'post',
				data:{email:email,password:password,cpacha:cpacha},
				success:function(data){
					if(data.code == 0){
						window.location.href = "/home/index/index";
					}else{
						switch(data.code){
            				case -3:
            					$('#error_cpacha').css('display','block');
            					$("#errorMsg").html("Login failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -1001:
            					$('#error_password').css('display','block');
            					$("#errorMsg").html("Login failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -1006:
            					$('#error_email').css('display','block');
            					$("#errorMsg").html("Login failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				default:
            					changeCpacha()
            					$("#errorMsg").html("Login failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
						}
					}
				}
			});
       
		
	}
	
	
</script>
</body>
</html>