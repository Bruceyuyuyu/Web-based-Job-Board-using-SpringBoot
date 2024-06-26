<!--职位详情ftl-->
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="/home/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Company introduction - Lagao - the most professional Internet recruitment platform</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link rel="stylesheet" type="text/css" href="/home/style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/home/style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="/home/style/css/popup.css"/>
<script src="/home/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/home/style/js/jquery.lib.min.js"></script>
<script src="/home/style/js/jquery-hbzx.js" type="text/javascript"></script>
<script src="/home/style/js/additional-methods.js" type="text/javascript"></script>
<script src="/home/style/js/setting.js"></script>
<script src="/home/common/confirm_null.js"></script>
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="/home/style/js/conv.js"></script>
</head>
<body>
<div id="body">
	<#include "../common/top_menu.ftl"/>
    <div id="container">
                <div class="clearfix">
            <div class="content_l">
                <dl class="job_detail">
                    <dt>
                        <h1 title="${Position.name!""}">
                            <em></em>
                           	${Position.name!""}
                        </h1>
                	</dt>
                    <dd class="job_request">
                    	<span class="red">${Position.minMoney!""}k-${Position.maxMoney!""}k</span>
                    	<span>${Position.city!""}</span>
                    	<span>${Position.workExperience!""}</span>
                    	<span>${Position.degree!""}</span>
                    	<span>${Position.workType!""}</span><br>
                        Position temptation : ${Position.advantage!""}
                      	<div>Release time： ${Position.createTime!""}</div>
                    </dd>
                  	<dd class="job_bt">
                        <h3 class="description">Company Description</h3>
                       	${Position.description!""}
                    </dd>
                	
					<dd>
						<#if user??>
							<#if user.type == 0>
                				<a href="javascript:void(0);" title="Submit a resume" class="btn fr btn_apply" onclick="submitResume('${Position.id}');">Submit a resume</a>
                			</#if>
                		<#else>
                			<a href="javascript:void(0);" title="Submit a resume" class="btn fr btn_apply" onclick="submitResume('${Position.id}');">Submit a resume</a>
                		</#if>
	                </dd>
                </dl>
            		<div id="weibolist"></div>
            </div>	
            <div class="content_r">
                <dl class="job_company">
                    <dt>
                            <img class="b2" src="/photo/view?filename=${Company.photo!"common/product_default.png"}" width="80" height="80" alt="Beijing Cube Network Information Technology Co., Ltd" />
                            <div>
                                <h2 class="fl">
                              			${Company.name!""}
                                	<img src="/home/style/images/valid.png" width="15" height="19" title="Lago certified enterprise" />
                                	
                                </h2>
                            </div>
                    </dt>
                    <dd>
                    	<ul class="c_feature reset">
                        	<li><span>field</span>${Company.territory!""}</li>
                        	<li><span>scale</span>${Company.scale!""}</li>
                        	<li>
                        		<span>homepage</span>
       							<a href="javascript:void(0);" title="${Company.url!""}" rel="nofollow">${Company.url!""}</a>
                        	</li>
                        </ul>
                        
                        <h4>Financing stage</h4>
                        <ul class="c_feature reset">
                        	<li><span>At present stage</span>${Company.finance!""}</li>
                        </ul>
                       	<h4>Work address</h4>
                       	<div>${Company.locale!""}</div>
                       	
                       	<h4>founder</h4>
                       	 <ul class="c_feature reset">
                        	<li><span>name</span>${Company.founderName!""}</li>
                        	<li><span>position</span>${Company.founderPosition!""}</li>
                        	<li><span>photo</span><img src="/photo/view?filename=${Company.founderPhoto!""}" width="80" height="80"></li>
                        </ul>
                       	
                       	
                     
                    </dd>
                </dl>
                	<a href="javascript:void(0);" class="eventAd">

            		</a>
            </div>
       	</div>                    
      <input type="hidden" value="" name="userid" id="userid" />
      <input type="hidden" value="" name="type" id="resend_type" />
      <input type="hidden" value="140204"  id="jobid" />
      <input type="hidden" value="683"  id="companyid" />
      <input type="hidden" value="" id="positionLng" />
      <input type="hidden" value="" id="positionLat" />
	
		
		<div id="tipOverlay" ></div>
<#include "../common/alert.ftl"/>
<!-------------------------------------弹窗lightbox  ----------------------------------------->

   
<!------------------------------------- end ----------------------------------------->

<script type="text/javascript" src="/home/style/js/job_detail.js"></script>
<script type="text/javascript" src="/home/style/js/count.js"></script>


<script src="/home/style/js/common.js" type="text/javascript"></script>


<script type="text/javascript">
	function submitResume(i){
	
		$.ajax({
			url:'/home/resume/submit_resume',
			dataType:'json',
			type:'post',
			data:{id:i},
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("Delivery successful！└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				}else{
						$("#errorMsg").html("Delivery failed，"+data.msg+"(ㄒoㄒ)");
						$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
					}
			}
		});
		
	}
</script>
<#include "../common/footer.ftl"/>	
<script type="text/javascript" src="/home/style/js/core.min.js"></script>
<script type="text/javascript" src="/home/style/js/popup.min.js"></script>

<!--  -->

</body>
</html>