<!--拉勾网首页ftl -->
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="/home/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Laguo - the most professional Internet recruitment platform</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="LaGou.com is a vertical recruitment website in the Internet field under 3W, and Internet career opportunities are all in LaGou.com" name="description">
<meta content="LaGou, LaGou, LaGou recruitment, LaGou, LaGou, Internet recruitment, LaGou Internet recruitment, mobile Internet recruitment, vertical Internet recruitment, WeChat recruitment, microblog recruitment, LaGou official website, LaGou encyclopedia, job hopping, high paid positions, Internet circles, IT recruitment, workplace recruitment, headhunting recruitment, O2O recruitment, LBS recruitment, social recruitment, campus recruitment, school recruitment, social recruitment, social recruitment" name="keywords">
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
<script src="/home/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="/home/style/js/additional-methods.js"></script>
<script src="/home/style/js/setting.js"></script>

<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="/home/style/js/conv.js"></script>
</head>
<body>
<div id="body">
	<#include "../common/top_menu.ftl"/>
    <div id="container">
		<div id="sidebar">
			<div class="mainNavs">
			
			<#if topPositionCategoryList?size gt 0>
				 <#list topPositionCategoryList as topPositionCategory>
					<div class="menu_box">
						<div class="menu_main">
							<h2>${topPositionCategory.name!""} <span></span></h2> <!--顶级-->
							<#if quickIndexList?size gt 0>
								<#list quickIndexList as quickIndex>
									<#if quickIndex.parentId._parentId == topPositionCategory.id>
				    					<a href="${quickIndex.url!""}">${quickIndex.name!""}</a> <!--快捷索引-->
				    				</#if>
				    			</#list>
				    		</#if>
						</div>
				   	<div class="menu_sub dn">
				   		<#if secondPositionCategoryList?size gt 0>
						  <#list secondPositionCategoryList as secondPositionCategory>
						  	<#if secondPositionCategory._parentId == topPositionCategory.id >
						    	<dl class="reset">
					        		<dt style="line-height: 1.2">
	        							${secondPositionCategory.name!""} <!--二级 -->
				        			</dt>
					        		<dd>
					        			<#if thirdPositionCategoryList?size gt 0>
							  				<#list thirdPositionCategoryList as thirdPositionCategory>
									   			<#if thirdPositionCategory._parentId == secondPositionCategory.id && secondPositionCategory._parentId == topPositionCategory.id>
									   				<a href="${thirdPositionCategory.url!""}">${thirdPositionCategory.name!""}</a>   <!--三级-->
									   			</#if>
											</#list>
										</#if>
									</dd>
								</dl>
							</#if>
						  </#list>
        				</#if>
					 </div><!-- end menu_sub dn -->
					</div><!-- end menu box -->
			 	</#list>
			 </#if>
			
			
			
			
			
			
		</div><!-- end main nvs -->
			
		</div>
        <div class="content">	
		<div id="search_box">
		
        <ul id="searchType" style="width: 130px">
    		<li data-searchtype="1" class="type_selected" id="selected_position">Position</li>
        	<li data-searchtype="4" id="selected_company">Company</li>
        	        </ul>
        <div class="searchtype_arrow" style="left: 95px"></div>
		        <input type="text" id="search_input" name="kd"  tabindex="1" value=""  placeholder="Please enter the position name" style="padding: 7px 8px 7px 40px; width: 436px"  />
		        <input type="hidden" name="spc" id="spcInput" value=""/>
		        <input type="hidden" name="pl" id="plInput" value=""/>
		        <input type="hidden" name="gj" id="gjInput" value=""/>
		        <input type="hidden" name="xl" id="xlInput" value=""/>
		        <input type="hidden" name="yx" id="yxInput" value=""/>
		        <input type="hidden" name="gx" id="gxInput" value="" />
		        <input type="hidden" name="st" id="stInput" value="" />
		        <input type="hidden" name="labelWords" id="labelWords" value="" />
		        <input type="hidden" name="lc" id="lc" value="" />
		        <input type="hidden" name="workAddress" id="workAddress" value=""/>
                <input type="hidden" name="city" id="cityInput" value=""/>
                <input type="button" id="search_button" value="search"  onclick="search();" />
				
   
</div>
<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<script type="text/javascript" src="/home/style/js/search.min.js"></script>
<dl class="hotSearch">
	<dt>Popular searches：</dt>
	<dd><a href="/home/position/list?search_value=Java开发员">Java developers</a></dd>
	<dd><a href="/home/position/list?search_value=Android开发员">Android Developer</a></dd>
	<dd><a href="/home/position/list?search_value=iOS开发员">IOS Developer</a></dd>
	<dd><a href="/home/position/list?search_value=html5开发员">HTML5 Developer</a></dd>
	<dd><a href="/home/position/list?search_value=产品经理">product manager</a></dd>
	<dd><a href="/home/position/list?search_value=销售经理">sales manager</a></dd>
	<dd><a href="/home/position/list?search_value=人事/HR">Personnel/HR</a></dd>
</dl>			

			
        	<ul id="da-thumbs" class="da-thumbs">
	        		        		<li >
	                    <a href="/home/company/detail?id=12" target="_blank">
	                        <img src="/home/style/images/a254b11ecead45bda166afa8aaa9c8bc.jpg" width="113" height="113" alt="association" />
	                        <div class="hot_info">
	                        	<h2 title="association">association</h2>
	                            <em></em>
	                            <p title="The world is better because of association">
									The world is better because of association
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="/home/company/detail?id=9" target="_blank">
	                        <img src="/home/style/images/c75654bc2ab141df8218983cfe5c89f9.jpg" width="113" height="113" alt="Taomi" />
	                        <div class="hot_info">
	                        	<h2 title="Taomi">Taomi</h2>
	                            <em></em>
	                            <p title="Injecting Heart into Pursuing the Ultimate">
									Injecting Heart into Pursuing the Ultimate
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="/home/company/detail?id=14" target="_blank">
	                        <img src="/home/style/images/2bba2b71d0b0443eaea1774f7ee17c9f.png" width="113" height="113" alt="Youku Potato" />
	                        <div class="hot_info">
	                        	<h2 title="Youku Potato">Youku Potato</h2>
	                            <em></em>
	                            <p title="Focusing on the video industry, it is a leading enterprise in China's online video industry">
									Focusing on the video industry, it is a leading enterprise in China's online video industry
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="/home/company/detail?id=10" target="_blank">
	                        <img src="/home/style/images/f4822a445a8b495ebad81fcfad3e40e2.jpg" width="113" height="113" alt="Stuart Walker" />
	                        <div class="hot_info">
	                        	<h2 title="Stuart Walker">Stuart Walker</h2>
	                            <em></em>
	                            <p title="A global information technology service company">
									A global information technology service company
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="/home/company/detail?id=15" target="_blank">
	                        <img src="/home/style/images/5caf8f9631114bf990f87bb11360653e.png" width="113" height="113" alt="Qimao" />
	                        <div class="hot_info">
	                        	<h2 title="Qimao">Qimao</h2>
	                            <em></em>
	                            <p title="Focus on mobile Internet and Internet product research and development">
									Focus on mobile Internet and Internet product research and development
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li  class="last" >
	                    <a href="/home/company/detail?id=11" target="_blank">
	                        <img src="/home/style/images/c0052c69ef4546c3b7d08366d0744974.jpg" width="113" height="113" alt="Sugarweb" />
	                        <div class="hot_info">
	                        	<h2 title="Sugarweb">Sugarweb</h2>
	                            <em></em>
	                            <p title="Share and collect the beauty of life, meet another you in the world">
									Share and collect the beauty of life, meet another you in the world
	                            </p>
	                        </div>
	                    </a>
	                </li>
                            </ul>
            
            <ul class="reset hotabbing">
	            	<li class="current">Latest position</li>
            </ul>
            <div id="hotList">
	            <ul class="hot_pos reset">
	            	
				 		<#if PositionList?size gt 0>
				 			<#list PositionList as position>	
				 			
				 			<#if position_index % 2 == 0>
			            		<li class="clearfix">
			            		
				            	  	<div class="hot_pos_l">
				                    	<div class="mb10">
				                        	<a href="/home/position/detail?id=${position.id!""}" style="text-decoration:none">${position.name!""}</a> 
				                            &nbsp;
				                            <span class="c9">[${position.city!""}]</span>
				                        </div>
				                        <span><em class="c7">Monthly salary： </em>${position.minMoney!""}k-${position.maxMoney!""}k</span>
				                        <span><em class="c7">experience：</em> ${position.workExperience!""}</span>
				                        <span><em class="c7">Minimum education level： </em>${position.degree!""}</span>
				                        <br />
				                        <span><em class="c7">Position temptation：</em>${position.advantage!""}</span>
				                        <br />
					                    <span>Release time：${position.createTime!""}</span>
				                    </div>
				            </#if>
				            <#if position_index % 2 == 1>
				                	<div class="hot_pos_r">
				                    	<div class="mb10 recompany">
				                    		<a href="/home/position/detail?id=${position.id!""}" style="text-decoration:none">${position.name!""}</a> 
				                            &nbsp;
				                            <span class="c9">[${position.city!""}]</span>
				                        </div>
				                        <span><em class="c7">Monthly salary： </em>${position.minMoney!""}k-${position.maxMoney!""}k</span>
				                        <span><em class="c7">experience：</em> ${position.workExperience!""}</span>
				                        <span><em class="c7">Minimum education level： </em>${position.degree!""}</span>
				                        <br />
				                        <span><em class="c7">Position temptation：</em>${position.advantage!""}</span>
				                        <br />
					                    <span>Release time：${position.createTime!""}</span>
				                    </div>
				                    
				                    
			                	</li>
	               	     	</#if>
	                	</#list>
	                </#if>              	            				          
	                <#if PositionTotal %2 == 1>
	                	</li>
	                </#if>		                	            				            
	                		                	            	
	                		                	                
	                	               
            	</ul>
	            <a href="/home/position/list" class="btn fr">View more</a>
            </div>
            
            <div class="clear"></div>
        </div>	
 	    <input type="hidden" value="" name="userid" id="userid" />
 		    
<#include "../common/alert.ftl"/>


<!-------------------------------------弹窗lightbox  ----------------------------------------->

<!------------------------------------- end ----------------------------------------->
<script type="text/javascript" src="/home/style/js/Chart.min.js"></script>
<script type="text/javascript" src="/home/style/js/home.min.js"></script>
<script type="text/javascript" src="/home/style/js/count.js"></script>

<#include "../common/footer.ftl"/>

<script type="text/javascript" src="/home/style/js/core.min.js"></script>
<script type="text/javascript" src="/home/style/js/popup.min.js"></script>

<script type="text/javascript">
	var searchType = "position"; //默认是职位搜索
	document.getElementById("selected_position").onclick = function(){
           searchType = "position";
        }
        
    document.getElementById("selected_company").onclick = function(){
       	   searchType = "company";
    }
    function search(){
    	var search_value = $("#search_input").val();
    	if(search_value == null || search_value == ""){
    		$("#errorMsg").html("Search information cannot be empty！(ㄒoㄒ)");
			$.colorbox({inline:true, href:$("#errorTip"),title:"System prompt"});
			return;
    	}
    
    
    	//如果是职位搜索
    	if(searchType == "position"){
		 	window.location.href = "/home/position/list?search_value="+search_value;
    	}
    	
    	//如果是公司搜索
    	if(searchType == "company"){
    	 	window.location.href = "/home/index/company_list?search_value="+search_value;
    	}
    
    }
    

</script>

</body>
</html>	