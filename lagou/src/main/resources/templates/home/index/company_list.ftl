<!--公司列表-->
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="/home/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Company list - Lagao - the most professional Internet recruitment platform</title>
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
<script type="text/javascript" src="/home/style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="/home/style/js/excanvas.js"></script>
<![endif]-->
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
            	<form id="companyListForm" name="companyListForm" method="get" action="h/c/companylist.html">
	                <input type="hidden" id="city" name="city" value="全国" />
	                <input type="hidden" id="fs" name="fs" value="" />
	                <input type="hidden" id="ifs" name="ifs" value="" />
	                <input type="hidden" id="ol" name="ol" value="" />
	                <dl class="hc_tag">
	                	<#if SearchValue??>
	                		 <dd><font size="3">according to <font color="red">${SearchValue!""}</font> Findings： </font></dd>
	                	<#else>
	                		 <dd></dd>
	                	</#if>
	                </dl>
                	<ul class="hc_list reset">
                	
                	<#if CompanyList?size gt 0>
				 		<#list CompanyList as company>
				 			<#if company_index % 3 == 0>
	                        	<li style="clear:both;">
	                        <#else>
	                        	<li>
	                        </#if>	
			                        <a href="/home/company/detail?id=${company.id!""}">
			                        	<h3 title="${company.name}">${company.name}</h3>
			                        	<div class="comLogo">
				                        	<img src="/photo/view?filename=${company.photo}" width="190" height="190" alt="${company.name}" />
				                        	<ul>
				                        		<li>地点：${company.locale!""}</li>
				                        		<li>领域：${company.territory!""}</li>
				                        		<li>融资阶段：${company.finance!""}</li>
				                        	</ul>
			                        	</div>
			                        </a>
			                        <#assign count = 0>  <!--为职位遍历计数-->
			                        <font color="red">The positions published by the company：</font>
		                       		<#if PositionList?size gt 0>
			 							<#list PositionList as position>
			 								<#if position.company.id == company.id>
			 									<#assign count = count+1>
			 									<a href="/home/position/detail?id=${position.id!""}" target="_blank">${count}.${position.name!""}</a>
			 								</#if>
			 							</#list>
			 						</#if>
			                        <ul class="reset ctags">
			                        	<#if company.tags??>
	                        				<#list company.tags?split(",") as tag>
									         	<li>${tag!""}</li>
									   		</#list>
			                        	</#if>
		                            </ul>
			                    </li>
		                    
	                     </#list>
	                 </#if>
	                 
	                 
	                </ul>
	                
	                
		                
       				<div class="Pagination">
       					<a title="Home page" href="/home/index/company_list?page=1&rows=9&search_value=${SearchValue!""}">Home page</a>
       					<#if currentPage == 1>
       					 	<a title="No previous page"  href="javascript:void(0);">No previous page</a>
 						<#else>
 							<a title="Previous"  href="/home/index/company_list?page=${currentPage-1}&rows=9&search_value=${SearchValue!""}">last page</a>
 						</#if>
 
 						<#list 1..totalPage as i>
 							<#if i == currentPage-2>
 								<a title="${i}" href="/home/index/company_list?page=${i}&rows=9&search_value=${SearchValue!""}">${i}</a>
 							</#if>    
						  	<#if i == currentPage-1>
 								<a title="${i}" href="/home/index/company_list?page=${i}&rows=9&search_value=${SearchValue!""}">${i}</a>
 							</#if>   
 							<#if i == currentPage>
 								<a title="${i}" href="/home/index/company_list?page=${i}&rows=9&search_value=${SearchValue!""}" class="current">${i}</a>
 							</#if>   
 							<#if i == currentPage+1>
 								<a title="${i}" href="/home/index/company_list?page=${i}&rows=9&search_value=${SearchValue!""}">${i}</a>
 							</#if>    
						  	<#if i == currentPage+2>
 								<a title="${i}" href="/home/index/company_list?page=${i}&rows=9&search_value=${SearchValue!""}">${i}</a>
 							</#if>   
						</#list>
       					
       					
       					
       					<#if currentPage == totalPage>
       					 	<a title="No next page"  href="javascript:void(0);">No Next Page</a>
 						<#else>
 							<a title="Next page"  href="/home/index/company_list?page=${currentPage+1}&rows=9&search_value=${SearchValue!""}">Next page</a>
 						</#if>
 						
       					<a title="Last page" href="/home/index/company_list?page=${totalPage}&rows=9&search_value=${SearchValue!""}">Last page</a>
       				
       				</div>
       				
       				
       				
       				
       				
       				
            	</form>
            </div>	
            <div class="content_r">



            </div>
       	</div>
   	
   	<input type="hidden" value="" name="userid" id="userid" />
      
<script type="text/javascript" src="style/js/company_list.min.js"></script>
<script>

</script>       	
<#include "../common/footer.ftl"/>	

<script type="text/javascript" src="/home/style/js/core.min.js"></script>
<script type="text/javascript" src="/home/style/js/popup.min.js"></script>

<!--  -->

</body>
</html>