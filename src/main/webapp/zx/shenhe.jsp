<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程标题</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>
<table class="table" id="shenhe" border="1"></table>
<script>



    $("#shenhe").bootstrapTable({

        url:"<%=request.getContextPath()%>/CourseController/queryshenhe",
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

            {field:'teacherid',title:'id',width: 100},
            {field:'teachername',title:'讲师姓名',width: 100},
            {field:'teacherdate',title:'创建日期',width: 100},
            {field:'teacherstate',title:'审核状态',width: 100,
                formatter: function(value,row,index){
                    if(value == 1){
                        return"待审核";
                    }else if(value==2){
                        return"通过";
                    }else if(value==3){
                        return "未通过";

                    }

                }},


            {field:'act',title:'操作',width:100,
                formatter: function(value,row,index){
                    return '<input type="button" value="通过" class="btn btn-success" onclick="tongguo('+row.teacherid+')"/><input type="button" value="未通过" class="btn btn-success" onclick="updateteacher('+row.teacherid+')"/>';
                }}
        ]
    })


    function tongguo(teacherid){

        $.ajax({

            type:"post",

            url:"<%=request.getContextPath()%>/CourseController/updatetongguo",

            data:{"teacherid":teacherid},

            success:function(result){



                location.href=location

            }

        })

    }
</script>
</body>