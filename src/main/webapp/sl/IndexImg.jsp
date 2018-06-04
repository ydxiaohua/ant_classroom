<%--
  Created by IntelliJ IDEA.
  User: 世龙同学
  Date: 2018/5/24
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>轮播图管理</title>

    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>

</head>
<body>
<div>&nbsp;&nbsp;<a class="glyphicon glyphicon-plus" onclick="insertImg()">添加</a></div>
<table class="table  table-striped table-bordered table-hover" id="imgtb"></table>

<script>

    $('#imgtb').bootstrapTable({
        url: "<%=request.getContextPath()%>/index/queryImg",                      //请求后台的URL（*）
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
            { field: 'imgid',title: 'ID',align:'center',sortable: true},
            { field: 'img',title: '轮播图',align:'center',
                formatter : function(value,row,index){
                    return '<img width="160px" height="90px" src="'+row.img+'">';
                },
            },
            { field: '',title:'操作',width:250,align:'center',formatter:function(value,row,index){
                if(row.imgstate=="1"){
                    return  "<a class='glyphicon glyphicon-pencil' onclick='updateRole("+row.imgid+")'>修改</a>"
                            +"&nbsp;&nbsp;<a class='glyphicon glyphicon-minus' onclick='deleteImg("+row.imgid+")'>删除</a>"
                            +"&nbsp;&nbsp;<a class='glyphicon glyphicon-cog' onclick='ShowLunBoImg("+row.imgid+")'>轮播图展示</a>";
                }else if(row.imgstate=="0"){
                    return  "<a class='glyphicon glyphicon-pencil' onclick='updateRole("+row.imgid+")'>修改</a>"
                            +"&nbsp;&nbsp;<a class='glyphicon glyphicon-minus' onclick='deleteImg("+row.imgid+")'>删除</a>"
                            +"&nbsp;&nbsp;<a class='glyphicon glyphicon-cog' onclick='HideLunBoImg("+row.imgid+")'>轮播图撤回</a>";
                }

            }
            },
        ],

    })
    function insertImg(){
        BootstrapDialog.show({
            title : "添加图片",       //title
            message :$('<div></div>').load('addImg.jsp'),
            buttons : [{
                label : "添加",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/index/addImg",
                        type : "post",
                        data : $("#ImgAddForm").serialize(),
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
    function deleteImg(imgid){
        $.ajax({
            url:'<%=request.getContextPath()%>/index/deleteImg?imgid='+imgid,
            type:'get',
            dataType:'text',
            success:function(data){
                if(data == "1"){
                    location.reload();
                }
            }
        });
    }
    function updateRole(imgid){

        BootstrapDialog.show({
            title : "修改的方法",       //title
            message :$('<div></div>').load("<%=request.getContextPath()%>/index/huixianImg?imgid="+imgid),
            buttons : [{
                label : "修改",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/index/updateImg",
                        type : "post",
                        data : $("#ImgUpdateForm").serialize(),
                        dataType:"text",
                        success : function(flag){
                            if(flag == "1"){
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
    function ShowLunBoImg(imgid){
        $.ajax({
            url:'<%=request.getContextPath()%>/index/ShowLunBoImg?imgid='+imgid,
            type:'get',
            dataType:'text',
            success:function(data){
                if(data == "2"){
                    alert("已经展示五张轮播图了，不能展示了");
                }else{
                    location.reload();
                }
            }
        });
    }
    function HideLunBoImg(imgid){
        $.ajax({
            url:'<%=request.getContextPath()%>/index/HideLunBoImg?imgid='+imgid,
            type:'get',
            dataType:'text',
            success:function(data){
                if(data == "2"){
                    alert("展示中的轮播图只剩一张，不能继续撤回");
                }else{
                    location.reload();
                }
            }
        });
    }
</script>
</body>
</html>
