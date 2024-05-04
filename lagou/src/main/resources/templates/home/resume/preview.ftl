<!--简历预览ftl-->
<!DOCTYPE HTML>
<html><head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Resume preview - my resume - Lagao - the most professional Internet recruitment platform</title>
	<meta property="qc:admins" content="23635710066417756375" />
	<meta content="LaGou.com is a vertical recruitment website in the Internet field under 3W, and Internet career opportunities are all in LaGou.com" name="description">
	<meta content="LaGou, LaGou, LaGou recruitment, LaGou, LaGou, Internet recruitment, LaGou Internet recruitment, mobile Internet recruitment, vertical Internet recruitment, WeChat recruitment, microblog recruitment, LaGou official website, LaGou encyclopedia, job hopping, high paid positions, Internet circles, IT recruitment, workplace recruitment, headhunting recruitment, O2O recruitment, LBS recruitment, social recruitment, campus recruitment, school recruitment, social recruitment, social recruitment" name="keywords">

<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

</script><script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link href="/home/style/css/style.css" type="text/css" rel="stylesheet">
<link href="/home/style/css/colorbox.min.css" type="text/css" rel="stylesheet">
<link href="/home/style/css/popup.css" type="text/css" rel="stylesheet">

<script type="text/javascript" src="/home/style/js/jquery.1.10.1.min.js"></script>

<script src="/home/style/js/jquery.colorbox-min.js" type="text/javascript"></script>
<script>
$(function(){
	 $("body").on("click","a.btn_s",function(){
		$.colorbox.close();
		parent.jQuery.colorbox.close();
	});
	$(".inline").colorbox({
		inline:true
	});
});
</script>
<script src="/home/style/js/ajaxCross.json" charset="UTF-8"></script></head>

<body>
  	<div id="previewWrapper">
        <div class="preview_header">
            <h1 title="jason的简历">Jason's resume</h1>
                        	
        </div><!--end .preview_header-->

        <div class="preview_content">
            <div class="profile_box" id="basicInfo">
                <h2>Basic information</h2>
                <div class="basicShow">
                   <span>
                   	<#if currentUser??>
	                 	  name： ${currentUser.username!""} | Gender： <#if currentUser.sex == 0>unknown<#elseif currentUser.sex == 1>man<#else>woman </#if> | educational background： ${currentUser.degree!""} |
	                  	 Work experience： ${currentUser.workExperience!""}<br>
	                  	 telephone： ${currentUser.mobile!"Currently unavailable"}  |  mailbox： ${currentUser.email!"Currently unavailable"} <br>
	            		</span>
	           			<div class="m_portrait">
	                    	<div></div>
	                    	<img width="120" height="120" alt="jason" src="/photo/view?filename=${currentUser.headPic!""}">
	                    </div>
                   </#if>
                </div><!--end .basicShow-->
            </div><!--end #basicInfo-->
			
	            <div class="profile_box" id="expectJob">
	                <h2>Expected job</h2>
	                <div class="expectShow">
	                	<#if ExpectWork??>
							Expected City：${ExpectWork.city!"empty"}   |  Job nature：${ExpectWork.type!"full-time"}  |  expected position：${ExpectWork.position!"empty"}  |  expected monthly salary：${ExpectWork.money!"empty"}
						</#if>
	                </div><!--end .expectShow-->
	            </div><!--end #expectJob-->
						
	            <div class="profile_box" id="workExperience">
	                <h2>work experience</h2>
	                <div class="experienceShow">
	                  <ul class="wlist clearfix">
	    				<li class="clear">
	    					<#if WorkExperience??>
		    					<span class="c9">${WorkExperience.startYear!""}year ${WorkExperience.startMonth!""}month — ${WorkExperience.endYear!""}year ${WorkExperience.endMonth!""}month</span>
		       					<div>
		       						<img width="56" height="56" alt="${WorkExperience.name!""}" src="/photo/view?filename=common/logo_default.png">
		       						<h3>Position Name： ${WorkExperience.position!""}</h3>
		       						<h4>Company Name： ${WorkExperience.name!""}</h4>
		       					</div>
	    					<#else>
	    						<span class="c9">&#160;year&#160;month one&#160;year&#160;month</span>
		       					<div>
		       						<img width="56" height="56" alt="" src="/photo/view?filename=${user.headPic!""}">
		       						<h3>Position Name： </h3>
		       						<h4>Company Name：</h4>
		       					</div>
	    					</#if>
	       				</li>
                  	  </ul>
	                </div><!--end .experienceShow-->
	            </div><!--end #workExperience-->
			
	            <div class="profile_box" id="projectExperience">
	                <h2>Project experience</h2>
	                <div class="projectShow">
	                  <ul class="plist clearfix">
	                  	<li class="noborder">
	    					<div class="projectList">
	    						<#if ProjectExperience??>
	    							<div class="f16 mb10">entry name： ${ProjectExperience.name!""} | Position held： ${ProjectExperience.position!""} | <span class="c9"> ${ProjectExperience.startYear!""}year ${ProjectExperience.startMonth!""}month—— ${ProjectExperience.endYear!""}year ${ProjectExperience.endMonth!""}month</span>
		        					</div>
		        					<div class="dl1">
										Project Description：${ProjectExperience.content!""}
		        					</div>
	    						<#else>
	    							<div class="f16 mb10">entry name： | Position held：  | <span class="c9">&#160;年&#160;月——&#160;年 &#160;月</span>
		        					</div>
		        					<div class="dl1">
										Project Description：
		        					</div>
	    						</#if>
	        				</div>
        				</li>
                      </ul>
	                </div><!--end .projectShow-->
	            </div><!--end #projectExperience-->
						
	            <div class="profile_box" id="educationalBackground">
	                <h2>educational background</h2>
	                <div class="educationalShow">
	                  <ul class="elist clearfix">
        				<li class="clear">
        					<#if EducationBackground??>
        						<span class="c9">&#160;${EducationBackground.startYear!""}year ——${EducationBackground.endYear!""}year</span>
						 		<div>
		    						<h3>School name： ${EducationBackground.school_name!""}</h3>
		    						<h4>${EducationBackground.major!""} · ${EducationBackground.studyRecord!""}</h4>
					     		</div>
        					<#else>
        						<span class="c9"></span>
						 		<div>
		    						<h3>School name： </h3>
		    						<h4> · </h4>
					     		</div>
        					</#if>
        				</li>
                     </ul>
	                </div><!--end .educationalShow-->
	            </div><!--end #educationalBackground-->
	            
	            <div class="profile_box" id="selfDescription">
	                <h2>Self description</h2>
	                <div class="descriptionShow">
	            		${currentUser.content!""}
	                </div><!--end .descriptionShow-->
	            </div><!--end #selfDescription-->
						
	            <div class="profile_box" id="worksShow">
	                <h2>Exhibition of works</h2>
	                <div class="workShow">
	                  <ul class="slist clearfix">
        				<li class="noborder">
        					<div class="workList c7">
        						<#if WorkShow??>
	        						<div class="f16">Work website：<a target="_blank" href="${WorkShow.url!""}">${WorkShow.url!""}</a></div>
	            					<p>Work Description： ${WorkShow.content!""}</p>
            					<#else>
            						<div class="f16">Work website：</div>
	            					<p>Work Description： </p>
            					</#if>
            				</div>
        				</li>
             		  </ul>
	                </div><!--end .workShow-->
	            </div><!--end #worksShow-->
			        </div><!--end .preview_content-->
  	</div><!--end #previewWrapper-->

<!-------------------------------------弹窗lightbox ----------------------------------------->

<!------------------------------------- end ----------------------------------------->  




<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>