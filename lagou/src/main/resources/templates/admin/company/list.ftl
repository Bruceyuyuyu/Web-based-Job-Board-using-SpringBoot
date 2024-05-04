<!--公司列表ftl-->
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
            Company Status Inquiry：
	  		<select id="search-state" name="search-state" class="easyui-combobox" panelHeight="auto" data-options="editable:false" style="width:150px">
	                <option value="0">Please select</option>
	    			<option value="1">Certified</option>
	    			<option value="2">To be reviewed</option>
	    			<option value="3">Not certified</option>
	        </select>
	         <a href="javascript:void(0);" id="search-btn" class="easyui-linkbutton" iconCls="icon-search" plain="true">Search</a>&nbsp;&nbsp;
	         <a href="javascript:void(0);" id="update-state-btn" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="changeState();">Change the company status</a>&nbsp;&nbsp;
	         <a href="javascript:void(0);"  class="easyui-linkbutton" iconCls="icon-cross" onclick="remove();" plain="true">Delete</a>
        </div>
    </div>
    <!-- End of toolbar -->
    <table id="data-datagrid" class="easyui-datagrid" toolbar="#wu-toolbar"></table>
</div>
<!-- Begin of easyui-dialog -->
<div id="edit-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:450px; padding:10px;">
	<form id="edit-form" method="post">
        <input type="hidden" name="id" id="edit-id">
        <table>
            <tr>
                <td width="60" align="right">Company name:</td>
                <td><input type="text" id="edit-name" name="name"  readonly="readonly" class="wu-text " /></td>
            </tr>
            <tr>
                <td width="60" align="right">Company status:</td>
                <td>
                	<select id="edit-state" name="state" class="easyui-combobox" data-options="editable:false" panelHeight="auto" style="width:268px">
			    		  <option value="Certified">Certified</option>
			    		  <option value="To be reviewed">To be reviewed</option>
			    		  <option value="Not certified">Not certified</option>
		            </select>
                </td>
            </tr>
        </table>
    </form>
</div>
<#include "../common/footer.ftl"/>
<!-- End of easyui-dialog -->
<script type="text/javascript">

	//打开改变职位状态窗口
	function changeState(){
		var item = $('#data-datagrid').datagrid('getSelections');
		if(item == null || item.length == 0){
			$.messager.alert('Informational tips','Please select the data you want to modify！','info');
			return;
		}
		if(item.length > 1){
			$.messager.alert('Informational tips','Please select a piece of data to modify！','info');
			return;
		}
		item = item[0];
		$('#edit-dialog').dialog({
			closed: false,
			modal:true,
            title: "Change the status of your position",
            buttons: [{
                text: 'Are you sure',
                iconCls: 'icon-ok',
                handler: change
            }, {
                text: 'Cancel',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#edit-dialog').dialog('close');
                }
            }],
            onBeforeOpen:function(){
           		$("#edit-id").val(item.id);
            	$("#edit-state").combobox('setValue',item.state);
            	$("#edit-name").val(item.name);
            }
        });
	}


	//删除公司
	function remove(){
		var item = $('#data-datagrid').datagrid('getSelections');
		if(item == null || item.length != 1){
			$.messager.alert('Informational tips','Please select a piece of company data that you want to delete！','info');
			return;
		}
		$.messager.confirm('Informational tips','Are you sure you want to delete the company? If you do, all information about the company will be deleted!', function(result){
			if(result){
				$.ajax({
					url:'/admin/company/delete',
					dataType:'json',
					type:'post',
					data:{id:item[0].id},
					success:function(data){
						if(data.code == 0){
							$.messager.alert('Informational tips','The deletion is successful！','info');
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



	//执行改变职位状态操作
	function change(){
		var data = $("#edit-form").serialize();
		$.ajax({
			url:'/admin/company/change_state',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.code == 0){
					$.messager.alert('Informational tips','Change the state of the company successfully!','info');
					$('#edit-dialog').dialog('close');
					$('#data-datagrid').datagrid('reload');
				}else{
					$.messager.alert('Informational tips',data.msg,'warning');
				}
			}
		});
	}


	//搜索按钮监听
	$("#search-btn").click(function(){
	    var search_value = $('#search-state').combobox('getValues');
	    var state = "";
	    if(search_value == "1"){
			state = "Certified";
		}
		if(search_value == "2"){
			state = "To be reviewed";
		}
		if(search_value == "3"){
			state = "Not certified";
		}
		$('#data-datagrid').datagrid('reload',{
			state:state
		});
		$("#data-datagrid").datagrid('clearSelections');
	});



	//载入数据
	$('#data-datagrid').datagrid({
		url:'/admin/company/list',
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
			{ field:'photo',title:'Company pic',width:60,align:'center',formatter:function(value,row,index){
				var img = '<img src=/photo/view?filename='+value+' width=50px height=50px />';
				return img;
			}},
			{ field:'name',title:'Company name',width:150},
			{ field:'locale',title:'Company location',width:150},
			{ field:'territory',title:'Company Field',width:100},
			{ field:'scale',title:'Pop size',width:50},
			{ field:'finance',title:'Financing',width:50},
			{ field:'founderName',title:'Name',width:50},
			{ field:'founderPhoto',title:'Founder pic',width:60,align:'center',formatter:function(value,row,index){
				var img = '<img src=/photo/view?filename='+value+' width=50px height=50px />';
				return img;
			}},
			{ field:'state',title:'Status',width:60},
			{ field:'updateTime',title:'Last updated time',width:100}
		]]
	});
</script>
