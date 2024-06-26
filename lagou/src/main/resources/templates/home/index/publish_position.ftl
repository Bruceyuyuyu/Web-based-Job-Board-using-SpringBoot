<!--发布新职位-->
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="/home/style/js/conversion.js"></script><script src="/home/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Publish new positions - recruitment services - Lagao - the most professional Internet recruitment platform</title>
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
<script src="/home/style/js/additional-methods.js" type="text/javascript"></script>
<script src="/home/style/js/setting.js"></script>
<script src="/home/common/confirm_null.js"></script>
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="/home/style/js/conv.js" type="text/javascript"></script>
<body>
<div id="body">
	<#include "../common/top_menu.ftl"/>
    <div id="container">
        
        	<div class="sidebar">
            	<a class="btn_create" href="/home/index/publish_position">Post a new position</a>
                <dl class="company_center_aside">
	<dt>Received the resume</dt>
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
	<dt>Posted the position</dt>
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
							Post a new position
                    	</h1>
                    </dt>
                    <dd>
                    	<form method="post" id="jobForm">
                    		<input type="hidden" value="" id="position_id">
                            <input type="hidden" value="" name="id">
                            <input type="hidden" value="create" name="preview">
                            <input type="hidden" value="25927" name="companyId">
                            <input type="hidden" value="c29d4a7c35314180bf3be5eb3f00048f" name="resubmitToken">
                            <table class="btm">
                            	<tbody><tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="85"  style="line-height: 1.2">Position category</td>
                                	<td>
                                    	<input type="hidden" id="positionType" value="" name="positionType">
                                        <input type="button" value="" id="select_category" class="selectr selectr_380 require" tips="Position category cannot be empty！"  attributes="error_position_type">
                                      	<span for="position_type" generated="true" class="error" id="error_position_type" style="display:none">Position category cannot be empty！</span>
                                        <div class="dn" id="box_job" style="display: none;">
                                        
                                        <#if topPositionCategoryList?size gt 0>
				 							<#list topPositionCategoryList as topPositionCategory>
                                        
                                                <dl>
                                                    <dt>${topPositionCategory.name!""}</dt>  <!--一级菜单-->
                                                    <dd>
                                                        <ul class="reset job_main">
                                                        
                                                        	<#if secondPositionCategoryList?size gt 0>
				 												<#list secondPositionCategoryList as secondPositionCategory>
				 													<#if secondPositionCategory._parentId == topPositionCategory.id>
			                                                            <li>
			                                                                <span>${secondPositionCategory.name!""}</span> <!--二级菜单 -->
			                                                                    <ul class="reset job_sub dn">
			                                                                    
				                                                                    <#if thirdPositionCategoryList?size gt 0>
					 																	<#list thirdPositionCategoryList as thirdPositionCategory>
			                                                                      			 <#if thirdPositionCategory._parentId == secondPositionCategory.id>
			                                                                      				 <li>${thirdPositionCategory.name!""}</li>  <!--三级菜单 -->
			                                                                       			 </#if>
			                                                                        	</#list>
			                                                                        </#if>
			                                                                    </ul>
			                                                            </li>
		                                                            </#if>
                                                           		</#list>
                                                           	</#if>
                                                		
                                                    	</ul>
                                                    </dd>
                                                </dl>
                                                
                                          </#list>
                                         </#if>
                                                
                                        </div>
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td  style="line-height: 1.2">Position Name</td>
                                	<td>
                                    	<input type="text"  class="require"  placeholder="Please select a position category/name"  name="positionName" id="positionName"  readonly="readonly" tips="The job title cannot be empty!"  attributes="error_position_name">
                                    	<span for="position_name" generated="true" class="error" id="error_position_name" style="display:none">Position name cannot be empty！</span>
                                    </td>
                                </tr>
                            	<tr>
                                	<td></td>
                                	<td>Department</td>
                                	<td>
                                    	<input type="text" placeholder="Please enter your department" value="" name="department" id="department" >
                                    </td>
                                </tr>
                            </tbody></table>
                            
                            <table class="btm">
                            	<tbody><tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="85" style="line-height: 1.2">Job nature</td>
                                	<td>
                                    	<ul class="profile_radio clearfix reset">
                                    		
	                                           <li style="width: 80px">
												   full-time<em></em>
		                                           <input type="radio" value="full-time" id="work_type1">
		                                       </li>
	                                           <li style="width: 120px">
												   part-time job<em></em>
		                                           <input type="radio" value="part-time job" id="work_type2">
		                                       </li>
		                                       <li style="width: 80px">
												   practice<em></em>
		                                           <input type="radio" value="practice" id="work_type3">
		                                       </li>
	                                       
	                                       
                                       </ul>
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td style="line-height: 1.2">Monthly salary range</td>
                                    <!--<h3><span>(最高月薪不能大于最低月薪的2倍)</span></h3> -->
                                	<td>
                                    	<div class="salary_range">
                                            <div>
                                                <input type="text" placeholder="Minimum monthly salary"   class="require" id="position_min_money"  oninput = "value=value.replace(/[^\d]/g,'')" tips="Position salary cannot be empty！"  attributes="error_position_money">
                                                <span>k</span>
                                            </div>
                                            <div>
                                                <input type="text" placeholder="Maximum monthly salary"  class="require" id="position_max_money" oninput = "value=value.replace(/[^\d]/g,'')" tips="Position salary cannot be empty！"  attributes="error_position_money">
                                                <span>k</span>
                                            </div>
                                            <span>Only integers can be entered, for example: 9</span>
                                        </div>
                                        <span for="position_money" generated="true" class="error" id="error_position_money" style="display:none">Position salary cannot be empty！</span>
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>Work City</td>
                                	<td>
                                    	<input type="text" id="position_city" placeholder="Please enter your work city, such as Beijing"   class="require" tips="The city where the position is located cannot be empty！"  attributes="error_position_city">
                                    	<span for="position_city" generated="true" class="error" id="error_position_city" style="display:none">The city where the position is located cannot be empty！</span>
                                    </td>
                                </tr>
                            </tbody></table>

                            <table class="btm">
                            	<tbody><tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="85" style="line-height: 1.2">Work experience</td>
                                	<td>
                                    	<input type="hidden" id="experience" value="" name="workYear">
                                        <input type="button" value="Unlimited" id="select_experience" class="selectr selectr_380">
                                        <div class="boxUpDown boxUpDown_380 dn" id="box_experience" style="display: none;">
                                            <ul>
                                                    <li>
														Unlimited
                                                    </li>
                                                    <li>
														Fresh graduates
                                                    </li>
                                                    <li>
														Less than 1 year
                                                    </li>
                                                    <li>
														1-3 years
                                                    </li>
                                                    <li>
                                                        3-5 years
                                                    </li>
                                                    <li>
                                                        5-10 years
                                                    </li>
                                                    <li>
														Over 10 years
                                                    </li>
                                            </ul>
                                    	</div>
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td style="line-height: 1.2">Educational requirements</td>
                                	<td>
                                    	<input type="hidden" id="education" value="" name="education">
                                        <input type="button" value="不限" id="select_education" class="selectr selectr_380">                                      
                                        <div class="boxUpDown boxUpDown_380 dn" id="box_education" style="display: none;">
                                            <ul>
                                                    <li>
														Unlimited
                                                    </li>
                                                    <li>
														junior college
                                                    </li>
                                                    <li>
														undergraduate course
                                                    </li>
                                                    <li>
														master
                                                    </li>
                                                    <li>
														doctor
                                                    </li>
                                            </ul>
                                    	</div>
                                    </td>
                                </tr>
                            </tbody></table>
                           
                            <table class="btm">
                            	<tbody><tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="85" style="line-height: 1.2">Position temptation</td>
                                	<td>
                                    	<input type="text" placeholder="30 word description of the attractiveness of the position, such as benefits, development prospects, etc"    class="input_520 require" id="position_advantage" tips="Position temptation cannot be empty！"  attributes="error_position_advantage">
                                    	<span for="position_advantage" generated="true" class="error" id="error_position_advantage" style="display:none">Position temptation cannot be empty！</span>
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td style="line-height: 1.2">Job Description</td>
                                	<td>
                                    	<span class="c9 f14">(Suggest describing job responsibilities in sections. Please do not enter your company email, contact phone number, or other external links, otherwise they will be automatically deleted)</span>
                                    	<textarea id="position_description" class="require"  tips="Job description cannot be empty！"  attributes="error_position_description"></textarea>
                                       	<span for="position_description" generated="true" class="error" id="error_position_description" style="display:none">Job description cannot be empty！</span>
                                    </td>
                                </tr>
                                <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>Working address</td>
                                	<td>
                                    	<input type="text" placeholder="Please enter a detailed work address"   name="positionAddress" class="input_520 require" id="position_address"  attributes="error_position_address" tips="The address of the position cannot be empty！" >
                                    	<span for="position_address" generated="true" class="error" id="error_position_address" style="display:none">The address of the position cannot be empty！</span>
                                        <input type="hidden" value="" name="positionLng" id="lng">
                            			<input type="hidden" value="" name="positionLat" id="lat">
                                    </td>
                                </tr>
                            </tbody></table>
                            
                            <table>
                            	<tbody>
                                <tr>
                                	<td width="25"></td>
                                	<td colspan="2">
                                    	<input type="button" value="Publish"  onclick="saveNewPosition();" class="btn_32">
                                    </td>
                                </tr>
                         	</tbody></table>
                        </form>
                    </dd>
                </dl>
            </div><!-- end .content -->
<#include "../common/alert.ftl"/>
<!------------------------------------- 弹窗lightbox ----------------------------------------->

<!------------------------------------- end ----------------------------------------->
<!-- <script type="text/javascript" src="/home/style/js/tinymce.min.js"></script>


<!-- old -->
<script src="/home/style/js/jquery.tinymce.js" type="text/javascript"></script>
<!-- end old -->

<script src="/home/style/js/jobs.min.js" type="text/javascript"></script>
<script type="text/javascript">
var workType = '';
//获取工作性质的值
 $(function () {
 	document.getElementById("work_type1").onclick = function(){
            workType = $("#work_type1").val();
        }
    document.getElementById("work_type2").onclick = function(){
            workType = $("#work_type2").val();
        }
    document.getElementById("work_type3").onclick = function(){
            workType = $("#work_type3").val();
        }
 });
window.onload = function(){
	<!--还没认证公司，不让访问该页面-->
	<#if errorMsg??>
		$("#errorMsg").html("(ㄒoㄒ)"+'${errorMsg}');
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		setTimeout(function(){  
				window.location.href = "/home/company/my_company";  //页面跳转
		},3000);
	</#if>
	
	<!--判断是编辑职位还是新增职位-->
	<#if editPosition??>
		<!--是编辑-->
		document.getElementById("select_category").value='${editPosition.type!""}';
		document.getElementById("positionName").value='${editPosition.name!""}';
		document.getElementById("department").value='${editPosition.department!""}';
		document.getElementById("position_min_money").value='${editPosition.minMoney!""}';
		document.getElementById("position_max_money").value='${editPosition.maxMoney!""}';
		document.getElementById("position_city").value='${editPosition.city!""}';
		document.getElementById("select_experience").value='${editPosition.workExperience!""}';
		document.getElementById("select_education").value='${editPosition.degree!""}';
		document.getElementById("position_advantage").value='${editPosition.advantage!""}';
		document.getElementById("position_address").value='${editPosition.address!""}';
		var html = '${editPosition.description!""}';
		var description = html.replace(/<br\/>/g, "\n");  //文本框中回车换行处理
		document.getElementById("position_description").value = description;
		document.getElementById("position_id").value = '${editPosition.id!""}';
		<#if editPosition.workType == 'full-time'>
			workType = 'full-time';
			$("#work_type1").click();
		</#if>
		<#if editPosition.workType == 'part-time job'>
			workType = 'part-time job';
			$("#work_type2").click();
		</#if>
		<#if editPosition.workType == 'practice'>
			workType = 'practice';
			$("#work_type3").click();
		</#if>
		
	<#else>
		<!--是新增-->
		document.getElementById("positionName").value='';
		workType = "full-time";
		$("#work_type1").click();
	</#if>
}


//保存职位信息
function saveNewPosition(){
 var id = $("#position_id").val();
 var positionType = $("#select_category").val();
 var positionName = $("#positionName").val();
 var positionDepartment = $("#department").val();
 var positionMinMoney = $("#position_min_money").val();
 var positionMaxMoney = $("#position_max_money").val();
 var positionCity = $("#position_city").val();
 var workExperience = $("#select_experience").val();
 var degree = $("#select_education").val(); 
 var positionAdvantage = $("#position_advantage").val(); 
 var positionDescription = $("#position_description").val();
 positionDescription=positionDescription.replace(/\n/g,'<br/>');   //文本框中回车换行处理
 var positionAddress = $("#position_address").val(); 
 

 
	$('#error_position_type').css('display','none');
	$('#error_position_name').css('display','none');
	$('#error_position_money').css('display','none');
	$('#error_position_city').css('display','none');
	$('#error_position_advantage').css('display','none');
	$('#error_position_description').css('display','none');
	$('#error_position_address').css('display','none');
	//进行统一表单非空验证
	if(!checkForm('jobForm'))
	{
		return;
	}
 
  $.ajax({
		url:'/home/position/save',
		dataType:'json',
		type:'post',
		data:{type:positionType,name:positionName,department:positionDepartment,workType:workType,minMoney:positionMinMoney,maxMoney:positionMaxMoney,city:positionCity,
			workExperience:workExperience,degree:degree,advantage:positionAdvantage,description:positionDescription,address:positionAddress,id:id
		},
		success:function(data){
			if(data.code == 1){
				$("#successMsg").html("Position saved successfully! Please wait for the administrator's review! Jump to the page for you in 3 seconds!└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.href = "/home/position/my_publish_position?positionState=wait";  //跳转到待审核职位页面
						},3000);
			}else if(data.code == 2){
				$("#successMsg").html("Position saved successfully! Please wait for the administrator's review! Jump to the page for you in 3 seconds!└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.href = "/home/position/my_publish_position?positionState=out";  //跳转到已下线职位页面
						},3000);
			}else{
					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
			}
		}
	});
  
  
}


</script>

<#include "../common/footer.ftl"/>	
<script src="/home/style/js/core.min.js" type="text/javascript"></script>
<script src="/home/style/js/popup.min.js" type="text/javascript"></script>



<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>