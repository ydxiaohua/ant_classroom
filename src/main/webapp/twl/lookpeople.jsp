<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>报名用户信息</title>\

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

<form class="form-inline">
    <div class="form-group">
        手机号:<input type="text" class="form-control" id="a1" name="phone">
    </div>&nbsp&nbsp&nbsp
    <div class="form-group">
        用户名:<input type="text" class="form-control" id="a2" name="peoplenickname">
    </div>&nbsp&nbsp&nbsp
    <div class="form-group">
        年龄:<input type="text" class="form-control" id="a3" name="peopleage">
    </div>&nbsp&nbsp&nbsp
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" class="btn btn-success" onclick="search()" value="搜索"/>
</form><br>


<table class="table" id="vipuser" border="1"></table>

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

    function search(){
        $("#vipuser").bootstrapTable("refresh");
    }

    //查询
    $(function(){
        $("#vipuser").bootstrapTable({
            url:"<%=request.getContextPath()%>/baoming/queryvipuserlist",
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
            paginationLoop:true,//开启分页无限循环
            pageNumber:1,//当前页数
            pageSize:3,//每页条数
            pageList:[1,3,5],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams:function(param){
                return {
                    'phone':$("#a1").val(),
                    'peoplenickname':$("#a2").val(),
                    'peopleage':$("#a3").val(),
                    page:this.pageNumber,//当前页
                    rows:this.pageSize //每页条数
                }
            },
            columns:[
                {field:'peopleid',title:'编号',width: 50},
                {field:'email',title:'邮箱',width: 50},
                {field:'phone',title:'手机号',width: 50},
                {field:'peoplepass',title:'密码',width: 100},
                {field:'ynvip',title:'是否为会员',width: 50,
                    formatter: function(value,row,index){
                        var yee = "";
                        var aa = row.ynvip;
                        if(aa==1){
                            yee="是";
                        }else{
                            yee="不是";
                        }
                        return yee;
                    }
                },
                {field:'vipendtime',title:'会员到期时间',width: 50},
                {field:'peoplename',title:'姓名',width: 50},
                {field:'peoplenickname',title:'昵称',width: 50},
                {field:'peoplesex',title:'性别',width: 50,
                    formatter: function(value,row,index){
                        var xing = "";
                        var ss = row.peoplesex;
                        if(ss==1){
                            xing="男";
                        }else{
                            xing="女";
                        }
                        return xing;
                    }},
                {field:'peopleage',title:'年龄',width: 50},
                {field:'act',title:'操作',width:100,
                    formatter: function(value,row,index){
                        return '<a href="javascript:deletevipuser('+row.peopleid+')" class="btn btn-danger" role="button">删除</a>';
                    }
                },
            ]
        })
    })

    //删除
    function deletevipuser(id){
        BootstrapDialog.show({
            title:'',
            message: "你确定要删除这条信息吗？",
            buttons: [{
                label: '确定',
                action: function() {
                    $.ajax({
                        url:"<%=request.getContextPath()%>/baoming/deletevipuser?peopleid="+id,
                        type:"post",
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