<!--个人简历ftl -->
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="/home/style/js/conversion.js"></script><script src="/home/style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>My resume - Lagao - the most professional Internet recruitment platform</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="LaGou.com is a vertical recruitment website in the Internet field under 3W, and Internet career opportunities are all in LaGou.com">
<meta name="keywords" content="Lagou, Lagou, Lagou recruitment, Lagou, Lagou, Internet recruitment, Lagou Internet recruitment, mobile Internet recruitment, vertical Internet recruitment, WeChat recruitment, microblog recruitment, Lagou official website, Lagou encyclopedia, job hopping, high paid positions, Internet circles, IT recruitment, workplace recruitment, headhunting recruitment, O2O recruitment, LBS recruitment, social recruitment, campus recruitment, school recruitment, social recruitment, social recruitment">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link href="/home/style/css/style.css" type="text/css" rel="stylesheet">
<link href="/home/style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="/home/style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="/home/style/js/jquery.1.10.1.min.js"></script>
<script src="/home/style/js/jquery.lib.min.js" type="text/javascript"></script>
<script src="/home/style/js/setting.js"></script>
<script src="/home/style/js/additional-methods.js" type="text/javascript"></script>

<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="/home/style/js/conv.js" type="text/javascript"></script>
<script src="/home/common/confirm_null.js"></script>
<body>
<div id="body">
	<#include "../common/top_menu.ftl"/>
    <div id="container">
        
  		<div class="clearfix">
            <div class="content_l">
            	<div class="fl" id="resume_name">
	            	<div class="nameShow fl">
	            		<h1 title="${user.username!""}Resume">${user.username!""}  resume</h1>
	            		<a target="_blank" href="/home/resume/preview">preview</a>
            		</div>
            	</div><!--end #resume_name-->
            	<div class="fr c5" id="lastChangedTime">Last update： ${user.updateTime?string('yyyy-MM-dd HH:mm:ss')}<span></span></div><!--end #lastChangedTime-->
            	<div id="resumeScore">
            		<div class="score fl">
            			<canvas height="120" width="120" id="doughnutChartCanvas" style="width: 120px; height: 120px;"></canvas>
           				<div style="" class="scoreVal"><span>${scores!""}</span>％</div>
            		</div>	
            		
            		<div class="which fl">
        				<div>Personal information, work experience, project experience, and educational background are the four factors that best reflect one's work ability and personal situation, and resumes can only be submitted after completion！</div>
							<#if isOK == 1>
								<span><a href="javascript:void(0);">Deliver it at once</a></span>
							</#if>
            		</div>
            	</div><!--end #resumeScore-->
            	
<!-----------------------------------------------------基本信息--------------------------------------------------->
     			<div class="profile_box" id="basicInfo">     <!--start basicinfo--> 
            		<h2>Basic information  <span> </span></h2>
            		<span class="c_edit"></span>
            		<div class="basicShow">
        				<span>name： ${user.username!""} |  Gender： <#if user.sex == 0>unknown<#elseif user.sex == 1>man<#else>woman</#if> |Education: ${user.degree!""}  | Work experience: ${user.workExperience!""}<br>
            				telephone： ${user.mobile!"Currently unavailable"}  |  mailbox： ${user.email!"Currently unavailable"} <br>
            			</span>
        			<div class="m_portrait">
                	<div></div>
                		<input type="hidden" value="${user.headPic!""}" id="user_headPic">
                    	<img width="120" height="120" id="preview-user-photo" alt="jason" src="/photo/view?filename=${user.headPic!""}">
                    </div>
            		</div><!--end .basicShow-->
            		<div class="basicEdit dn">
            			<form id="profileForm">
						  <table>
						    <tbody><tr>
						      <td valign="top">
						       	 <span class="redstar">*</span>
						      </td> 
						      <td>
						         <input type="text" placeholder="name"  class="require"   name="name" id="name"  tips="Name cannot be empty！"  attributes="error_username">
						         <span for="username" generated="true" class="error" id="error_username" style="display:none">Name cannot be empty！</span>
						      </td>
						      <td valign="top"></td> 
						      <td>
						          <ul class="profile_radio clearfix reset">
						            <li class="current" style="width: 80px">
						           	  	 Man<em></em>
						              	<input type="radio" name="sex" style="width: 100%"  value="Man">
						            </li>
						            <li style="width: 80px">
						            	  Woman<em></em>
						              	<input type="radio" name="sex" style="width: 100%"  value="Woman">
						            </li >
						             <li style="width: 80px;margin-top: 10px">
										 Unknown<em></em>
						              	<input type="radio" name="sex" style="width: 100%" checked="checked" value="unknown">
						            </li>
						          </ul>  
						      </td>
						    </tr>
						    <tr>
						      <td valign="top">
						          <span class="redstar">*</span>
						      </td> 
						      <td>
						      	<input type="hidden" id="topDegree" value="${user.degree!""}" name="topDegree">
						        <input type="button" value="${user.degree!""}"  id="select_topDegree" class="profile_select_190 profile_select_normal">
								<div class="boxUpDown boxUpDown_190 dn" id="box_topDegree" style="display: none;">
						        	<ul>
					        			<li>junior college</li>
					        			<li>undergraduate</li>
					        			<li>master</li>
					        			<li>doctor</li>
					        			<li>other</li>
					        		</ul>
						        </div>  
						      </td>
						      <td valign="top">
						         <span class="redstar">*</span>
						      </td> 
						      <td>
						      	  <input type="hidden" id="workyear" value="${user.workExperience!""}" name="workyear">	
						          <input type="button"  value="${user.workExperience!""}" id="select_workyear" class="profile_select_190 profile_select_normal">
								  <div class="boxUpDown boxUpDown_190 dn" id="box_workyear" style="display: none;">
						          	 <ul>
					        			<li>Fresh graduates</li>
					        			<li>1 year</li>
					        			<li>2 year</li>
					        			<li>3 year</li>
					        			<li>4 year</li>
					        			<li>5 year</li>
					        			<li>6 year</li>
					        			<li>7 year</li>
					        			<li>8 year</li>
					        			<li>9 year</li>
					        			<li>10 year</li>
					        			<li>Over 10 years</li>
						        	 </ul>
						          </div>  
						      </td>
						    </tr>
						    <tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td colspan="3">
						          <input type="text" placeholder="Mobile phone number"  class="require" name="tel" id="tel" tips="Phone number cannot be empty！"  attributes="error_mobile">
						          <span for="mobile" generated="true" class="error" id="error_mobile" style="display:none">Phone number cannot be empty！</span>
						      </td>
						   	</tr>
						    <tr>
						      <td></td> 
						      <td colspan="3">
						          <input type="button" onclick="saveBasicInfo();" value="Save" class="btn_profile_save">
						          <a class="btn_profile_cancel" href="javascript:;">Cancel</a>
						      </td>
						    </tr>
						  </tbody>
						 </table>
						</form><!--end #profileForm-->
						<div class="new_portrait">
						  <div class="portrait_upload" id="portraitNo">
						      <span>Upload your own profile picture</span>
						  </div>
						  <div class="portraitShow dn" id="portraitShow">
						    <img id="edit-preview-user-photo" width="120" height="120" src="">
						    <span>Change avatar</span>
						  </div>
						  <input type="file" value="" title="Supports jpg, jpeg, gif, png formats, with files smaller than 1M" onchange="upload();" name="headPic" id="headPic" class="myfiles">
							<!-- <input type="hidden" id="headPicHidden" /> -->
						  	<em>
						                  size：120*120px <br>
						                  size：Less than 1M
						  	</em>
						  	<span style="display:none;" id="headPic_error" class="error"></span>
						</div><!--end .new_portrait-->
            		</div><!--end .basicEdit-->
            		<input type="hidden" id="nameVal" value="${user.username!""}">
            		<#if user.sex == 0><input type="hidden" id="genderVal" value="unknown">
            		<#elseif user.sex == 1><input type="hidden" id="genderVal" value="wan">
            		<#else><input type="hidden" id="genderVal" value="woman">
            		</#if>	
            		<input type="hidden" id="topDegreeVal" value="${user.degree!""}">
            		<input type="hidden" id="workyearVal" value="${user.workExperience!"Fresh graduates"}">
            		<input type="hidden" id="telVal" value="${user.mobile!""}">
            		<input type="hidden" id="pageType" value="1"> 
            	</div><!--end #basicInfo-->

<!-----------------------------------------------------期望工作--------------------------------------------------->
            	<div class="profile_box" id="expectJob">
            		<h2>Expected work</h2>
            		<span class="c_edit dn"></span>
            		<div class="expectShow dn">
        				<span></span>
            		</div><!--end .expectShow-->
            		<div class="expectEdit dn">
            			<form id="expectForm">
	            			<table>
	            				<tbody><tr>
	            					<td>
	            						<input type="hidden" id="expectCity" value="" name="expectCity">
						        		<input  type="button" value="Beijing" id="select_expectCity" class="profile_select_287 profile_select_normal">
										<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity" style="display: none;">
							        		<dl>
						        				<dt>Hot cities</dt>
								        			<dd style="font-size: 12px !important;">
								        				<span>Beijing</span>
								        				<span>Shanghai</span>
								        				<span>Guangzhou</span>
								        				<span>Shenzhen</span>
								        				<span>Chengdu</span>
								        				<span>Hangzhou</span>
								        				<span>No requirements</span>
								        			</dd>
							        	  	</dl>
							        		<dl>
							        			<dt>ABCDEF</dt>
								        			<dd style="font-size: 12px !important;">
								        				<span>Beijing</span>
								        				<span>Changchun</span>
								        				<span>Chengdu</span>
								        				<span>Chongqing</span>
								        				<span>Changsha</span>
								        				<span>Changzhou</span>
								        				<span>Dongguan</span>
								        				<span>Dalian</span>
								        				<span>Foshan</span>
								        				<span>Fuzhou</span>
								        			</dd>
							        	  	</dl>
							        	  	<dl>
							        			<dt>GHIJ</dt>
								        			<dd style="font-size: 12px !important;">
								        				<span>Guiyang</span>
								        				<span>Guangzhou</span>
								        				<span>Harbin</span>
								        				<span>Hefei</span>
								        				<span>Haikou</span>
								        				<span>Hangzhou</span>
								        				<span>Huizhou</span>
								        				<span>Jinhua</span>
								        				<span>Jinan</span>
								        				<span>Jiaxing</span>
								        			</dd>
							        	  	</dl>
							        		<dl>
							        			<dt>KLMN</dt>
								        			<dd style="font-size: 12px !important;">
								        				<span>Kunming</span>
								        				<span>Langfang</span>
								        				<span>Ningbo</span>
								        				<span>Nanchang</span>
								        				<span>Nanjing</span>
								        				<span>Nanning</span>
								        				<span>Nantong</span>
								        			</dd>
							        	  	</dl>
							        		<dl>
						        				<dt>OPQR</dt>
								        			<dd style="font-size: 12px !important;">
								        				<span>Qingdao</span>
								        				<span>Quanzhou</span>
								        			</dd>
							        	  	</dl>
							        		<dl>
							        			<dt>STUV</dt>
								        			<dd style="font-size: 12px !important;">
								        				<span>Shanghai</span>
								        				<span>Shijiazhuang</span>
								        				<span>Shaoxing</span>
								        				<span>Shenyang</span>
								        				<span>Shenzhen</span>
								        				<span>Suzhou</span>
								        				<span>Tianjin</span>
								        				<span>Taiyuan</span>
								        				<span>Taizhou</span>
								        			</dd>
							        	  	</dl>
							        		<dl>
					        					<dt>WXYZ</dt>
								        			<dd style="font-size: 12px !important;">
								        				<span>Wuhan</span>
								        				<span>Wuxi</span>
								        				<span>Wenzhou</span>
								        				<span>Xi'an</span>
								        				<span>Xiamen</span>
								        				<span>Yantai</span>
								        				<span>Zhuhai</span>
								        				<span>Zhongshan</span>
								        				<span>Zhengzhou</span>
								        			</dd>
							        	  	</dl>
							        </div>  
            					</td>
            					<td>
            						<ul class="profile_radio clearfix reset">
            							<input type="hidden" value="full-time" id="work_type">
        								<li class="current" style="width: 80px">
											full-time<em></em>
							              	<input type="radio" id="ew_type1"  name="type" value="full-time">
							            </li>
							            <li style="width: 120px">
											part-time job<em></em>
							              	<input type="radio" id="ew_type2" name="type" value="part-time job">
							            </li>
							            <li style="width: 80px; margin-top: 10px">
											practice<em></em>
						              		<input type="radio" id="ew_type3" name="type" value="practice">
							            </li>
							        </ul> 
            					</td>
	            				</tr>
	            				<tr>
	            					<td>
							        	<input type="text" placeholder="Expected position, such as Product Manager"  value="" name="expectPosition" id="expectPosition">
									</td>
	            					<td>
	            						<input type="hidden" id="expectSalary" value="" name="expectSalary">
	            						<input type="button" value="Below 2k" id="select_expectSalary" class="profile_select_287 profile_select_normal">
							        	<div class="boxUpDown boxUpDown_287 dn" id="box_expectSalary" style="display: none;">
				          	  				<ul>
							        			<li>Below 2k</li>
							        			<li>2k-5k</li>
							        			<li>5k-10k</li>
							        			<li>10k-15k</li>
							        			<li>15k-25k</li>
							        			<li>25k-50k</li>
							        			<li>Above 50k</li>
						        	 	   </ul>
								         </div>  
	            					</td>
	            				</tr>
	            				<tr>
	            					<td colspan="2">
										<input type="button" onclick="saveExpectWork();" value="save" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">cancel</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
            			</form><!--end #expectForm-->
            		</div><!--end .expectEdit-->
            		<div class="expectAdd pAdd">
            			<#if ExpectWork??>
							Expected City：${ExpectWork.city!"empty"}   |  Job nature：${ExpectWork.type!"full-time"}  |  Expected position：${ExpectWork.position!"empty"}  |  Expected salary ：${ExpectWork.money!"empty"}
						<#else>
							Filling in accurate job expectations can greatly improve the success rate of job seeking.<br>

						</#if>
						<#if ExpectWork??>
							<span>Modify expected work</span>
						<#else>
							<span>Add expected job</span>
						</#if>
            		</div><!--end .expectAdd-->
            		
            		
            	</div><!--end #expectJob-->
            	
<!-----------------------------------------------------工作经验--------------------------------------------------->
            	<div class="profile_box" id="workExperience">
            		<h2>Work experience  <span> （Required when submitting resumes）</span></h2>
            		<span class="c_add dn"></span>
            		
            		<div class="experienceEdit dn">
            			<form class="experienceForm" id="workExperienceForm">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							        	<input type="text"  placeholder="Company Name"  name="companyName" id="we_company_name" class="require" tips="Company name cannot be empty！"  attributes="error_company_name">
							        	<span for="company_name" generated="true" class="error" id="error_company_name" style="display:none">Company name cannot be empty！</span>
							      	</td>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							          	<input type="text" placeholder="Job title, such as Product Manager" name="positionName" class="require" id="we_position_name" tips="Position name cannot be empty！"  attributes="error_position_name">
							          	<span for="position_name" generated="true" class="error" id="error_position_name" style="display:none">Position name cannot be empty！</span>
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearStart" value="" name="companyYearStart">
								        	<input type="button" value="Starting year"  class="profile_select_139 profile_select_normal select_companyYearStart" id="we_start_year">
								        	<span for="startTime" generated="true" class="error" id="error_startTime" style="display:none">Start time cannot be empty！</span>
											<div class="box_companyYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>2025</li>
									            	<li>2024</li>
									            	<li>2023</li>
									            	<li>2022</li>
									           		<li>2021</li>
									            	<li>2020</li>
									            	<li>2019</li>
									            	<li>2018</li>
									            	<li>2017</li>
									            	<li>2016</li>
									            	<li>2015</li>
								        			<li>2014</li>
								        			<li>2013</li>
								        			<li>2012</li>
								        			<li>2011</li>
								        			<li>2010</li>
								        			<li>2009</li>
								        			<li>2008</li>
								        			<li>2007</li>
								        			<li>2006</li>
								        			<li>2005</li>
								        			<li>2004</li>
								        			<li>2003</li>
								        			<li>2002</li>
								        			<li>2001</li>
								        			<li>2000</li>
								        			<li>1999</li>
								        			<li>1998</li>
								        			<li>1997</li>
								        			<li>1996</li>
								        			<li>1995</li>
								        			<li>1994</li>
								        			<li>1993</li>
								        			<li>1992</li>
								        			<li>1991</li>
								        			<li>1990</li>
								        			<li>1989</li>
								        			<li>1988</li>
								        			<li>1987</li>
								        			<li>1986</li>
								        			<li>1985</li>
								        			<li>1984</li>
								        			<li>1983</li>
								        			<li>1982</li>
								        			<li>1981</li>
								        			<li>1980</li>
								        			<li>1979</li>
								        			<li>1978</li>
								        			<li>1977</li>
								        			<li>1976</li>
								        			<li>1975</li>
								        			<li>1974</li>
								        			<li>1973</li>
								        			<li>1972</li>
								        			<li>1971</li>
								        			<li>1970</li>
								        		</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthStart" value="" name="companyMonthStart">
								        	<input type="button" value="Starting month" class="profile_select_139 profile_select_normal select_companyMonthStart" id="we_start_month">
											<div style="display: none;" class="box_companyMonthStart boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
									    </div>
									    <div class="clear"></div>
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="companyYearEnd" value="" name="companyYearEnd">
								        	<input type="button" value="End year" class="profile_select_139 profile_select_normal select_companyYearEnd" id="we_end_year">
											<span for="endTime" generated="true" class="error" id="error_endTime" style="display:none">End time cannot be empty！</span>
											<div class="box_companyYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>2025</li>
									            	<li>2024</li>
									            	<li>2023</li>
									            	<li>2022</li>
									           		<li>2021</li>
									            	<li>2020</li>
									            	<li>2019</li>
									            	<li>2018</li>
									            	<li>2017</li>
									            	<li>2016</li>
									            	<li>2015</li>
								        			<li>2014</li>
								        			<li>2013</li>
								        			<li>2012</li>
								        			<li>2011</li>
								        			<li>2010</li>
								        			<li>2009</li>
								        			<li>2008</li>
								        			<li>2007</li>
								        			<li>2006</li>
								        			<li>2005</li>
								        			<li>2004</li>
								        			<li>2003</li>
								        			<li>2002</li>
								        			<li>2001</li>
								        			<li>2000</li>
								        			<li>1999</li>
								        			<li>1998</li>
								        			<li>1997</li>
								        			<li>1996</li>
								        			<li>1995</li>
								        			<li>1994</li>
								        			<li>1993</li>
								        			<li>1992</li>
								        			<li>1991</li>
								        			<li>1990</li>
								        			<li>1989</li>
								        			<li>1988</li>
								        			<li>1987</li>
								        			<li>1986</li>
								        			<li>1985</li>
								        			<li>1984</li>
								        			<li>1983</li>
								        			<li>1982</li>
								        			<li>1981</li>
								        			<li>1980</li>
								        			<li>1979</li>
								        			<li>1978</li>
								        			<li>1977</li>
								        			<li>1976</li>
								        			<li>1975</li>
								        			<li>1974</li>
								        			<li>1973</li>
								        			<li>1972</li>
								        			<li>1971</li>
								        			<li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="companyMonthEnd" value="" name="companyMonthEnd">
								        	<input type="button" value="End Month" class="profile_select_139 profile_select_normal select_companyMonthEnd" id="we_end_month">
											<div style="display: none;" class="box_companyMonthEnd boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
								        <div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="button" onclick="saveWorkExperience();" value="save" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">cancel</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="expId" value="">
            			</form><!--end .experienceForm-->
            		</div><!--end .experienceEdit-->
            		<div class="experienceAdd pAdd">
            			<#if WorkExperience??>
							Company Name： ${WorkExperience.name!""} | Position Name： ${WorkExperience.position!""} | start time： ${WorkExperience.startYear!""}year ${WorkExperience.startMonth!""}month | End time：  ${WorkExperience.endYear!""}year ${WorkExperience.endMonth!""}month
            			<#else>
							Work experience best reflects one's work ability！<br>
							Only after completion can resumes be submitted！
            			</#if>
            		      
            		    <#if WorkExperience??>
            				<span>Modifying Work Experience</span>
            			<#else>
							<span>Add work experience</span>

            			</#if>
						
            		</div><!--end .experienceAdd-->
            	</div><!--end #workExperience-->



<!-----------------------------------------------------项目经验--------------------------------------------------->



            	<div class="profile_box" id="projectExperience">
            		<h2>Project experience<span> （Required when submitting resumes）</span></h2>
            		            		<span class="c_add dn"></span>
            		<div class="projectShow dn">
    				<ul class="plist clearfix"></ul>
	            			            			
            		</div><!--end .projectShow-->
            		<div class="projectEdit dn">
            			<form class="projectForm" id="projectExperienceForm">
	            			<table>
	            				<tbody><tr>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							        	<input type="text" placeholder="entry name"   class="require" id="pw_project_name" tips="Project name cannot be empty！"  attributes="error_pw_project_name">
							        	<span for="projectName" generated="true" class="error" id="error_pw_project_name" style="display:none">Project name cannot be empty！</span>
							      	</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							          	<input type="text" placeholder="Position held, such as Product Manager" name="thePost" class="require" id="pw_position_name" tips="The position name cannot be empty！"  attributes="error_pw_position_name">
							      		<span for="positionName" generated="true" class="error" id="error_pw_position_name" style="display:none">The position name cannot be empty！</span>
							      	</td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="projectYearStart" value="" name="projectYearStart">
								        	<input type="button" value="Starting year" class="profile_select_139 profile_select_normal select_projectYearStart" id="pw_start_year">
								        	<span for="startTime" generated="true" class="error" id="error_pw_startTime" style="display:none">Start time cannot be empty！</span>
											<div class="box_projectYearStart  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>2025</li>
									            	<li>2024</li>
									            	<li>2023</li>
									            	<li>2022</li>
									           		<li>2021</li>
									            	<li>2020</li>
									            	<li>2019</li>
									            	<li>2018</li>
									            	<li>2017</li>
									            	<li>2016</li>
									            	<li>2015</li>
								        			<li>2014</li>
								        			<li>2013</li>
								        			<li>2012</li>
								        			<li>2011</li>
								        			<li>2010</li>
								        			<li>2009</li>
								        			<li>2008</li>
								        			<li>2007</li>
								        			<li>2006</li>
								        			<li>2005</li>
								        			<li>2004</li>
								        			<li>2003</li>
								        			<li>2002</li>
								        			<li>2001</li>
								        			<li>2000</li>
								        			<li>1999</li>
								        			<li>1998</li>
								        			<li>1997</li>
								        			<li>1996</li>
								        			<li>1995</li>
								        			<li>1994</li>
								        			<li>1993</li>
								        			<li>1992</li>
								        			<li>1991</li>
								        			<li>1990</li>
								        			<li>1989</li>
								        			<li>1988</li>
								        			<li>1987</li>
								        			<li>1986</li>
								        			<li>1985</li>
								        			<li>1984</li>
								        			<li>1983</li>
								        			<li>1982</li>
								        			<li>1981</li>
								        			<li>1980</li>
								        			<li>1979</li>
								        			<li>1978</li>
								        			<li>1977</li>
								        			<li>1976</li>
								        			<li>1975</li>
								        			<li>1974</li>
								        			<li>1973</li>
								        			<li>1972</li>
								        			<li>1971</li>
								        			<li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="projectMonthStart" value="" name="projectMonthStart">
								        	<input type="button" value="Starting month" class="profile_select_139 profile_select_normal select_projectMonthStart" id="pw_start_month">
											<div style="display: none;" class="box_projectMonthStart boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
								        <div class="clear"></div>
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
	            						<div class="fl">
		            						<input type="hidden" class="projectYearEnd" value="" name="projectYearEnd">
								        	<input type="button" value="End year" class="profile_select_139 profile_select_normal select_projectYearEnd" id="pw_end_year">
											<span for="endTime" generated="true" class="error" id="error_pw_endTime" style="display:none">End time cannot be empty！</span>
											<div class="box_projectYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>2025</li>
									            	<li>2024</li>
									            	<li>2023</li>
									            	<li>2022</li>
									           		<li>2021</li>
									            	<li>2020</li>
									            	<li>2019</li>
									            	<li>2018</li>
									            	<li>2017</li>
									            	<li>2016</li>
									            	<li>2015</li>
								        			<li>2014</li>
								        			<li>2013</li>
								        			<li>2012</li>
								        			<li>2011</li>
								        			<li>2010</li>
								        			<li>2009</li>
								        			<li>2008</li>
								        			<li>2007</li>
								        			<li>2006</li>
								        			<li>2005</li>
								        			<li>2004</li>
								        			<li>2003</li>
								        			<li>2002</li>
								        			<li>2001</li>
								        			<li>2000</li>
								        			<li>1999</li>
								        			<li>1998</li>
								        			<li>1997</li>
								        			<li>1996</li>
								        			<li>1995</li>
								        			<li>1994</li>
								        			<li>1993</li>
								        			<li>1992</li>
								        			<li>1991</li>
								        			<li>1990</li>
								        			<li>1989</li>
								        			<li>1988</li>
								        			<li>1987</li>
								        			<li>1986</li>
								        			<li>1985</li>
								        			<li>1984</li>
								        			<li>1983</li>
								        			<li>1982</li>
								        			<li>1981</li>
								        			<li>1980</li>
								        			<li>1979</li>
								        			<li>1978</li>
								        			<li>1977</li>
								        			<li>1976</li>
								        			<li>1975</li>
								        			<li>1974</li>
								        			<li>1973</li>
								        			<li>1972</li>
								        			<li>1971</li>
								        			<li>1970</li>
								        		</ul>
									        </div>
										</div>
										<div class="fl">
									        <input type="hidden" class="projectMonthEnd" value="" name="projectMonthEnd">
								        	<input type="button" value="End Month" class="profile_select_139 profile_select_normal select_projectMonthEnd" id="pw_end_month">
											<div style="display: none;" class="box_projectMonthEnd boxUpDown boxUpDown_139 dn">
									            <ul>
									        		<li>01</li><li>02</li><li>03</li><li>04</li><li>05</li><li>06</li><li>07</li><li>08</li><li>09</li><li>10</li><li>11</li><li>12</li>
									        	</ul>
									        </div>
								        </div>
								        <div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td valign="top"></td> 
									<td colspan="3">
										<textarea class="s_textarea" name="projectDescription" placeholder="Project Description"  id="pw_project_description"></textarea>
										<div class="word_count">You can also input <span>500</span> word</div>
									</td>
	            				</tr>
	            				<tr>
	            					<td valign="top"></td> 
	            					<td colspan="3">
										<input type="button" value="save" class="btn_profile_save" onclick="saveProjectExperience();">
						          		<a class="btn_profile_cancel" href="javascript:;">cancel</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
			            	<input type="hidden" value="" class="projectId">
            			</form><!--end .projectForm-->
            		</div><!--end .projectEdit-->
            		<div class="projectAdd pAdd">
            			<#if ProjectExperience??>
							entry name： ${ProjectExperience.name!""} | Position held： ${ProjectExperience.position!""} | start time： ${ProjectExperience.startYear!""}year ${ProjectExperience.startMonth!""}month | End time：  ${ProjectExperience.endYear!""}year ${ProjectExperience.endMonth!""}month
            				 | Project Description：${ProjectExperience.content!""}
            			<#else>
							Project experience is an important indicator for employers to measure talent capabilities！<br>
            			</#if>
            			
						<#if ProjectExperience??>
            				<span>Revise project experience</span>
            			<#else>
            				<span>Add project experience</span>
            			</#if>
            		</div><!--end .projectAdd-->
            	</div><!--end #projectExperience-->
            	
            	
<!-----------------------------------------------------教育背景--------------------------------------------------->
            	<div class="profile_box" id="educationalBackground">
            		<h2>Educational background<span>（Required when submitting resumes）</span></h2>
					<span class="c_add dn"></span>
            		<div class="educationalEdit dn">
            			<form class="educationalForm" id="educationBackgroundForm">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							        	<input type="text" placeholder="School name" name="schoolName" class="require" id="eb_school_name"  tips="School name cannot be empty！"  attributes="error_eb_school_name">
							        	<span for="schoolName" generated="true" class="error" id="error_eb_school_name" style="display:none">School name cannot be empty！</span>
							      	</td>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							      		<input type="hidden" class="degree" value="" name="degree">
							        	<input type="button" value="junior college" class="profile_select_287 profile_select_normal select_degree" id="eb_degree">
										<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
								            <ul>
							        			<li>junior college</li>
							        			<li>undergraduate course</li>
							        			<li>master</li>
							        			<li>doctor</li>
							        			<li>other</li>
								        	</ul>
								        </div>
							        </td>
							    </tr>
	            				<tr>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
	            						<input type="text" placeholder="Professional Name" name="professionalName" class="require" id="eb_major" tips="Professional name cannot be empty！"  attributes="error_eb_major">
	            						<span for="major" generated="true" class="error" id="error_eb_major" style="display:none">Professional name cannot be empty！</span>
	            					</td>
	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="schoolYearStart" value="" name="schoolYearStart">
								        	<input type="button" value="Starting year" class="profile_select_139 profile_select_normal select_schoolYearStart" id="eb_start_year">
											<span for="startTime" generated="true" class="error" id="error_eb_startTime" style="display:none">The start year cannot be empty！</span>
											<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>2025</li>
									            	<li>2024</li>
									            	<li>2023</li>
									            	<li>2022</li>
									           		<li>2021</li>
									            	<li>2020</li>
									            	<li>2019</li>
									            	<li>2018</li>
									            	<li>2017</li>
									            	<li>2016</li>
									            	<li>2015</li>
								        			<li>2014</li>
								        			<li>2013</li>
								        			<li>2012</li>
								        			<li>2011</li>
								        			<li>2010</li>
								        			<li>2009</li>
								        			<li>2008</li>
								        			<li>2007</li>
								        			<li>2006</li>
								        			<li>2005</li>
								        			<li>2004</li>
								        			<li>2003</li>
								        			<li>2002</li>
								        			<li>2001</li>
								        			<li>2000</li>
								        			<li>1999</li>
								        			<li>1998</li>
								        			<li>1997</li>
								        			<li>1996</li>
								        			<li>1995</li>
								        			<li>1994</li>
								        			<li>1993</li>
								        			<li>1992</li>
								        			<li>1991</li>
								        			<li>1990</li>
								        			<li>1989</li>
								        			<li>1988</li>
								        			<li>1987</li>
								        			<li>1986</li>
								        			<li>1985</li>
								        			<li>1984</li>
								        			<li>1983</li>
								        			<li>1982</li>
								        			<li>1981</li>
								        			<li>1980</li>
								        			<li>1979</li>
								        			<li>1978</li>
								        			<li>1977</li>
								        			<li>1976</li>
								        			<li>1975</li>
								        			<li>1974</li>
								        			<li>1973</li>
								        			<li>1972</li>
								        			<li>1971</li>
								        			<li>1970</li>
									        	</ul>
									        </div>
										</div>
										<div class="fl">
		            						<input type="hidden" class="schoolYearEnd" value="" name="schoolYearEnd">
								        	<input type="button" value="End year" class="profile_select_139 profile_select_normal select_schoolYearEnd" id="eb_end_year">
								        	<span for="endTime" generated="true" class="error" id="error_eb_endTime" style="display:none">End year cannot be empty！</span>
											<div class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
									            	<li>2025</li>
									            	<li>2024</li>
									            	<li>2023</li>
									            	<li>2022</li>
									           		<li>2021</li>
									            	<li>2020</li>
									            	<li>2019</li>
									            	<li>2018</li>
									            	<li>2017</li>
									            	<li>2016</li>
									            	<li>2015</li>
								        			<li>2014</li>
								        			<li>2013</li>
								        			<li>2012</li>
								        			<li>2011</li>
								        			<li>2010</li>
								        			<li>2009</li>
								        			<li>2008</li>
								        			<li>2007</li>
								        			<li>2006</li>
								        			<li>2005</li>
								        			<li>2004</li>
								        			<li>2003</li>
								        			<li>2002</li>
								        			<li>2001</li>
								        			<li>2000</li>
								        			<li>1999</li>
								        			<li>1998</li>
								        			<li>1997</li>
								        			<li>1996</li>
								        			<li>1995</li>
								        			<li>1994</li>
								        			<li>1993</li>
								        			<li>1992</li>
								        			<li>1991</li>
								        			<li>1990</li>
								        			<li>1989</li>
								        			<li>1988</li>
								        			<li>1987</li>
								        			<li>1986</li>
								        			<li>1985</li>
								        			<li>1984</li>
								        			<li>1983</li>
								        			<li>1982</li>
								        			<li>1981</li>
								        			<li>1980</li>
								        			<li>1979</li>
								        			<li>1978</li>
								        			<li>1977</li>
								        			<li>1976</li>
								        			<li>1975</li>
								        			<li>1974</li>
								        			<li>1973</li>
								        			<li>1972</li>
								        			<li>1971</li>
								        			<li>1970</li>
									        	</ul>
									        </div>
	            						</div>
	            						<div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="button" value="save" class="btn_profile_save" onclick="saveEducationBackground();">
						          		<a class="btn_profile_cancel" href="javascript:;">cancel</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="eduId" value="">
            			</form><!--end .educationalForm-->
            		</div><!--end .educationalEdit-->
            		<div class="educationalAdd pAdd">
            			
						<#if EducationBackground??>
							School name： ${EducationBackground.school_name!""} | educational background： ${EducationBackground.studyRecord!""} | Professional Name： ${EducationBackground.major!""} | start time： ${EducationBackground.startYear!""}year | End time：  ${EducationBackground.endYear!""}year
						<#else>
							Educational background can fully reflect your learning and professional abilities！<br>
						</#if>
						
						<#if EducationBackground??>
							<span>Revise educational experience</span>
						<#else>
							<span>Add educational experience</span>
						</#if>
						
            		</div><!--end .educationalAdd-->
            	</div><!--end #educationalBackground-->
            	
            	
            	
<!-----------------------------------------------------自我描述--------------------------------------------------->
            	<div class="profile_box" id="selfDescription">
            		<h2>Self description</h2>
            		<span class="c_edit dn"></span>
            		<div class="descriptionShow dn">
            		</div><!--end .descriptionShow-->
            		<div class="descriptionEdit dn">
            			<form class="descriptionForm">
	            			<table>
	            				<tbody><tr>
									<td colspan="2">
										<textarea class="s_textarea" name="selfDescription" placeholder="Please enter a self description" id="user_selfDescription"></textarea>
										<div class="word_count">You can also input <span>500</span> word</div>
									</td>
	            				</tr>
	            				<tr>
	            					<td colspan="2">
										<input type="button" value="save" class="btn_profile_save" onclick="saveSelfDescription();">
						          		<a class="btn_profile_cancel" href="javascript:;">cancel</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
            			</form><!--end .descriptionForm-->
            		</div><!--end .descriptionEdit-->
		        		<div class="descriptionAdd pAdd">
		        			<#if user.content??>
								Self description： ${user.content!""}
		        			<#else>
								Describe your personality, hobbies, and attractive experiences, etc！<br>
								Let the enterprise understand the diversity of you！
		        			</#if>
	            			
							<#if user.content??>
		        				<span>Modify self description</span>
		        			<#else>
		        				<span>Add self description</span>
		        			</#if>
		        		</div><!--end .descriptionAdd-->
            	</div><!--end #selfDescription-->
<!-----------------------------------------------------作品展示--------------------------------------------------->
            	<div class="profile_box" id="worksShow">
            		<h2>Exhibition of works</h2>
            		<span class="c_add dn"></span>
            		<div class="workShow dn">
        				<ul class="slist clearfix"></ul>
            		</div><!--end .workShow-->
            		<div class="workEdit dn">
            			<form class="workForm">
	            			<table>
	            				<tbody><tr>
							      	<td>
							        	<input type="text" placeholder="Please enter the work link" name="workLink"  id="ws_href">
							      	</td>
							    </tr>
	            				<tr>
									<td>
										<textarea maxlength="100" class="s_textarea" name="workDescription" placeholder="Please enter explanatory text"  id="ws_description"></textarea>
										<div class="word_count">You can also input <span id="1">100</span> word</div>
									</td>
	            				</tr>
	            				<tr>
	            					<td>
										<input type="button" onclick="saveWorkShow();" value="save"  class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">cancel</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="showId" value="">
            			</form><!--end .workForm-->
            		</div><!--end .workEdit-->
		        		<div class="workAdd pAdd">
		        			<#if WorkShow??>
								Work link： ${WorkShow.url!""} | Work Description： ${WorkShow.content!""}
		        			<#else>
								Good works speak！<br>
								Come and showcase your work to impress the company！
		        			</#if>
		        			
		        			<#if WorkShow??>
		        				<span>Display of modified works</span>
		        			<#else>
		        				<span>Add work display</span>
		        			</#if>
		        		</div><!--end .workAdd-->
            	</div><!--end #worksShow-->
				<input type="hidden" id="resumeId" value="268472">
            </div><!--end .content_l-->
            <div class="content_r">
            	

				

            </div><!--end .content_r-->
        </div>
        
      <input type="hidden" id="userid" name="userid" value="314873">
<#include "../common/alert.ftl"/>
<!-------------------------------------弹窗lightbox ----------------------------------------->

	
	
	
    
   
    
   
<!------------------------------------- end ----------------------------------------->  

<script src="/home/style/js/Chart.min.js" type="text/javascript"></script>
<script src="/home/style/js/profile.min.js" type="text/javascript"></script>
<!-- <div id="profileOverlay"></div> -->


<#include "../common/footer.ftl"/>

<script src="/home/style/js/core.min.js" type="text/javascript"></script>
<script src="/home/style/js/popup.min.js" type="text/javascript"></script>



<script type="text/javascript">
window.onload = function(){
<!-----------修改时  期望工作部分赋值---------------------->
	<#if ExpectWork??>
		document.getElementById("select_expectCity").value='${ExpectWork.city!""}';
		var type = '${ExpectWork.type!"full-time"}';
		if(type =="兼职"){
			document.getElementById("ew_type2").click();
		}
		if(type =="实习"){
			document.getElementById("ew_type3").click();
		}
		document.getElementById("select_expectSalary").value='${ExpectWork.money!""}';
		document.getElementById("expectPosition").value='${ExpectWork.position!""}';
	</#if>
<!-----------修改时  工作经历部分赋值---------------------->
	<#if WorkExperience??>
		document.getElementById("we_company_name").value='${WorkExperience.name!""}';
		document.getElementById("we_position_name").value='${WorkExperience.position!""}';
		document.getElementById("we_start_year").value='${WorkExperience.startYear!""}';
		document.getElementById("we_start_month").value='${WorkExperience.startMonth!""}';
		document.getElementById("we_end_year").value='${WorkExperience.endYear!""}';
		document.getElementById("we_end_month").value='${WorkExperience.endMonth!""}';
	</#if>
<!-----------修改时  项目经验部分赋值---------------------->
	<#if ProjectExperience??>
		document.getElementById("pw_project_name").value='${ProjectExperience.name!""}';
		document.getElementById("pw_position_name").value='${ProjectExperience.position!""}';
		document.getElementById("pw_start_year").value='${ProjectExperience.startYear!""}';
		document.getElementById("pw_start_month").value='${ProjectExperience.startMonth!""}';
		document.getElementById("pw_end_year").value='${ProjectExperience.endYear!""}';
		document.getElementById("pw_end_month").value='${ProjectExperience.endMonth!""}';
		document.getElementById("pw_project_description").value='${ProjectExperience.content!""}';
	</#if>
<!-----------修改时  教育背景部分赋值---------------------->
	<#if EducationBackground??>
		document.getElementById("eb_school_name").value='${EducationBackground.school_name!""}';
		document.getElementById("eb_degree").value='${EducationBackground.studyRecord!""}';
		document.getElementById("eb_start_year").value='${EducationBackground.startYear!""}';
		document.getElementById("eb_end_year").value='${EducationBackground.endYear!""}';
		document.getElementById("eb_major").value='${EducationBackground.major!""}';
	</#if>
<!-----------修改时  自我描述部分赋值---------------------->
	<#if user.content??>
		document.getElementById("user_selfDescription").value='${user.content!""}';
	</#if>
<!-----------修改时  作品展示部分赋值---------------------->
	<#if WorkShow??>
		document.getElementById("ws_href").value='${WorkShow.url!""}';
		document.getElementById("ws_description").value='${WorkShow.content!""}';
	</#if>
	
	
}
<!----------------期望工作中三个工作类别的取值------------------>
document.getElementById("ew_type1").onclick = function(){
		var type = $("#ew_type1").val();
        $("#work_type").val(type);
}
document.getElementById("ew_type2").onclick = function(){
		var type = $("#ew_type2").val();
        $("#work_type").val(type);
}
document.getElementById("ew_type3").onclick = function(){
		var type = $("#ew_type3").val();
        $("#work_type").val(type);
}

//上传图片
function upload(){
	if($("#headPic").val() == '')return;
	//new FormData():异步上传二进制文件。
	var formData = new FormData();
	//取出所选图片中的第一张
	formData.append('photo',document.getElementById('headPic').files[0]);
	$.ajax({
		url:'/upload/upload_photo',
		type:'post',
		data:formData,
		//用ajax上传文件时候，必须设置contentType:false,processData:false
		contentType:false,
		processData:false,
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Upload successful！└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				$("#preview-user-photo").attr('src','/photo/view?filename=' + data.data);
				$("#edit-preview-user-photo").attr('src','/photo/view?filename=' + data.data);
				$("#user_headPic").val(data.data);
			}else{
				$("#errorMsg").html("Upload failed，"+data.msg+"(ㄒoㄒ)");
				$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
			}
		},
		error:function(data){
			$("#errorMsg").html("Upload failed, please upload a file with the correct format or size!(ㄒoㄒ)");
			$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		}
	});
}
//保存基本个人信息
function saveBasicInfo()
{
	var username = $("#name").val();
	var sex_name = $('input[type="radio"]:checked',profileForm).val(); 
	var degree = $("#select_topDegree").val();
	var workExperience = $("#select_workyear").val();
	var mobile = $("#tel").val();
	var headPic = $("#user_headPic").val();
	console.log(sex_name)
	if(sex_name == "Man")
	{
		var sex = 1;
	}else if(sex_name == "Woman")
	{
		var sex = 2;
	}else{
		var sex = 0;
	}
	$('#error_username').css('display','none');
	$('#error_mobile').css('display','none');
	//进行统一表单非空验证
	if(!checkForm('profileForm'))
	{
		return;
	}
	
	
	$.ajax({
		url:'/home/user/save',
		dataType:'json',
		type:'post',
		data:{username:username,sex:sex,degree:degree,workExperience:workExperience,mobile:mobile,headPic:headPic},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Personal information saved successfully! Automatically refresh the page and update data after 3 seconds！└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
				switch(data.code){
            				case -1000:
            					$('#error_username').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -1014:
            					$('#error_mobile').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				default:
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
							}
				}		
		}
	});
}
//保存期望工作
function saveExpectWork()
{
	var city = $("#select_expectCity").val();
	var type = $("#work_type").val();
	var money = $("#select_expectSalary").val();
	var position = $("#expectPosition").val();
	if(city == "无要求")
	{
		city = "";
	}
	$.ajax({
		url:'/home/resume/save_expect_work',
		dataType:'json',
		type:'post',
		data:{city:city,type:type,money:money,position:position},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Expected work to be saved successfully! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
				}
		}
	});
}

//保存工作经历
function saveWorkExperience()
{
	var name = $("#we_company_name").val();
	var position = $("#we_position_name").val();
	var startYear = $("#we_start_year").val();
	var startMonth = $("#we_start_month").val();
	var endYear = $("#we_end_year").val();
	var endMonth = $("#we_end_month").val();
	
	$('#error_company_name').css('display','none');
	$('#error_position_name').css('display','none');
	$('#error_startTime').css('display','none');
	$('#error_endTime').css('display','none');
	//进行统一表单非空验证
	if(!checkForm('workExperienceForm'))
	{
		return;
	}
	//开始时间非空判断
	if(startYear=="Starting year" || startMonth == "Starting month")
	{
		$('#error_startTime').css('display','block');
		$("#errorMsg").html("Start time cannot be empty！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	//结束时间非空判断
	if(endYear=="End year" || endMonth == "End Month")
	{
		$('#error_endTime').css('display','block');
		$("#errorMsg").html("End time cannot be empty！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	//时间不符合规范
	if(endYear < startYear || (endYear == startYear && startMonth > endMonth))
	{
		$("#errorMsg").html("The start time cannot be greater than the end time！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	
	$.ajax({
		url:'/home/resume/save_work_experience',
		dataType:'json',
		type:'post',
		data:{name:name,position:position,startYear:startYear,startMonth:startMonth,endYear:endYear,endMonth:endMonth},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Work experience saved successfully! Automatically refresh the page and update data after 3 seconds！└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
				switch(data.code){
            				case -4002:
            					$('#error_company_name').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -4003:
            					$('#error_position_name').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
        					case -4004:
            					$('#error_startTime').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
        					case -4005:
            					$('#error_endTime').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				default:
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
							}
				}		
		}
	});
	
}
//保存项目经验
function saveProjectExperience()
{
	var project = $("#pw_project_name").val();
	var position = $("#pw_position_name").val();
	var startYear = $("#pw_start_year").val();
	var startMonth = $("#pw_start_month").val();
	var endYear = $("#pw_end_year").val();
	var endMonth = $("#pw_end_month").val();
	var content = $("#pw_project_description").val();
	
	$('#error_pw_project_name').css('display','none');
	$('#error_pw_position_name').css('display','none');
	$('#error_pw_startTime').css('display','none');
	$('#error_pw_endTime').css('display','none');
	
	//进行统一表单非空验证
	if(!checkForm('projectExperienceForm'))
	{
		return;
	}
	
	//开始时间非空判断
	if(startYear=="开始年份" || startMonth == "开始月份")
	{
		$('#error_pw_startTime').css('display','block');
		$("#errorMsg").html("Start time cannot be empty！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	//结束时间非空判断
	if(endYear=="结束年份" || endMonth == "结束月份")
	{
		$('#error_pw_endTime').css('display','block');
		$("#errorMsg").html("End time cannot be empty！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	//时间不符合规范
	if(endYear < startYear || (endYear == startYear && startMonth > endMonth))
	{
		$("#errorMsg").html("The start time cannot be greater than the end time！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	$.ajax({
		url:'/home/resume/save_project_experience',
		dataType:'json',
		type:'post',
		data:{name:project,position:position,startYear:startYear,startMonth:startMonth,endYear:endYear,endMonth:endMonth,content:content},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Project experience saved successfully! Automatically refresh the page and update data after 3 seconds！└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
				switch(data.code){
            				case -4010:
            					$('#error_pw_project_name').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -4011:
            					$('#error_pw_position_name').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
        					case -4007:
            					$('#error_pw_startTime').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
        					case -4008:
            					$('#error_pw_endTime').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				default:
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
							}
				}		
		}
	});
}

//保存教育背景
function saveEducationBackground()
{
	var school_name = $("#eb_school_name").val();
	var major = $("#eb_major").val();
	var studyRecord = $("#eb_degree").val();
	var startYear = $("#eb_start_year").val();
	var endYear = $("#eb_end_year").val();
	
	$('#error_eb_school_name').css('display','none');
	$('#error_eb_major').css('display','none');
	$('#error_eb_startTime').css('display','none');
	$('#error_eb_endTime').css('display','none');

	//进行统一表单非空验证
	if(!checkForm('educationBackgroundForm'))
	{
		return;
	}
	//开始年份非空判断
	if(startYear=="开始年份")
	{
		$('#error_eb_startTime').css('display','block');
		$("#errorMsg").html("The start year cannot be empty！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	//结束年份非空判断
	if(endYear=="结束年份")
	{
		$('#error_eb_endTime').css('display','block');
		$("#errorMsg").html("End year cannot be empty！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	//时间不符合规范
	if(endYear < startYear)
	{
		$("#errorMsg").html("The start year cannot be greater than the end year！(ㄒoㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
		return;
	}
	
	$.ajax({
		url:'/home/resume/save_education_background',
		dataType:'json',
		type:'post',
		data:{school_name:school_name,major:major,startYear:startYear,studyRecord:studyRecord,endYear:endYear},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Education background saved successfully! Automatically refresh the page and update data after 3 seconds！└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
				switch(data.code){
            				case -4015:
            					$('#error_eb_school_name').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				case -4016:
            					$('#error_eb_major').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
        					case -4013:
            					$('#error_eb_startTime').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
        					case -4014:
            					$('#error_eb_endTime').css('display','block');
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
            				default:
            					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
            					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
            					break;
							}
				}		
		}
	});
	
}
//保存自我描述
function saveSelfDescription()
{
	var content = $("#user_selfDescription").val();
	$.ajax({
		url:'/home/user/save_self_description',
		dataType:'json',
		type:'post',
		data:{content:content},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Self description saved successfully! Automatically refresh the page and update data after 3 seconds！└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
				}
		}
	});
}


//保存作品展示
function saveWorkShow()
{
	var url = $("#ws_href").val();
	var content = $("#ws_description").val();
	$.ajax({
		url:'/home/resume/save_work_show',
		dataType:'json',
		type:'post',
		data:{content:content,url:url},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Work display saved successfully! Automatically refresh the page and update data after 3 seconds！└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
				}
		}
	});
 	

}


</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>