<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>讲师页面</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>

<body>




<%--------------------------------------------------------------------------------------------%>
<div class="modal fade" id="addteacher" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
            </div>
           <center>

                    <form  id="teachers" >
                        <table class="table table-bordered"  >

                            <tr>
                                <td>讲师名称</td>
                                <td><input type="text"   name="teachername"/></td>
                            </tr>
                            <tr>
                                <td>创建日期</td>
                                <td><input type="text"  name="teacherdate" /></td>
                            </tr>

                        </table>
                    </form>

            </center>
            <div class="modal-footer">
                <button type="button" class="btn btn-success"  onclick="submitteacher()">提交</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>


<input type="button" value="添加" class="btn btn-success" onclick="addteacher()"/>
<table class="table" id="teacher" border="1"></table>
<script>



    $("#teacher").bootstrapTable({

        url:"<%=request.getContextPath()%>/CourseController/queryteacher",
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
                    return '<input type="button" value="删除" class="btn btn-success" onclick="deleteteacher('+row.teacherid+')"/><input type="button" value="修改" class="btn btn-success" onclick="updateteacher('+row.teacherid+')"/>';
                }}
        ]
    })

    function addteacher(){
        $('#addteacher').modal({
            keyboard:false,
        })
    }



    function   submitteacher(){

        $.ajax({
            type:"post",
            url:"<%=request.getContextPath()%>/CourseController/addTeacher",
            data:$("#teachers").serialize(),
            success:function(ok){

                location.reload();
            },error:function(){
                alert("新增错误")
            }
        })
    }

    function deleteteacher(teacherid){

        $.ajax({

            type:"post",

            url:"<%=request.getContextPath()%>/CourseController/deleteteacher",

            data:{"teacherid":teacherid},

            success:function(result){



                location.href=location

            }

        })

    }





    function updateteacher(teacherid){

        BootstrapDialog.show({
            title : "修改的方法",       //title
            message :$('<div></div>').load("<%=request.getContextPath()%>/CourseController/queryteacherid?teacherid="+teacherid),
            buttons : [{
                label : "修改",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/CourseController/updateteacher",
                        type : "post",
                        data : $("#upteacher-from").serialize(),
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




</script>

</body>
</html>
