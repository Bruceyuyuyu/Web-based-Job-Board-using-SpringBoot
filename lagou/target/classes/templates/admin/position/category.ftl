<!--职位类别ftl-->
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
		    <a href="javascript:void(0);"  class="easyui-linkbutton" iconCls="icon-add"  onclick="openAdd();" plain="true">Addition of primary and secondary occupational categories</a>
		    <a href="javascript:void(0);"  class="easyui-linkbutton" iconCls="icon-add"  onclick="openThirdAdd();" plain="true">Added a three-level occupational category</a>
		    <a href="javascript:void(0);"  class="easyui-linkbutton" iconCls="icon-edit" onclick="openEdit();" plain="true">Revise</a>
		    <a href="javascript:void(0);"  class="easyui-linkbutton" iconCls="icon-cross" onclick="remove();" plain="true">Delete</a>
        </div>
    </div>
    <!-- End of toolbar -->
    <table id="data-datagrid" class="easyui-datagrid" toolbar="#wu-toolbar"></table>
</div>
<!-- Begin of easyui-dialog -->
<!--添加一级和二级职业类别窗口 -->
<div id="add-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:450px; padding:10px;">
	<form id="add-form" method="post">
        <table>
            <tr>
                <td align="right">Parent menu:</td>
                <td>
                	<select name="parent_id" class="easyui-combobox" panelHeight="auto" style="width:268px">
                		 <option value="0">Top-level classification</option>
		                <#if topPositionCategoryList?size gt 0>
							 <#list topPositionCategoryList as topPositionCategory>
		               			 <option value="${topPositionCategory.id!""}">${topPositionCategory.name!""}</option>
		                	 </#list>
		                </#if>
		            </select>
                </td>
            </tr>
            <tr>
                <td width="100" align="right">Job category title:</td>
                <td><input type="text" name="name" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'Please fill in the title of the first or second level job category'" /></td>
            </tr>
            <tr>
                <td  width="100" align="right">Job category url:</td>
                <td><input type="text" name="url" class="wu-text" /></td>
            </tr>
        </table>
    </form>
</div>
<!-- 修改窗口 -->
<div id="edit-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:450px; padding:10px;">
	<form id="edit-form" method="post">
        <input type="hidden" name="id" id="edit-id">
        <table>
             <tr>
                <td width="100" align="right">Parent menu:</td>
                <td>
                	<input type="text" readonly="readonly" id="edit-parent" class="wu-text easyui-validatebox" />
                </td>
            </tr>
            <tr>
                <td width="100" align="right">Job Category Title:</td>
                <td><input type="text" name="name" id="edit-name" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写职位类别名称'" /></td>
            </tr>
            <tr>
                <td width="100" align="right">Job Category URL:</td>
                <td><input type="text" name="url" id="edit-url" class="wu-text" /></td>
            </tr>
        </table>
    </form>
</div>
<!-- 添加三级职业类别弹窗 -->
<div id="add-third-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:450px; padding:10px;">
	<form id="add-third-form" method="post">
        <table>
        	<tr>
                <td width="100" align="right">Parent menu:</td>
                <td>
                	<input type="hidden" name="parent_id" id="add-third-parent-id">
                	<input type="text" readonly="readonly" id="parent-third" class="wu-text easyui-validatebox" />
                </td>
            </tr>
            <tr>
                <td width="100" align="right">Job Category Title:</td>
                <td><input type="text" name="name" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'Please fill in the title of the third level job category'" /></td>
            </tr>
            <tr>
                <td width="100" align="right">Job Category URL:</td>
                <td><input type="text" name="url" class="wu-text" /></td>
            </tr>
           
        </table>
    </form>
</div>
<#include "../common/footer.ftl"/>

<!-- End of easyui-dialog -->
<script type="text/javascript">
	
	//删除职位类别
	function remove(){
		var item = $('#data-datagrid').treegrid('getSelections');
		if(item == null || item.length != 1){
			$.messager.alert('Informational tips','Please select a piece of occupation category data that you want to delete！','info');
			return;
		}
		$.messager.confirm('Informational tips','Decide that you want to delete the record？', function(result){
			if(result){
				$.ajax({
					url:'/admin/position_category/delete',
					dataType:'json',
					type:'post',
					data:{id:item[0].id},
					success:function(data){
						if(data.code == 0){
							$.messager.alert('Informational tips','The deletion is successful！','info');
							$('#data-datagrid').treegrid('reload');
						}else{
							$.messager.alert('Informational tips',data.msg,'warning');
						}
						$("#data-datagrid").treegrid('clearSelections');
					}
				});
			}	
		});
	}
	
	
	
	//打开增加一级和二级的窗口
	function openAdd(){
		$('#add-dialog').dialog({
			closed: false,
			modal:true,
            title: "Add Level 1 and Level 2 job category information",
            buttons: [{
                text: 'Are you sure',
                iconCls: 'icon-ok',
                handler: add
            }, {
                text: 'Cancel',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#add-dialog').dialog('close');                    
                }
            }]
        });
	}
	
	//添加记录
	function add(){
		var validate = $("#add-form").form("validate");
		if(!validate){
			$.messager.alert("Informational tips","Please check the data you entered!","warning");
			return;
		}
		var data = $("#add-form").serialize();
		$.ajax({
			url:'/admin/position_category/add',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.code == 0){
					$.messager.alert('Informational tips','The addition was successful！','info');
					$('#add-dialog').dialog('close');
					$('#data-datagrid').treegrid('reload');
				}else{
					$.messager.alert('Informational tips',data.msg,'warning');
				}
			},
			error:function(data){
				 $.messager.alert("Informational tips", 'Network error！', "error");
			}
		});
	}
	
	
	
	
	//修改记录
	function edit(){
		var validate = $("#edit-form").form("validate");
		if(!validate){
			$.messager.alert("Message alerts","Please check the data you entered!","warning");
			return;
		}
		var data = $("#edit-form").serialize();
		$.ajax({
			url:'/admin/position_category/edit',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.code == 0){
					$.messager.alert('Informational tips','The modification was successful！','info');

					$('#edit-dialog').dialog('close');
					$('#data-datagrid').treegrid('reload');
				}else{
					$.messager.alert('Informational tips',data.msg,'warning');
				}
				$("#data-datagrid").treegrid('clearSelections');
			}
		});
	}
	
	
	
	//添加三级职位类别
	function openThirdAdd(){
		var item = $('#data-datagrid').treegrid('getSelections');
		if(item == null || item.length != 1){
			$.messager.alert('Informational tips','Please select a secondary occupation category data！','info');
			return;
		}
		if(item[0]._parentId == null){
			$.messager.alert('Informational tips','Please select the secondary menu！','info');
			return;
		}
		var parent = $('#data-datagrid').treegrid('getParent',item[0].id);
		if(parent._parentId != null){
			$.messager.alert('Informational tips','Please select the secondary menu！','info');
			return;
		}
		$('#add-third-dialog').dialog({
			closed: false,
			modal:true,
            title: "Add Level 3 job category information",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                	var validate = $("#add-third-form").form("validate");
            		if(!validate){
            			$.messager.alert("Message alerts","Please check the data you entered!","warning");
            			return;
            		}
            		var data = $("#add-third-form").serialize();
            		$.ajax({
            			url:'/admin/position_category/add',
            			dataType:'json',
            			type:'post',
            			data:data,
            			success:function(data){
            				if(data.code == 0){
            					$.messager.alert('Informational tips','The addition was successful！','info');
            					$('#add-third-dialog').dialog('close');
            					$('#data-datagrid').treegrid('reload');
            				}else{
            					$.messager.alert('Informational tips',data.msg,'warning');
            				}
            			}
            		});
                }
            }, {
                text: 'Cancel',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#add-third-dialog').dialog('close');                    
                }
            }],
            onBeforeOpen:function(){
            	$("#parent-third").val(item[0].name);
            	$("#add-third-parent-id").val(item[0].id);
            }
        });
		
	}
	
	

	
	//打开修改窗口
	function openEdit(){
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
		var name = item.name;
		var parent = item;
		if(item._parentId == null)
		{
			parent.name = "Top-level classification";
		}else{
		 	parent = $('#data-datagrid').treegrid('getParent',item.id);
		}
		$('#edit-dialog').dialog({
			closed: false,
			modal:true,
            title: "Modify job category information",
            buttons: [{
                text: 'Are you sure',
                iconCls: 'icon-ok',
                handler: edit
            }, {
                text: 'Cancel',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#edit-dialog').dialog('close');                    
                }
            }],
            onBeforeOpen:function(){
            	$("#edit-id").val(item.id);
            	$("#edit-name").val(name);
            	$("#edit-parent").val(parent.name);
            	$("#edit-url").val(item.url);
            }
        });
	}	
	
	//载入数据
	$('#data-datagrid').treegrid({
		url:'/admin/position_category/list',
		rownumbers:true,
		singleSelect:true,
		pageSize:300,           
		pagination:true,
		multiSort:true,  //定义是否启用多列排序
		fitColumns:true,
		pageList:[300],
		idField:'id',    //一般定义成主键就可以
	    treeField:'name',  //是指定那列要展示成树形
		fit:true,
		columns:[[
			{ field:'name',title:'Job category title',width:100},
			{ field:'url',title:'Job category url',width:100}
		]]
	});
</script>