<%--
  Created by IntelliJ IDEA.
  User: 世龙同学
  Date: 2018/5/15
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工展示页面</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
    <jsp:include page="easyui.jsp" flush="true"></jsp:include>
</head>
<body>
<br>
<div>&nbsp;&nbsp;<a class="glyphicon glyphicon-plus" onclick="insertUser()">添加</a></div>
<table class="table  table-striped table-bordered table-hover" id="usertb"></table>
<div id="userrolediv"></div>
<script>

    $('#usertb').bootstrapTable({
        url: "<%=request.getContextPath()%>/user/queryUser",                      //请求后台的URL（*）
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
            { field: 'username',title: '用户名称',align:'center',sortable: true},
            { field: 'usersex',title: '职工性别',align:'center',formatter:function(value,row,index){
                    if(row.usersex==1){
                        return "男";
                    }else{
                        return "女";
                    }
            }},
            { field: 'userage',title: '职工年龄',align:'center',sortable: true},
            { field: 'usertime',title: '职工生日',align:'center',sortable: true},
            { field: '',title:'操作',width:250,align:'center',formatter:function(value,row,index){
                return  "<a class='glyphicon glyphicon-pencil' onclick='updateUser("+row.userid+")'>修改</a>"
                        +"&nbsp;&nbsp;<a class='glyphicon glyphicon-minus' onclick='deleteUser("+row.userid+")'>删除</a>"
                        +"&nbsp;&nbsp;<a class='glyphicon glyphicon-cog' onclick='SetupRole("+row.userid+")'>设置权限</a>";
            }
            },
        ],

    })
    function deleteUser(userid){
        $.ajax({
            url:'<%=request.getContextPath()%>/user/deleteUser?userid='+userid,
            type:'get',
            dataType:'json',
            success:function(data){
                if(data == 1){
                    location.reload();
                }
            }
        });
    }
    function updateUser(userid){

        BootstrapDialog.show({
            title : "修改的方法",       //title
            message :$('<div></div>').load("<%=request.getContextPath()%>/user/huixianUser?userid="+userid),
            buttons : [{
                label : "修改",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/user/updateUser",
                        type : "get",
                        data : $("#UserUpdateForm").serialize(),
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
    function insertUser(){
        BootstrapDialog.show({
            title : "添加的方法",       //title
            message :$('<div></div>').load('adduser.jsp'),
            buttons : [{
                label : "添加",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/user/addUser",
                        type : "post",
                        data : $("#UserAddForm").serialize(),
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
    function SetupRole(userid){
        $('#userrolediv').dialog({
            title: '设置角色',
            width: 400,
            height: 200,
            closed: false,
            href: "<%=request.getContextPath()%>/user/tiaouserrole?userid="+userid,
            modal: true,
            buttons:[{
                text:'保存1',
                handler:function(){
                    var colArr = $('#userroletb').datagrid('getChecked');
                    var idsStr = "";
                    for(var i=0;i<colArr.length;i++){
                        idsStr += ","+colArr[i].roleid;
                    }

                    idsStr = idsStr.substring(1);

                    $.ajax({
                        url:"<%=request.getContextPath()%>/user/SetupRole?ids="+idsStr+"&userid="+userid,
                        dataType:"text",
                        success:function(data){
                            if(data==1){
                                $("#userrolediv").dialog("close");
                            }
                        }
                    })

                }
            },{
                text:'关闭',
                handler:function(){
                    $("#userrolediv").dialog("close");
                }
            }]
        });
    }
</script>
</body>
</html>
