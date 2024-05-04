<!--我的公司ftl-->
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>My company - Lagao - the most professional Internet recruitment platform</title>
<meta content="23635710066417756375" property="qc:admins">

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

<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="/home/style/js/conv.js" type="text/javascript"></script>
<script src="/home/style/js/setting.js"></script>
<script src="/home/common/confirm_null.js"></script>
<body>
<div id="body">
	<#include "../common/top_menu.ftl"/>
    <div id="container">
        <div class="clearfix">
        				
            <div class="content_l">           
	                <div class="c_detail">
	                	<div style="background-color:#fff;" class="c_logo">
		                	<a title="上传公司LOGO" id="logoShow" href="javascript:void(0);" onclick="uploadPhoto()">
                			<img width="190" id="preview_company_photo" height="190" alt="公司logo" src="/home/style/images/logo_default.png">
                        	<span>Replace company images<br>Click on the pencil next to the company name to save</span>
	                        </a>
		                </div>
		                <input type="file" id="company_photo_file" style="display:none;" onchange="uploadCompanyPhoto()">
		             
		                
	                    <div class="c_box companyName">
	                    
                    		<#if Company??>
                    			<h2 title="${Company.name}">${Company.name}</h2>
		                    	
		                		
		                    	<#if Company.state == "Not certified">
		                    		<em class="unvalid"></em>
		                			<span class="va dn">Uncertified enterprises in the pull hook industry</span>
		                    		<a  class="applyC" href="javascript:void(0);" onclick="applyConfirm('${Company.id}')">ApplyAudit</a>
		                    	</#if>
	                    		<#if Company.state == "To be reviewed">
	                    			<em class="unvalid"></em>
		                			<span class="va dn">Uncertified enterprises in the pull hook industry</span>
		                    		<a  class="applyC" href="javascript:void(0);">UnAudited</a>
		                    	</#if>
		                    	<#if Company.state == "Certified">
		                    		<img src="/home/style/images/valid.png" width="15" height="19" style="margin-bottom:-4px;" title="Lago certified enterprise" />
		                    		<a  class="applyC" href="javascript:void(0);">Certified</a>
		                    	</#if>
		                    	
		                        <div class="clear"></div>
		               			<h1 title="${Company.name}" class="fullname">${Company.name}</h1>
                    		<#else>
                    			<h2 title="Come and fill in the company name quickly">Come and fill in the company name quickly</h2>
		                    	<em class="unvalid"></em>
		                		<span class="va dn">Uncertified enterprises in the pull hook industry</span>
		                    	
		                    	<a class="applyC"  href="javascript:void(0);" onclick="tips();">Applying for certification</a>
		                        <div class="clear"></div>
		               			<h1 title="Come and fill in the company name quickly" class="fullname">Come and fill in the company name quickly</h1>
                    		</#if>
               			             
	                        <form class="clear editDetail dn" id="editDetailForm">
	                        	<input type="hidden" id="company_photo" value="common/logo_default.png">
	                            <input type="text" placeholder="Please enter the company name, limited to 30 characters"  maxlength="30" class="require" value="" name="companyShortName" id="companyShortName" tips="Company name cannot be empty！"  attributes="error_company_name">
	                            <span for="company_name" generated="true" class="error" id="error_company_name" style="display:none">Company name cannot be empty！</span>
	                            
	                            <input type="text" placeholder="One sentence description of the company's strengths, core values, limited to 50 words" maxlength="50" class="require" value="" name="companyFeatures" id="companyFeatures" tips="Company values cannot be empty！"  attributes="error_company_value">
	                            <span for="company_value" generated="true" class="error" id="error_company_value" style="display:none">Company values cannot be empty！</span>
	                            
	                            <input type="hidden" value="25927" id="companyId" name="companyId">
	                            <input type="button" value="preserve" id="saveDetail" class="btn_small" onclick="saveCompanyDetailForm();">
	                            <a id="cancelDetail" class="btn_cancel_s" >cancel</a>
		                    </form>
	                            
	                        <div class="clear oneword"><img width="17" height="15" src="/home/style/images/quote_l.png">
	                        	<#if Company??>
	                        		<span>${Company.value}</span> 
	                        	<#else>
	                        		<span>Come and fill in the company's values quickly！</span>
	                        	</#if>
		                        <img width="17" height="15" src="/home/style/images/quote_r.png">
	                        </div>
	                        <h3 class="dn">Selected label</h3>
	                        <ul style="overflow:auto" id="hasLabels" class="reset clearfix">
		                        <#if Tags??>
		                           <#if Tags?size gt 0>
							    		<#list Tags as tags>
		                        			<li><span>${tags!""}</span></li>
	                            		</#list>
	                            	</#if>
	                            </#if>
                            	<li class="link">Edit tags</li>
	                        </ul>
	                        <div class="dn" id="addLabels">
	                        	<font color="red">Use English commas in the middle of the label to separate them: </font>
	                        	<input type="hidden" value="1" id="labelPageNo">
                            	<input type="text" placeholder="Add custom labels" name="label" id="label" class="label_form fr">
	                            <div class="clear"></div>
	                            <ul class="reset clearfix"> </ul>
	                            <a id="saveLabels" class="btn_small" href="javascript:void(0)" onclick="saveCompanyTags();">preserve</a>
	                            <a id="cancelLabels" class="btn_cancel_s" href="javascript:void(0)">cancel</a>
	                        </div>
	                    </div>
	                    <a title="Edit basic information" class="c_edit" id="editCompanyDetail" href="javascript:void(0);"></a>
	                	<div class="clear"></div>
	                </div>
                
                	<div class="c_breakline"></div>
       
       				<div id="Product">
        					        				
	        					<div class="product_wrap">
	                
					            	<!--产品编辑-->
					                <dl id="newProduct" class="newProduct dn">
					                	<dt>
					                    	<h2><em></em>Company products</h2>
					                    </dt>
					                    <dd id="company_product_edit">
					                       
					                            <div class="new_product">
					                            	
						                            <div class="product_upload productShow" >
						                            	<img width="380" height="220" id="edit_preview_product_photo" src="/photo/view?filename=common/product_default.png">
							                        	<span>Replace product images<br>380*220px Less than 1M</span>
							                        	<input type="file" style="display:none;" onchange="uploadCompanyProductPhoto()">
							                        </div>
							                        <input type="hidden" value="common/product_default.png" id="product_photo"> 
							                        <input type="file"  id="product_photo_file" title="支持jpg、jpeg、gif、png格式，文件小于1M" onchange="uploadCompanyProductPhoto();">
							                    	<input type="hidden" value="3" name="type" class="type"> 
							                    </div>
					                            
					                            <div class="cp_intro">
					                               	<input type="text" placeholder="Please enter the product name"  name="product" id="company_product_name">
					                                <textarea placeholder="Please provide a brief description of the product's positioning, features, user group, etc" maxlength="500"  class="s_textarea" name="productProfile" id="company_product_description"></textarea>
					                                <div class="clear"></div>
					                                <input type="button" value="preserve" class="btn_small" onclick="saveCompanyProduct();">
					                                <a class="btn_cancel_s product_delete" href="javascript:void(0)">cancel</a>
					                        		<input type="hidden" value="11867" class="product_id">
					                            </div>
											
					                    </dd>
					                </dl>
					                <!--有产品-->
					                <dl class="c_product" id="company_product_show">
					                	<dt>
					                    	<h2><em></em>Company products</h2>
					                    </dt>
					                    <dd >
					                    	<img width="380" height="220" id="preview_product_photo" alt="" src="/photo/view?filename=common/product_default.png">
				                        	<div class="cp_intro">
				                        	<#if Company??>
				                        		<#if Company.productTitle??>
				                        			<h3><a target="_blank" href="http://www.weimob.com">${Company.productTitle!""}</a></h3>
				                        		<#else>
				                        			<h3><a target="_blank" href="http://www.weimob.com">Come and fill in the product title quickly</a></h3>
				                        		</#if>
						                            <div class="scroll-pane" style="overflow: hidden; padding: 0px; width: 260px;">
						                            <div class="jspContainer" style="width: 260px; height: 140px;"><div class="jspPane" style="padding: 0px; top: 0px; width: 260px;"><div>
						                         <#if Company.productContent??>
				                        			${Company.productContent!""}
				                        		<#else>
													The fragrance of wine is not afraid of deep alleys, it is already outdated！<br>
													Show off your excellent products to attract talent to watch！<br>
				                        		</#if>
				                        	   	
						                            </div></div></div></div>
						                    <#else>       
						                            <h3><a target="_blank" href="http://www.weimob.com">Come and fill in the product title quickly</a></h3>
						                       		<div class="scroll-pane" style="overflow: hidden; padding: 0px; width: 260px;">
						                            <div class="jspContainer" style="width: 260px; height: 140px;"><div class="jspPane" style="padding: 0px; top: 0px; width: 260px;"><div>
																The fragrance of wine is not afraid of deep alleys, it is already outdated！<br>
																Show off your excellent products to attract talent to watch！<br>
													 </div></div></div></div>
				                        	</#if>
				                        		
					                        </div>
					                        <a title="Edit company products" class="c_edit product_edit" href="javascript:void(0)"></a>
					                    </dd>
					                </dl>
	            
	              				</div>
        			</div>   <!-- end #Product --> 
       	
       				<div id="Profile">
				        	<div class="profile_wrap">
					             <!--无介绍 -->
									<dl class="c_section dn">
					                	<dt>
					                    	<h2><em></em>Company Introduction</h2>
					                    </dt>
					                    <dd>
					                    	<div class="addnew">
												Detailed company development history to help job seekers better understand you!<br>
					                            <a id="addIntro" href="javascript:void(0)">+Add company introduction</a>
					                        </div>
					                    </dd>
					                </dl>
					            <!--编辑介绍-->
					                <dl class="c_section newIntro dn">
					                    <dt>
					                        <h2><em></em>Company Introduction</h2>
					                    </dt>
					                    <dd>
						                    <form id="companyDesForm">
						                        <textarea placeholder="Please provide a detailed description of the company profile, corporate culture, etc. in sections" name="companyProfile" id="companyProfile"></textarea>
						                        <div class="word_count fr">You can also input <span>1000</span> word</div>
						                        <div class="clear"></div>
						                        <input type="button" value="preserve" id="submitProfile" class="btn_small" onclick="saveCompanyIntroducation();">
						                        <a id="delProfile" class="btn_cancel_s" href="javascript:void(0)">cancel</a>
						                    </form>
					                    </dd>
					                </dl>
					            
					            <!--有介绍-->
					               <dl class="c_section">
					               		<dt>
					                   		<h2><em></em>Company Introduction</h2>
					                   	</dt>
					                   	<dd>
					                   		<#if Company??>
					                   			<#if Company.introduction??>
					                   				<div class="c_intro">${Company.introduction!""}</div>
					                   				<a title="Editorial company introduction" id="editIntro" class="c_edit" href="javascript:void(0)"></a>
					                   			<#else>
					                   				<div class="addnew">
														Detailed company development history to help job seekers better understand you!<br>
							                            <a id="addIntro" href="javascript:void(0)">+Add company introduction</a>
							                        </div>
					                   			</#if>
					                   		<#else>
					                   			<div class="addnew">
													Detailed company development history to help job seekers better understand you!<br>
						                            <a id="addIntro" href="javascript:void(0)">+Add company introduction</a>
						                        </div>
					                   		</#if>
					                   		
					                   	</dd>
					               </dl>
				            </div>
				                 	
	     			</div><!-- end #Profile -->
      	
      
	    
	        			<!--无招聘职位-->
						<dl id="noJobs" class="c_section">
		                	<dt>
		                    	<h2><em></em>Recruitment positions</h2>
		                    </dt>
		                    <#if PositionList??>
		                    	 <dd>
			                    	<#if PositionList?size gt 0>
				 						<#list PositionList as position>
				 							<p><a href="/home/position/detail?id=${position.id!""}"><font size="3">${position_index+1}.${position.name!""}</a></font></p>
				 						</#list>
				 					</#if>
			                    </dd>
		                    <#else>
		                    	<dd>
			                    	<div class="addnew">
										Publish the necessary talent information to allow Bole and Qianlima to meet as soon as possible……<br>
			                            <a href="/home/index/publish_position">+Add recruitment position</a>
			                        </div>
			                    </dd>
		                    </#if>
		                    
		                </dl>
	          	
	          	<input type="hidden" value="" name="hasNextPage" id="hasNextPage">
	          	<input type="hidden" value="" name="pageNo" id="pageNo">
	          	<input type="hidden" value="" name="pageSize" id="pageSize">
          		<div id="flag"></div>
            </div>	<!-- end .content_l -->
            
            <div class="content_r">
            	<div id="Tags">
	            	<div id="c_tags_show" class="c_tags solveWrap">
	                    <table>
	                        <tbody><tr>
	                            <td width="45">place</td>
	                            <#if Company??>
	                            	<#if Company.locale??>
	                            		<td>${Company.locale!""}</td>
	                            	<#else>
	                            		<td>Come and fill in the company location quickly</td>
	                            	</#if>
	                            <#else>
	                            	<td>Come and fill in the company location quickly</td>
	                            </#if>
	                        </tr>
	                        <tr>
	                            <td>field</td>
	                             <#if Company??>
	                            	<#if Company.territory??>
	                            		<td>${Company.territory!""}</td>
	                            	<#else>
	                            		<td>Come and fill in the company's field quickly</td>
	                            	</#if>
	                            <#else>
	                            	<td>Come and fill in the company's field quickly</td>
	                            </#if>
	                        </tr>
	                        <tr>
	                            <td>scale</td>
	                             <#if Company??>
	                            	<#if Company.scale??>
	                            		<td>${Company.scale!""}</td>
	                            	<#else>
	                            		<td>Come and fill in the company size quickly</td>
	                            	</#if>
	                            <#else>
	                            	<td>Come and fill in the company size quickly</td>
	                            </#if>
	                        </tr>
	                        <tr>
	                            <td>homepage</td>
	                            <td>
                            	 	<#if Company??>
		                            	<#if Company.territory??>
		                            		<a rel="nofollow" title="${Company.url!""}" href="javascript:void(0);">${Company.url!""}</a>
		                            	<#else>
											Come and fill out the company website now
		                            	</#if>
		                            <#else>
										Come and fill out the company website now
		                            </#if>
	                            </td>
	                        </tr>
	                    </tbody></table>
	                    <a id="editTags" class="c_edit" style="right: -35px" href="javascript:void(0)"></a>
	                </div>
	                <div id="c_tags_edit" class="c_tags editTags dn">
		                <form id="tagForms">
		                    <table>
		                        <tbody><tr>
		                            <td>place</td>
		                            <td>
		                            	<input type="text" class="require" id="company_locale" placeholder="Please enter the location" value="Shanghai"  tips="Company location cannot be empty！"  attributes="error_company_locale">
		                            	<span for="company_locale" generated="true" class="error" id="error_company_locale" style="display:none">Company location cannot be empty！</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>领域</td>
		                            <td>
		                            	<input type="text" class="require" id="company_territory" placeholder="请输入领域"  tips="Company field cannot be empty！"  attributes="error_company_territory">
		                            	<span for="company_territory" generated="true" class="error" id="error_company_territory" style="display:none">Company field cannot be empty！</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>scale</td>
		                            <td>
		                            	<input type="hidden" value="150-500人" id="companySize" name="companySize">
		                            	<input type="button" value="150-500人"   id="select_sca" class="select_tags require"  tips="Company size cannot be empty！"  attributes="error_company_scale">
		                                <div class="selectBox dn" id="box_sca" style="display: none;">
		                                    <ul class="reset">
		                            			<li>Less than 15 people</li>
		                            			<li>15-50people</li>
		                            			<li>50-150people</li>
		                            			<li>150-500people</li>
		                            			<li>500-2000 people</li>
		                            			<li>Over 2000 people</li>
	                                    	</ul>
		                                </div>	
		                            	<span for="company_scale" generated="true" class="error" id="error_company_scale" style="display:none">Company size cannot be empty！</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>主页</td>
		                            <td>
                            			<input type="text" placeholder="Please enter the website address"  name="companyUrl" id="companyUrl" class="require"  tips="The company website cannot be empty！"  attributes="error_company_url">
                            			<span for="company_url" generated="true" class="error" id="error_company_url" style="display:none">The company website cannot be empty！</span>
		                            </td>
		                        </tr>
		                    </tbody></table>
		                    <input type="button" value="preserve" id="submitFeatures" class="btn_small" onclick="saveCompanyBasic();">
		                    <a id="cancelFeatures" class="btn_cancel_s" href="javascript:void(0)">cancel</a>
		                    <div class="clear"></div>
		            	</form>
	                </div>
       			</div><!-- end #Tags -->
       			
       			<dl class="c_section c_stages">
                	<dt>
                    	<h2><em></em>Financing stage</h2>
                    	<a title="Editing financing stage" class="c_edit" href="javascript:void(0)"></a>
                    </dt>
                    <dd>
                    	<ul class="reset stageshow">
                    		<#if Company??>
	                            	<#if Company.finance??>
	                            		<li>At present stage：<span class="c5">${Company.finance!""}</span></li>
	                            	</#if>
                            </#if>
                    	</ul>
                    	<form class="dn" id="stageform">
	                    	<ul id="stagesList" class="reset">
       		                    <li>
		                    		<label>At present stage</label>
		                    		<input type="hidden" class="select_invest_hidden" name="select_invest_hidden">
				                    <input type="button" value="Unfunded"  class="select_tags_short select_invest" id="company_finance">
				                    <div class="selectBoxShort dn" style="display: none;">
				                        <ul class="reset">
		                        			<li>Unfunded</li>
		                           			<li>Angel Wheel</li>
		                           			<li>A-wheel</li>
		                           			<li>B-wheel</li>
		                           			<li>C-wheel</li>
		                           			<li>D-wheel and above</li>
		                           			<li>listed company</li>
				                        </ul>
				                    </div>
		                    	</li>
		                    </ul>
		                    <input type="button" value="preserve" class="btn_small" onclick="saveCompanyFinance();">
		                    
		                    <a id="cancelStages" class="btn_cancel_s" href="javascript:void(0)">cancel</a>
		                    <div class="clear"></div>
		                    
		                    
		                   
		                </form>
                    </dd>
                </dl><!-- end .c_stages -->
       				
	      
	       		<div id="Member">		
	       		<!--有创始团队-->
		                <dl class="c_section c_member">
		                	<dt>
		                    	<h2><em></em>Founding team</h2>
		                    </dt>
		                    <dd> 
	       						<div class="member_wrap">
				                        <!-- 编辑创始人 -->
		                        		<div class="member_info newMember dn" id="edit_company_founder">
			                        		<form class="memberForm" id="founderForm">
			                        			<input type="hidden" value="common/default_headpic.png" id="founder_photo">
					                            <div class="new_portrait">
						                            <div class="portrait_upload dn portraitNo">
						                                <span>Upload founder profile picture</span>
						                            </div>
						                            <div class="portraitShow">
						                            	<img width="120" height="120" id="edit_preview_founder_photo" src="/home/style/images/leader_default.png">
							                        	<span>Change avatar</span>
							                        </div>
							                        <input type="file" title="Supports jpg, jpeg, gif, png formats, with files smaller than 1M" onchange="uploadCompanyFounderPhoto();" id="founder_photo_file">
							                    	<input type="hidden" value="7" name="type" class="type">
							                    	<input type="hidden" value="images/leader_default.png" name="photo" class="leaderInfos">
						                            <em>
														size：120*120px <br>
														size：Less than 1M
						                            </em>
						                        </div>
						                        <input type="text" placeholder="Please enter the founder's name"  class="require" id="company_founder_name" name="name" tips="The name of the founder of the company cannot be empty！"  attributes="error_company_founder_name">
						                        <span for="company_founder_name" generated="true" class="error" id="error_company_founder_name" style="display:none">The name of the founder of the company cannot be empty！</span>
					                            
					                            <input type="text" placeholder="Please enter the current position of the founder" value="ceo" class="require" id="company_founder_position" name="position" tips="The name of the founder of the company cannot be empty！"  attributes="error_company_founder_position">
					                            <span for="company_founder_position" generated="true" class="error" id="error_company_founder_position" style="display:none">The name of the founder of the company cannot be empty！</span>
					                           
					                            <div class="clear"></div>
					                            <input type="button" value="preserve" class="btn_small" onclick="saveCompanyFounder();">
				                                <a class="btn_cancel_s member_delete" href="javascript:void(0)">cancel</a>
				                        		<input type="hidden" value="11493" class="leader_id">
				                        	</form>
				                        </div>
				                        
				                        <!-- 显示创始人 -->
				                    	<div class="member_info" id="show_company_founder">
	                    					<a title="Editor Founder" class="c_edit member_edit" href="javascript:void(0)"></a>
				                        	<div class="m_portrait">
				                            	<div></div>
				                            	<img width="120" height="120" id="preview_founder_photo" alt="孙泰英" src="/home/style/images/leader_default.png">
					                        </div>
					                        
				                            <div class="m_name">
				                            	 <#if Company??>
					                            	<#if Company.founderName??>
					                            		${Company.founderName!""}
					                            	<#else>
														Founder position:empty
					                            	</#if>
					                            <#else>
													Founder position:empty
					                            </#if>
				                            </div>
				                             <#if Company??>
					                            	<#if Company.founderPosition??>
					                            		 <div class="m_position">${Company.founderPosition!""}</div>
					                            	<#else>
					                            		<div class="m_position">Founder position：empty</div>
					                            	</#if>
					                            <#else>
					                            	<div class="m_position">Founder position：empty</div>
				                            </#if>
				                           
				                    		<div class="m_intro"></div>
				                        </div>
				                        
				                     </div><!-- end .member_wrap -->
 		                    </dd>
		                </dl>
		       			       	</div> <!-- end #Member -->
	       	
	       	
	       
	       	
        </div>
   	</div>
<#include "../common/alert.ftl"/>
<!-------------------------------------弹窗lightbox  ----------------------------------------->

<!------------------------------------- end ----------------------------------------->

<script src="/home/style/js/company.min.js" type="text/javascript"></script>
<script>
var avatar = {};
avatar.uploadComplate = function( data ){
	var result = eval('('+ data +')');
	if(result.success){
		jQuery('#logoShow img').attr("src",ctx+ '/'+result.content);
		jQuery.colorbox.close();
	}
};
</script>
<#include "../common/footer.ftl"/>			

<script src="/home/style/js/core.min.js" type="text/javascript"></script>
<script src="/home/style/js/popup.min.js" type="text/javascript"></script>

<!--  -->
<script type="text/javascript">
window.onload = function(){

	<#if Company??>
		document.getElementById("companyShortName").value='${Company.name!""}';
		document.getElementById("companyFeatures").value='${Company.value!""}';
		document.getElementById("company_photo").value='${Company.photo!""}';
		$("#preview_company_photo").attr('src','/photo/view?filename=' + '${Company.photo!""}');
	<#else>
		document.getElementById("companyShortName").value='';
		document.getElementById("companyFeatures").value='';
	</#if>

	<#if Tags??>
		document.getElementById("label").value='${Company.tags!""}';
	<#else>
		document.getElementById("label").value='';
	</#if>

	<#if Company??>
		document.getElementById("company_product_name").value='${Company.productTitle!""}';
		document.getElementById("company_product_description").value='${Company.productContent!""}';
		$("#preview_product_photo").attr('src','/photo/view?filename=' + '${Company.productPhoto!""}');
		$("#edit_preview_product_photo").attr('src','/photo/view?filename=' + '${Company.productPhoto!""}');
		document.getElementById("product_photo").value='${Company.productPhoto!""}';
		
	<#else>
		document.getElementById("company_product_name").value='';
		document.getElementById("company_product_description").value='';
	</#if>

	<#if Company??>
		document.getElementById("company_locale").value="${Company.locale!''}";
		document.getElementById("company_territory").value='${Company.territory!""}';
		document.getElementById("companyUrl").value='${Company.url!""}';
		document.getElementById("select_sca").value='${Company.scale!""}';
	<#else>
		document.getElementById("company_locale").value='';
		document.getElementById("company_territory").value='';
		document.getElementById("companyUrl").value='';
	</#if>

	<#if Company??>
		document.getElementById("company_finance").value='${Company.finance!""}';
	<#else>
		document.getElementById("company_finance").value='';
	</#if>

	<#if Company??>
		document.getElementById("company_founder_name").value='${Company.founderName!""}';
		document.getElementById("company_founder_position").value='${Company.founderPosition!""}';
		document.getElementById("founder_photo").value='${Company.founderPhoto!""}';
		$("#edit_preview_founder_photo").attr('src','/photo/view?filename=' + '${Company.founderPhoto!""}');
		$("#preview_founder_photo").attr('src','/photo/view?filename=' + '${Company.founderPhoto!""}');
	<#else>
		document.getElementById("company_founder_name").value='';
		document.getElementById("company_founder_position").value='';
	</#if>
}
//打开上传公司图片窗口
function uploadPhoto(){
	$("#company_photo_file").click();
}
//上传公司创始人图片
function uploadCompanyFounderPhoto(){
		if($("#founder_photo_file").val() == '')return;
		var formData = new FormData();
		//取出所选图片中的第一张
		formData.append('photo',document.getElementById('founder_photo_file').files[0]);
		//进度条会话框打开
		$.ajax({
			url:'/upload/upload_photo',
			type:'post',
			data:formData,
			contentType:false,
			processData:false,
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("Upload successful！└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
					$("#edit_preview_founder_photo").attr('src','/photo/view?filename=' + data.data);
					$("#preview_founder_photo").attr('src','/photo/view?filename=' + data.data);
					$("#founder_photo").val(data.data);
				}else{
					$("#errorMsg").html("Upload failed，"+data.msg+"(ㄒoㄒ)");
					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
				}
			},
			error:function(data){
				$("#errorMsg").html("Upload failed, please upload a file with the correct format or size！(ㄒoㄒ)");
				$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
			}
		});
}
//上传公司产品图片
function uploadCompanyProductPhoto(){
	if($("#product_photo_file").val() == '')return;
		var formData = new FormData();
		//取出所选图片中的第一张
		formData.append('photo',document.getElementById('product_photo_file').files[0]);
		//进度条会话框打开
		$.ajax({
			url:'/upload/upload_photo',
			type:'post',
			data:formData,
			contentType:false,
			processData:false,
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("Upload successful！└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
					$("#edit_preview_product_photo").attr('src','/photo/view?filename=' + data.data);
					$("#preview_product_photo").attr('src','/photo/view?filename=' + data.data);
					$("#product_photo").val(data.data);
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
//上传公司图片
function uploadCompanyPhoto(){
		if($("#company_photo_file").val() == '')return;
		var formData = new FormData();
		//取出所选图片中的第一张
		formData.append('photo',document.getElementById('company_photo_file').files[0]);
		//进度条会话框打开
		$.ajax({
			url:'/upload/upload_photo',
			type:'post',
			data:formData,
			contentType:false,
			processData:false,
			success:function(data){
				if(data.code == 0){
					$("#successMsg").html("Upload successful！└(^o^)┘");
					$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
					$("#preview_company_photo").attr('src','/photo/view?filename=' + data.data);
					$("#company_photo").val(data.data);
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



//保存公司标题简介图片信息
function saveCompanyDetailForm()
{
	var name = $("#companyShortName").val();
	var value = $("#companyFeatures").val();
	var photo = $("#company_photo").val();
	
	$('#error_company_name').css('display','none');
	$('#error_company_value').css('display','none');
	//进行统一表单非空验证
	if(!checkForm('editDetailForm'))
	{
		return;
	}
	$.ajax({
		url:'/home/company/save_company_detail',
		dataType:'json',
		type:'post',
		data:{name:name,value:value,photo:photo},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("The company title and introduction have been successfully saved! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
					switch(data.code){
					case -5000:
    					$('#error_company_name').css('display','block');
    					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
    					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
    					break;
					case -5001:
    					$('#error_company_value').css('display','block');
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
//保存公司标签信息
function saveCompanyTags()
{
	var tags = $("#label").val();
	$.ajax({
		url:'/home/company/save_company_tags',
		dataType:'json',
		type:'post',
		data:{tags:tags},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Company label saved successfully! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
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
//保存公司介绍信息
function saveCompanyIntroducation(){
	var introduction = $("#companyProfile").val();
	$.ajax({
		url:'/home/company/save_company_introduction',
		dataType:'json',
		type:'post',
		data:{introduction:introduction},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Company introduction saved successfully! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
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

//保存公司产品信息
function saveCompanyProduct(){

	var productTitle = $("#company_product_name").val();
	var productContent = $("#company_product_description").val();
	var productPhoto = $("#product_photo").val();
	$.ajax({
		url:'/home/company/save_company_product',
		dataType:'json',
		type:'post',
		data:{productTitle:productTitle,productContent:productContent,productPhoto:productPhoto},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Company product saved successfully! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
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
//保存公司地点、领域、规模和网页信息
function saveCompanyBasic(){
	var locale = $("#company_locale").val();
	var territory = $("#company_territory").val();
	var scale = $("#select_sca").val();
	var url = $("#companyUrl").val();
	$('#error_company_locale').css('display','none');
	$('#error_company_scale').css('display','none');
	$('#error_company_territory').css('display','none');
	$('#error_company_url').css('display','none');
	//进行统一表单非空验证
	if(!checkForm('tagForms'))
	{
		return;
	}
	$.ajax({
		url:'/home/company/save_company_basic',
		dataType:'json',
		type:'post',
		data:{locale:locale,territory:territory,scale:scale,url:url},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Successfully saved company location, field, scale, and webpage information! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
					switch(data.code){
					case -5012:
    					$('#error_company_locale').css('display','block');
    					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
    					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
    					break;
					case -5013:
    					$('#error_company_territory').css('display','block');
    					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
    					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
    					break;
    				case -5014:
    					$('#error_company_url').css('display','block');
    					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
    					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
    					break;
    				case -5016:
    					$('#error_company_scale').css('display','block');
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
//保存公司融资阶段信息
function saveCompanyFinance()
{
	var finance = $("#company_finance").val();
	$.ajax({
		url:'/home/company/save_company_finance',
		dataType:'json',
		type:'post',
		data:{finance:finance},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("Successfully saved company financing stage information! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
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

//保存公司创始人信息
function saveCompanyFounder(){
	var founderName = $("#company_founder_name").val();
	var founderPosition = $("#company_founder_position").val();
	var founderPhoto = $("#founder_photo").val();
	
	$('#error_company_founder_position').css('display','none');
	$('#error_company_founder_name').css('display','none');
	//进行统一表单非空验证
	if(!checkForm('founderForm'))
	{
		return;
	}
	$.ajax({
		url:'/home/company/save_company_founder',
		dataType:'json',
		type:'post',
		data:{founderName:founderName,founderPosition:founderPosition,founderPhoto:founderPhoto},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("The founder information of the company has been successfully saved! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
					switch(data.code){
					case -5020:
    					$('#error_company_founder_position').css('display','block');
    					$("#errorMsg").html("Save failed，"+data.msg+"(ㄒoㄒ)");
    					$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
    					break;
					case -5019:
    					$('#error_company_founder_name').css('display','block');
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

//申请公司认证
function applyConfirm(i){
	$.ajax({
		url:'/home/company/apply_confirm',
		dataType:'json',
		type:'post',
		data:{id:i},
		success:function(data){
			if(data.code == 0){
				$("#successMsg").html("The company certification application has been successfully submitted! Automatically refresh the page and update data in 3 seconds!└(^o^)┘");
				$.colorbox({inline:true, href:$("#successTip"),title:"System prompt"});
				setTimeout(function(){  
						window.location.reload();//页面刷新
						},3000);
			}else{
					$("#errorMsg").html("Company certification application submission failed，"+data.msg+"(ㄒoㄒ)");
					$.colorbox({inline:true, href:$("#errorTip"),title:"系统提示System prompt"});
				}
		}
	});

}

//提示
function tips(){

		$("#errorMsg").html("The application for company certification has failed. Please fill in the basic company information first (ㄒㄒㄒ)");
		$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});

}
</script>


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>