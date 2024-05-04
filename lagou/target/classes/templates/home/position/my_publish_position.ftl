<!--招聘者发布的职位ftl-->
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
<script async="" src="/home/style/js/analytics.js"></script><script type="text/javascript" async="" src="/home/style/js/conversion.js"></script><script src="/home/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>The position I published - recruitment service - Lagao - the most professional Internet recruitment platform</title>
	<meta property="qc:admins" content="23635710066417756375" />
	<meta content="LaGou.com is a vertical recruitment website in the Internet field under 3W, and Internet career opportunities are all in LaGou.com" name="description">
	<meta content="LaGou, LaGou, LaGou recruitment, LaGou, LaGou, Internet recruitment, LaGou Internet recruitment, mobile Internet recruitment, vertical Internet recruitment, WeChat recruitment, microblog recruitment, LaGou official website, LaGou encyclopedia, job hopping, high paid positions, Internet circles, IT recruitment, workplace recruitment, headhunting recruitment, O2O recruitment, LBS recruitment, social recruitment, campus recruitment, school recruitment, social recruitment, social recruitment" name="keywords">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
var ctx = "http://www.lagou.com";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link href="/home/style/css/style.css" type="text/css" rel="stylesheet">
<link href="/home/style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="/home/style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="/home/style/js/jquery.1.10.1.min.js"></script>
<script src="/home/style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/home/style/js/ajaxfileupload.js"></script>
<script src="/home/style/js/additional-methods.js" type="text/javascript"></script>
<script src="/home/style/js/setting.js"></script>
<script src="/home/common/confirm_null.js"></script>
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="/home/style/js/conv.js" type="text/javascript"></script>
<script src="/home/style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<#include "../common/top_menu.ftl"/>
    <div id="container">
                	<div class="sidebar">
            	<a class="btn_create" href="/home/index/publish_position">Post a new position</a>
                <dl class="company_center_aside">
		<dt>The resume I received</dt>
	<dd>
		<a href="/home/resume/my_receive_resume?resumeState=wait">Pending resume</a>
	</dd>

	<dd>
		<a href="/home/resume/my_receive_resume?resumeState=effective">Notified interview resume</a>
	</dd>
	<dd class="btm">
		<a href="/home/resume/my_receive_resume?resumeState=out">Unsuitable resume</a>
	</dd>
	
</dl>
<dl class="company_center_aside">
	<dt>The position I posted</dt>
	<#if positionState??>
		<#if positionState == "effective">
			<dd class="current">
				<a href="/home/position/my_publish_position?positionState=effective">Effective position</a>
			</dd>
		<#else>
			<dd>
				<a href="/home/position/my_publish_position?positionState=effective">Effective position</a>
			</dd>
		</#if>
		<#if positionState == "wait">
			<dd class="current">
				<a href="/home/position/my_publish_position?positionState=wait">Position to be reviewed</a>
			</dd>
		<#else>
			<dd>
				<a href="/home/position/my_publish_position?positionState=wait">Position to be reviewed</a>
			</dd>
		</#if>
		<#if positionState == "out">
			<dd class="current">
				<a href="/home/position/my_publish_position?positionState=out">Offline position</a>
			</dd>
		<#else>
			<dd>
				<a href="/home/position/my_publish_position?positionState=out">Offline position</a>
			</dd>
		</#if>
	<#else>
		<dd class="current">
			<a href="/home/position/my_publish_position?positionState=effective">Effective position</a>
		</dd>
		<dd>
			<a href="/home/position/my_publish_position?positionState=wait">Position to be reviewed</a>
		</dd>
		<dd>
			<a href="/home/position/my_publish_position?positionState=out">Offline position</a>
		</dd>
	</#if>
	
	</dl>
    </div><!-- end .sidebar -->
            <div class="content">
            	<dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                            <#if positionState??>
                            	<#if positionState == "effective">
									Effective position
                            	</#if>
                            	<#if positionState == "wait">
									Position to be reviewed
                            	</#if>
                            	<#if positionState == "out">
									Offline position
                            	</#if>
                            <#else>
								Effective position
                            </#if>
                       		
                       		<span>（<i style="color:#fff;font-style:normal" id="positionNumber">${positionTotal!""}</i> in total）</span>                        </h1>
                    </dt>
                    <dd>
                		<form id="searchForm">
	                    		<input type="hidden" value="Publish" name="type">
			                	<ul class="reset my_jobs">
			                		<#if PositionList?size gt 0>
				 						<#list PositionList as position>
				 						
			                            	<li data-id="149594">
		                                    	<h3>
			                                        <a target="_blank" title="${position.name!""}" href="">${position.name!""}</a> 
			                                        <span>[${position.city!""}]</span>
		                                    	</h3>
		                                  		<span class="receivedResumeNo">Resume for applying for this position（${position.number!""}）</span>
			                                    <div>${position.workType!""}/ ${position.minMoney!""}k-${position.maxMoney!""}k / ${position.workExperience!""} / ${position.degree!""}</div>
			                                    <div class="c9">Release time： ${position.createTime!""}</div>
			                                    <div class="links">
			                                       	<a  href="/home/index/publish_position?id=${position.id!""}">edit</a>
			                                       	<#if positionState??>
				                                       	<#if positionState == "out">
				                                       		<a  href="javascript:void(0)" onclick="changeStateToWait('${position.id!""}')">Go live</a>
				                                       	<#else>
				                                       		<a  href="javascript:void(0)" onclick="changeStateToOut('${position.id!""}')">Offline</a>
				                                       	</#if>          
				                                    </#if>       
			                                        <a  href="javascript:void(0)" onclick="deletePosition('${position.id!""}')">delete</a>
			                                    </div>
			                                </li>
			                                
	                                	</#list>
	                                </#if>
	                           	</ul>
	                	</form>
               		</dd>
                </dl>
            </div><!-- end .content -->
<#include "../common/alert.ftl"/>
<script src="/home/style/js/job_list.min.js" type="text/javascript"></script> 
<#include "../common/footer.ftl"/>	

<script src="/home/style/js/core.min.js" type="text/javascript"></script>
<script src="/home/style/js/popup.min.js" type="text/javascript"></script>
<script src="/home/style/js/tongji.js" type="text/javascript"></script>
<!--  -->
<script src="/home/style/js/analytics01.js" type="text/javascript"></script><script type="text/javascript" src="/home/style/js/h.js"></script>
<script type="text/javascript">
//删除职位
function deletePosition(i){

	if(confirm("Are you sure you want to delete it? If deleted, the resume under this position will also be deleted")){
		$.ajax({
			url:'/home/position/delete',
			dataType:'json',
			type:'post',
			data:{id:i},
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("Position deleted successfully! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
					setTimeout(function(){  
							window.location.reload();//页面刷新
							},3000);
				}else{
						$("#errorMsg").html("Job deletion failed，"+data.msg+"(ㄒoㄒ)");
						$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
					}
			}
		});
	}
}
//把职位状态改为下线
function changeStateToOut(i){

	$.ajax({
			url:'/home/position/changeStateToOut',
			dataType:'json',
			type:'post',
			data:{id:i},
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("Offline successful! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
					setTimeout(function(){  
							window.location.reload();//页面刷新
							},3000);
				}else{
						$("#errorMsg").html("Offline failed，"+data.msg+"(ㄒoㄒ)");
						$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
					}
			}
		});
}

//把下线的职位状态更改为上线
function changeStateToWait(i){

	$.ajax({
			url:'/home/position/changeStateToWait',
			dataType:'json',
			type:'post',
			data:{id:i},
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("Successfully launched! But we need to wait for the administrator's approval! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"系统提示"});
					setTimeout(function(){  
							window.location.reload();//页面刷新
							},3000);
				}else{
						$("#errorMsg").html("Online failure，"+data.msg+"(ㄒoㄒ)");
						$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
					}
			}
		});

}

</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>