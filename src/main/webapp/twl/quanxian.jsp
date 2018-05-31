<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>权限管理</title>

    <!-- Bootstrap 插件 css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap TreeView css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">
    <!-- Bootstrap addTabs css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <!-- Bootstrap table css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- bootstrap-dialog css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
    <!-- bootstrap-fileinput css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">

</head>
<body>

<a href="javascript:insertquanxian()" class="btn btn-success" role="button">添加</a>
<table class="table" id="quanxian" border="1"></table>


<!--jQuery核心js  -->
<script src="<%=request.getContextPath() %>/bootstrap/jquery.min.js"></script>
<!-- bootstrap 核心js文件 -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
<!-- bootStrap TreeView -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<!-- bootStrap addTabs -->
<script src="<%=request.getContextPath() %>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<!-- bootStrap table -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/bootstrap-table.js"></script>
<!-- bootStrap table 语言包中文-->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- bootstrap-datetimepicker -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- bootstrap-dialog -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
<!-- bootstrap-fileinput -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/js/fileinput.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/js/locales/zh.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>


<script type="text/javascript">

    //查询
    $("#quanxian").bootstrapTable({
        url:"<%=request.getContextPath()%>/user/queryquanxian",
        striped: true,//隔行变色
        showPaginationSwitch:false,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:false,//显示刷新按钮
        showToggle:false,//显示切换视图
        //search:true,//是否显示搜索框
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
        //bootstrap默认是客户端分页client 若写服务端则出不来结果server
        sidePagination:"",//
        pagination:true,//开启分页
        height:450,
        paginationLoop:true,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:3,//每页条数
        pageList:[1,3,5],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        columns:[
            {field:'id',title:'编号',width: 100},
            {field:'text',title:'权限模块',width: 100},
            {field:'act',title:'操作',width:100,
                formatter: function(value,row,index){
                    return '<a href="javascript:deletequanxian('+row.id+')" class="btn btn-danger" role="button">删除</a><a href="javascript:updatequanxian('+row.id+')" class="btn btn-warning" role="button">修改</a>';
                }
            }
        ]
    })


    //添加
    function insertquanxian(){
        BootstrapDialog.show({
            title: '添加权限',
            message: $('<div></div>').load('<%=request.getContextPath()%>/twl/addquanxian.jsp'),
            buttons: [{
                label: '添加',
                action: function() {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/user/addquanxian",
                        type:"post",
                        data:$("#addquanxianForm").serialize(),
                        success:function(result){
                            alert("添加成功!");
                            location.reload();
                        }
                    })
                }
            },{
                label: '取消',
                action:function(result) {
                    result.close();
                }
            }]
        })
    }


    //删除
    function deletequanxian(id){

        BootstrapDialog.show({
            title:'',
            message: "你确定要删除这条信息吗？",
            buttons: [{
                label: '确定',
                action: function() {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/user/deletequanxian?id="+id,
                        type:"post",
                        success:function(asd){
                            alert(asd);
                            location.reload();
                        }
                    })
                }
            },{
                label: '取消',
                action:function(result) {
                    result.close();
                }
            }]
        })
    }

    //修改
    function updatequanxian(id){
        BootstrapDialog.show({
            title: '修改信息',
            message: $('<div></div>').load('<%=request.getContextPath()%>/user/selectquanxianid?id='+id),
            buttons: [{
                label: '保存',
                action: function() {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/user/updateqx",
                        type:"post",
                        data:$("#updateqxForm").serialize(),
                        success:function(result){
                            location.reload();
                        }
                    })
                }
            },{
                label: '取消',
                action:function(result) {
                    result.close();
                }
            }]
        })

    }
</script>

</body>
</html>
