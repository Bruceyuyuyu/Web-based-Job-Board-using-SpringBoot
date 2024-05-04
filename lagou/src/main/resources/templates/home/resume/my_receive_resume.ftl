<!--招聘者收到的简历ftl-->
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="/home/style/js/conversion.js"></script><script src="/home/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Laguo - the most professional Internet recruitment platform</title>
	<meta property="qc:admins" content="23635710066417756375" />
	<meta content="LaGou.com is a vertical recruitment website in the Internet field under 3W, and Internet career opportunities are all in LaGou.com" name="description">
	<meta content="LaGou, LaGou, LaGou recruitment, LaGou, LaGou, Internet recruitment, LaGou Internet recruitment, mobile Internet recruitment, vertical Internet recruitment, WeChat recruitment, microblog recruitment, LaGou official website, LaGou encyclopedia, job hopping, high paid positions, Internet circles, IT recruitment, workplace recruitment, headhunting recruitment, O2O recruitment, LBS recruitment, social recruitment, campus recruitment, school recruitment, social recruitment, social recruitment" name="keywords">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

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
				<#if resumeState??>
					<#if resumeState == 'wait'>
						<dd  class="current">
							<a href="/home/resume/my_receive_resume?resumeState=wait">Pending resume</a>
						</dd>
					<#else>
						<dd>
							<a href="/home/resume/my_receive_resume?resumeState=wait">Pending resume</a>
						</dd>
					</#if>
					<#if resumeState == 'effective'>
						<dd  class="current">
							<a href="/home/resume/my_receive_resume?resumeState=effective">Notified interview resume</a>
						</dd>
					<#else>
						<dd>
							<a href="/home/resume/my_receive_resume?resumeState=effective">Notified interview resume</a>
						</dd>
					</#if>
					<#if resumeState == 'out'>
						<dd  class="current">
							<a href="/home/resume/my_receive_resume?resumeState=out">Unsuitable resume</a>
						</dd>
					<#else>
						<dd>
							<a href="/home/resume/my_receive_resume?resumeState=out">Unsuitable resume</a>
						</dd>
					</#if>
				<#else>
					<dd  class="current">
						<a href="/home/resume/my_receive_resume?resumeState=wait">Pending resume</a>
					</dd>
				
					<dd>
						<a href="/home/resume/my_receive_resume?resumeState=effective">Notified interview resume</a>
					</dd>
					<dd class="btm">
						<a href="/home/resume/my_receive_resume?resumeState=out">Unsuitable resume</a>
					</dd>
				</#if>
				
			</dl>
			<dl class="company_center_aside">
				<dt>The position I posted</dt>
				<dd>
					<a href="/home/position/my_publish_position?positionState=effective">Effective position</a>
				</dd>
				<dd>
					<a href="/home/position/my_publish_position?positionState=wait">Position to be reviewed</a>
				</dd>
				<dd>
					<a href="/home/position/my_publish_position?positionState=out">Offline position</a>
				</dd>
			</dl>
    	</div><!-- end .sidebar -->
    	
            <div class="content">
            	<dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                            <#if resumeState??>
                            	<#if resumeState == 'effective'>
									Interview resume has been notified  <span>（${resumeTotal!""} in total）</span>
                            	</#if>
                            	<#if resumeState == 'wait'>
									Pending resume  <span>（${resumeTotal!""} in total）</span>
                            	</#if>
                            	<#if resumeState == 'out'>
									Unsuitable resume  <span>（${resumeTotal!""} in total）</span>
                            	</#if>
                            <#else>
								Pending resume  <span>（${resumeTotal!""} in total ）</span>
                            </#if>
                			                    	
                		</h1>
                    </dt>
                    <dd>
                    	<form action="canInterviewResumes.html" method="get" id="filterForm">
		                        <ul class="reset resumeLists">
			                        <#if ResumeList?size gt 0>
				 						<#list ResumeList as resume>
		                        
			                            <li data-id="1686182" class="onlineResume">
			                                <div class="resumeShow">
		                                    	<img src="/photo/view?filename=${resume.user.headPic!""}">
		                                    <div class="resumeIntro">
		                                        <h3 class="unread">
		                                        	<a href="/home/resume/preview?user_id=${resume.user.id!""}" target="_blank">
			                                           ${resume.user.username!""}Resume
		                                        	</a>
		                                        </h3> 
			                                        <span class="fr">Delivery time：${resume.createTime!""}</span>
			                                        <div>
														name：${resume.user.username!""}/Gender：${resume.user.sex!""}/educational background：${resume.user.degree!""}/Work experience：${resume.user.workExperience!""}			                                            			                                        		<br>
			                                            	<#if WorkExperienceList?size gt 0>
				 												<#list WorkExperienceList as workExperience>
				 													<#if workExperience.user.id == resume.user.id>
		                                            					${workExperience.position!""} · ${workExperience.name!""}
			                                            			</#if>
			                                            		</#list>
			                                            	</#if>
			                                            	 | 
			                                            	<#if EducationBackgroundList?size gt 0>
				 												<#list EducationBackgroundList as educationBackground>
				 													<#if educationBackground.user.id == resume.user.id>
		                                            					${educationBackground.studyRecord!""} · ${educationBackground.school_name!""}
			                                            			</#if>
			                                            		</#list>
			                                            	</#if>
			                                        </div>
			                                        <div class="jdpublisher">
				                                        <span>
				                                        	Job application：<a title="${resume.position.name!""}" href="/home/position/detail?id=${resume.position.id!""}">${resume.position.name!""}</a>
				                                        </span>
			                                        </div>
			                                    </div>
			                                    <div class="links">
			                                    	<#if resumeState??>
				                                    	<#if resumeState != 'effective'>
				                                        	<a  class="resume_notice" href="javascript:void(0)" onclick="interview('${resume.id!""}');">Notify Interview</a>
				                                        </#if>
				                                        <#if resumeState != 'out'>
				                                        	<a  class="resume_refuse" href="javascript:void(0)" onclick="unsuitable('${resume.id!""}');">Inappropriate</a>
				                                        </#if>
				                                        <#if resumeState == 'out'>
				                                        	<a  class="resume_refuse" href="javascript:void(0)" onclick="deleteResume('${resume.id!""}');">delete</a>
				                                        </#if>
				                                        <a  class="resume_preview" target="_blank" href="/home/resume/preview?user_id=${resume.user.id!""}">Preview resume</a>
				                                    <#else>
				                                    	<a  class="resume_notice" href="javascript:void(0)" onclick="interview('${resume.id!""}');">Notify Interview</a>
				                                    	<a  class="resume_refuse" href="javascript:void(0)" onclick="unsuitable('${resume.id!""}');">Inappropriate</a>
			                                   			<a  class="resume_preview" target="_blank" href="/home/resume/preview?user_id=${resume.user.id!""}">Preview resume</a>
				                                    </#if>
				                                    
			                                      
			                                   		
			                                    </div>
			                                </div>
			                                <div class="contactInfo">
			                                	<span class="c9">telephone：</span>${resume.user.mobile!""}   &nbsp;&nbsp;&nbsp;
			                                    <span class="c9">mailbox：</span>${resume.user.email!""}
			                                </div>
			                            </li>
			                            
			                            
			                          </#list>
			                       </#if>
		                    	</ul><!-- end .resumeLists -->
                       		</form>
                    </dd>
                </dl><!-- end .company_center_content -->
            </div><!-- end .content -->
 <#include "../common/alert.ftl"/>
<!------------------------------------- 弹窗lightbox ----------------------------------------->

<!------------------------------------- end -----------------------------------------> 
<script src="/home/style/js/jquery.ui.datetimepicker.min.js" type="text/javascript"></script>
<script src="/home/style/js/received_resumes.min.js" type="text/javascript"></script> 
<script>
</script>  
<#include "../common/footer.ftl"/>	

<script src="/home/style/js/core.min.js" type="text/javascript"></script>
<script src="/home/style/js/popup.min.js" type="text/javascript"></script>

<!--  -->

<script type="text/javascript">

	//通知面试
	function interview(i){
		$.ajax({
			url:'/home/resume/interview',
			dataType:'json',
			type:'post',
			data:{id:i},
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("Notification of successful interview! Automatically refresh the page and update data after 3 seconds！└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
					setTimeout(function(){  
							window.location.reload();//页面刷新
							},3000);
				}else{
						$("#errorMsg").html("Notify interview failure，"+data.msg+"(ㄒoㄒ)");
						$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
					}
			}
		});
	} 
	
	//设为不合适
	function unsuitable(i){
		$.ajax({
			url:'/home/resume/unsuitable',
			dataType:'json',
			type:'post',
			data:{id:i},
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("The resume has been set as unsuitable! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
					setTimeout(function(){  
							window.location.reload();//页面刷新
							},3000);
				}else{
						$("#errorMsg").html("Inappropriate settings failed，"+data.msg+"(ㄒoㄒ)");
						$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
					}
			}
		});
	}
	
	//删除简历
	function deleteResume(i){
		if(confirm("Are you sure you want to delete and modify your resume？")){
			$.ajax({
				url:'/home/resume/delete',
				dataType:'json',
				type:'post',
				data:{id:i},
				success:function(data){
					if(data.code == 0){
						$("#successMsg").html("Resume deleted successfully! Automatically refresh the page and update data after 3 seconds！└(^o^)┘");
						$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
						setTimeout(function(){  
								window.location.reload();//页面刷新
								},3000);
					}else{
							$("#errorMsg").html("Resume deletion failed，"+data.msg+"(ㄒoㄒ)");
							$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
						}
				}
			});
		}
	
	}

</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div><div class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" id="ui-datepicker-div"></div></body></html>