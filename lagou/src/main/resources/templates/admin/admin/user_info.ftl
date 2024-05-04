<!--用户管理ftl-->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="All Rights Reserved, Copyright (C) 2020, 杨杨吖, Ltd." />
<title>Manage the home page in the back office</title>
<link rel="stylesheet" type="text/css" href="/admin/easyui/easyui/1.3.4/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="/admin/easyui/css/wu.css" />
<link rel="stylesheet" type="text/css" href="/admin/easyui/css/icon.css" />
<script type="text/javascript" src="/admin/easyui/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/admin/easyui/easyui/1.3.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/admin/easyui/easyui/1.3.4/locale/easyui-lang-en.js"></script>
<style>

.dialog-button { padding: 5px; text-align: center; };
</style>

<div class="easyui-layout" data-options="fit:true">
    <!-- Begin of toolbar -->
    <div id="wu-toolbar">
        <div class="wu-toolbar-button">
	       <a href="javascript:void(0);"  class="easyui-linkbutton" iconCls="icon-cross" onclick="remove();" plain="true">Delete</a>
        </div>
    </div>
    <!-- End of toolbar -->
    <table id="data-datagrid" class="easyui-datagrid" toolbar="#wu-toolbar"></table>
</div>
<!-- Begin of easyui-dialog -->

</div>
<#include "../common/footer.ftl"/>
<!-- End of easyui-dialog -->
<script type="text/javascript">
	
	//删除用户
	function remove(){
		var item = $('#data-datagrid').datagrid('getSelections');
		if(item == null || item.length != 1){
			$.messager.alert('Informational tips','Please select a piece of user data that you want to delete！','info');
			return;
		}
		$.messager.confirm('Informational tips','Are you sure you want to delete the user? If you do, all information about the user will be deleted!', function(result){
			if(result){
				$.ajax({
					url:'/admin/user/delete',
					dataType:'json',
					type:'post',
					data:{id:item[0].id},
					success:function(data){
						if(data.code == 0){
							$.messager.alert('Informational tips','Deleted successfully!','info');
							$('#data-datagrid').datagrid('reload');
						}else{
							$.messager.alert('Informational tips',data.msg,'warning');
						}
						$("#data-datagrid").datagrid('clearSelections');
					}
				});
			}	
		});
	}
	
	
	
	
	//载入数据
	$('#data-datagrid').datagrid({
		url:'/admin/user/user_info_list',
		rownumbers:true,
		singleSelect:false,
		pageSize:10,           
		pagination:true,
		multiSort:true,
		fitColumns:true,
		idField:'id',
	    fit:true,
		columns:[[
			{ field:'chk',checkbox:true},
			{ field:'headPic',title:'User pic',width:60,align:'center',formatter:function(value,row,index){
				var img = '<img src=/photo/view?filename='+value+' width=50px height=50px />';
				return img;
			}},
			{ field:'username',title:'Username',width:100,sortable:true},
			{ field:'email',title:'Mailbox',width:100},
			{ field:'password',title:'Password',width:100},
			{ field:'sex',title:'Gender',width:100,formatter:function(value,row,index){
				switch(value){
					case 0:{
						return 'Unknown';
					}
					case 1:{
						return 'man';
					}
					case 2:{
						return 'woman';
					}
				}
				return value;
			}},
			{ field:'type',title:'User Identity',width:100,formatter:function(value,row,index){
				switch(value){
					case 0:{
						return 'Candidates';
					}
					case 1:{
						return 'Recruiters';
					}
				
				}
				return value;
			}},
			{ field:'mobile',title:'Mobile phone number',width:100},
			{ field:'updateTime',title:'Last updated time',width:100}
		]]
	});
</script>