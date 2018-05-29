<%--
  Created by IntelliJ IDEA.
  User: 世龙同学
  Date: 2018/5/16
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>角色管理页面</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
    <jsp:include page="easyui.jsp" flush="true"></jsp:include>
</head>
<body>
<div>&nbsp;&nbsp;<a class="glyphicon glyphicon-plus" onclick="insertRole()">添加</a></div>
<table class="table  table-striped table-bordered table-hover" id="roletb"></table>
<div id="rolemenudiv"></div>
<script>

    $('#roletb').bootstrapTable({
        url: "<%=request.getContextPath()%>/user/queryRole",                      //请求后台的URL（*）
        striped: true,//隔行变色
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        //search:true,//是否显示搜索框
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
        //bootstrap默认是客户端分页client 若写服务端则出不来结果server
        sidePagination:"",//
        pagination:true,//开启分页
        paginationLoop:true,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:3,//每页条数
        pageList:[1,3,5],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        columns:[
            { field: 'roleid',title: '角色ID',align:'center',sortable: true},
            { field: 'rolename',title: '角色名称',align:'center',sortable: true},
            { field: '',title:'操作',width:250,align:'center',formatter:function(value,row,index){
                return  "<a class='glyphicon glyphicon-pencil' onclick='updateRole("+row.roleid+")'>修改</a>"
                        +"&nbsp;&nbsp;<a class='glyphicon glyphicon-minus' onclick='deleteRole("+row.roleid+")'>删除</a>"
                        +"&nbsp;&nbsp;<a class='glyphicon glyphicon-cog' onclick='SetupMenu("+row.roleid+")'>设置权限</a>";
            }
            },
        ],

    })
    function deleteRole(roleid){
        $.ajax({
            url:'<%=request.getContextPath()%>/user/deleteRole?roleid='+roleid,
            type:'get',
            dataType:'json',
            success:function(data){
                if(data == 1){
                    location.reload();
                }
            }
        });
    }
    function updateRole(roleid){

        BootstrapDialog.show({
            title : "修改的方法",       //title
            message :$('<div></div>').load("<%=request.getContextPath()%>/user/huixianRole?roleid="+roleid),
            buttons : [{
                label : "修改",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/user/updateRole",
                        type : "post",
                        data : $("#RoleUpdateForm").serialize(),
                        dataType:"json",
                        success : function(flag){
                            if(flag == 1){
                                location.reload();
                            }
                        }
                    })
                }
            },{
                label : "取消",
                action : function(dialog){
                    dialog.close();
                }
            }]
        })
    }
    function insertRole(){
        BootstrapDialog.show({
            title : "添加的方法",       //title
            message :$('<div></div>').load('addrole.jsp'),
            buttons : [{
                label : "添加",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/user/addRole",
                        type : "post",
                        data : $("#RoleAddForm").serialize(),
                        dataType:"json",
                        success : function(flag){
                            if(flag == 1){
                                location.reload();
                            }
                        }
                    })
                }
            },{
                label : "取消",
                action : function(dialog){
                    dialog.close();
                }
            }]
        })
    }
    function SetupMenu(roleid){
        $('#rolemenudiv').dialog({
            title: '设置权限',
            width: 400,
            height: 500,
            closed: false,
            href: "<%=request.getContextPath()%>/user/tiaorolemenu?roleid="+roleid,
            modal: true,
            buttons:[{
                text:'保存',
                handler:function(){
                    var colArr = $('#menus-tree').tree('getChecked');

                    var idsStr = "";
                    for(var i=0;i<colArr.length;i++){
                        idsStr += ","+colArr[i].id;
                    }
                    idsStr = idsStr.substring(1);
                    $.ajax({
                        url:"<%=request.getContextPath()%>/user/addRoleMenu?idsStr="+idsStr+"&roleid="+roleid,
                        dataType:"text",
                        success:function(data){
                            if(data==1){
                                $("#rolemenudiv").dialog("close");
                            }
                        }
                    })
                }
            },{
                    text:'关闭',
                    handler:function(){
                        $("#rolemenudiv").dialog("close");
                    }
                }]
        });

    }
</script>
</body>
</html>
