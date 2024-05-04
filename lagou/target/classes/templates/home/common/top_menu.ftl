<!--顶部公共菜单ftl-->
<div id="header">
    	<div class="wrapper">

    		<ul class="reset" id="navheader">
    			<#if index??>
    				<li class="current"><a href="/home/index/index">Home page</a></li>
    			<#else>
    				<li><a href="/home/index/index">Home page</a></li>
    			</#if>
    			
    			<#if company_list??>
    				<li class="current"><a href="/home/index/company_list" >Company</a></li>
    			<#else>
    				<li ><a href="/home/index/company_list" >Company</a></li>
    			</#if>

    			
    			
    			<#if user??>
	    			<#if user.type == 0>
	    				<#if my_resume??>
	    					<li class="current"><a href="/home/index/my_resume" rel="nofollow">My resume</a></li>
		    			<#else>
		    				<li><a href="/home/index/my_resume" rel="nofollow">My resume</a></li>
		    			</#if>
	    			</#if>
    			</#if>
    			
    			<#if user??>
	    			<#if user.type == 1>
	    				<#if publish_position??>
	    					<li class="current"><a href="/home/index/publish_position" rel="nofollow">Post position</a></li>
		    			<#else>
		    				<li><a href="/home/index/publish_position" rel="nofollow">Post position</a></li>
		    			</#if>
	    			</#if>
    			</#if>
	    		
    		</ul>
    		
    		<#if user ??>
    			<dl class="collapsible_menu">
	            	<dt>
	           			<span>${user.username!""}&nbsp;</span> 
	            		<span class="red dn" id="noticeDot-0"></span>
	            		<i></i>
	            	</dt>
	            	<#if user.type == 0>
						<dd><a rel="nofollow" href="/home/index/my_resume">My resume</a></dd>
		                <dd class="btm"><a href="/home/resume/my_delivery_resume">The resume I submitted</a></dd>
	                <#elseif user.type == 1>
		                <dd><a href="/home/position/my_publish_position">The position I posted</a></dd>
	                	<dd><a href="/home/resume/my_receive_resume">The resume I received</a></dd>
	                	<dd><a href="/home/index/publish_position">I want to recruit people</a></dd>
	                	<dd class="btm"><a href="/home/company/my_company">My company homepage</a></dd>
	                </#if>
					<dd><a href="/home/system/update_password">Change password</a></dd>
					<dd class="logout"><a rel="nofollow" href="/home/system/logout">quit</a></dd>
            	
            	</dl>
    		<#else>
    			<ul class="loginTop">
	            	<li><a href="/home/system/login" rel="nofollow">Login</a></li>
	            	<li>|</li>
	            	<li><a href="/home/system/register" rel="nofollow">Register</a></li>
            	</ul>
    		</#if>
        </div>
</div><!-- end #header -->