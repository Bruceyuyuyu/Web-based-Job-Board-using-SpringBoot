<!--注册页面ftl -->
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8" src="/home/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Registration - Lagao - the most professional Internet recruitment platform</title>
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
<script src="/home/style/js/core.min.js" type="text/javascript"></script>
<script src="/home/style/js/popup.min.js" type="text/javascript"></script>

<script type="text/javascript">
var youdao_conv_id = 271546;
</script>
<script type="text/javascript" src="/home/style/js/conv.js"></script>
<script src="/home/common/confirm_null.js"></script>
</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">

        </div>

    	<input type="hidden" id="resubmitToken" value="9b207beb1e014a93bc852b7ba450db27" />
		<div class="login_box">
        	<form id="loginForm">
        		<ul class="register_radio clearfix">
		            <li>
						Job search
		              	<input type="radio" value="0" id="type0" name="type" />
		            </li>
		            <li>
						Recruit talents
		              	<input type="radio" value="1" id="type1" name="type" />
		            </li>
		        </ul>
		        <span for="type" generated="true" class="error" id="error_type" style="display:none">Please check the purpose of registering on Lago Net</span>
            	<input type="text" id="Email" name="Email" tabindex="1" class="require" placeholder="Please enter email address"  tips="Email address cannot be empty！"  attributes="error_email" />
            	<span for="email" generated="true" class="error" id="error_email" style="display:none">Please enter your email address</span>

                <input type="password" id="Password" name="Password" class="require" tabindex="2" placeholder="Please enter password"  tips="Password cannot be empty！" attributes="error_password"  />
                <span for="password" generated="true" class="error" id="error_password" style="display:none">Please enter password</span>

                <input type="text" id="username" name="username" class="require" tabindex="3" placeholder="Please enter your nickname"   tips="Nickname cannot be empty！" attributes="error_username" />
                <span for="username" generated="true" class="error" id="error_username" style="display:none">Please enter your nickname</span>


                <input type="button" id="submitLogin" value="Sign in" />

            </form>
            <div class="login_right">
            	<div>Existing account</div>
            	<a  href="/home/system/login"  class="registor_now">Direct login</a>
            </div>
        </div>
        <div class="login_box_btm"></div>
    </div>

<#include "../common/alert.ftl"/>

<script type="text/javascript">

	//勾选目的为上次默认选择
	window.onload = function(){
		var type =$('input[type="radio"]:checked',loginForm).val();
		if(type == 0)
			$("#type0").click();
		else if(type == 1)
			$("#type1").click();
 　　	}

 	var send = true;



      //注册表单提交
      $("#submitLogin").click(function() {
         	var type =$('input[type="radio"]:checked',loginForm).val();
			$('#error_type').css('display','none');
			$('#error_email').css('display','none');
			$('#error_password').css('display','none');
			$('#error_username').css('display','none');
			$('#error_cpacha').css('display','none');

			//进行统一表单非空验证
			if(!checkForm('loginForm'))
			{
				return;
			}

        	var data = $("#loginForm").serialize();
       		$.ajax({
				url:'/home/system/register',
				dataType:'json',
				type:'post',
				data:data,
				success:function(data){
					if(data.code == 0){
						$("#successMsg").html("login was successful！Quickly log in and experience the hook network speaker！└(^o^)┘");
						$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
					}else{
						switch(data.code){
							case -1010:
								$('#error_type').css('display','block');
								$("#errorMsg").html("login has failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -3:
            					$('#error_cpacha').css('display','block');
            					$("#errorMsg").html("login has failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -1000:
            					$('#error_username').css('display','block');
            					$("#errorMsg").html("login has failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -1001:
            					$('#error_password').css('display','block');
            					$("#errorMsg").html("login has failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -1006:
            					$('#error_email').css('display','block');
            					$("#errorMsg").html("login has failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				default:
            					$("#errorMsg").html("login has failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
						}
					}
				}
			});

       })





</script>
</body>
</html>
