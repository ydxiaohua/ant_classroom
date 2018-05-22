<%--
  Created by IntelliJ IDEA.
  User: wfyf.zx1520
  Date: 2018/5/16
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>大纲页面</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>


<div class="modal fade" id="adddagang" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
            </div>
            <center>

                <form  id="dagangs" >
                    <table class="table table-bordered"  >

                        <tr>
                            <td>标题</td>
                            <td><input type="text"   name="dgname"/></td>
                        </tr>
                        <tr>
                            <td>创建时间</td>
                            <td><input type="text"  name="pdate" /></td>
                        </tr>
                        <tr>
                            <td>是否为VIP</td>
                            <td>
                                <input type="radio"  name="ynvip"  value="1" />是
                                <input type="radio"  name="ynvip"  value="2" />不是

                            </td>
                        </tr>
                        <tr>
                            <td>所属小节</td>
                            <td>
                                <input type="text"  name="xiaojie" />

                            </td>
                        </tr>

                    </table>
                </form>

            </center>
            <div class="modal-footer">
                <button type="button" class="btn btn-success"  onclick="submitdagang()">提交</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

<input type="button" value="添加" class="btn btn-success" onclick="adddagang()"/>

<table class="table" id="dagang" border="1"></table>

<script>

    $("#dagang").bootstrapTable({

        url:"<%=request.getContextPath()%>/CourseController/querydagang",
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

            {field:'dgid',title:'id',width: 100},
            {field:'dgname',title:'大纲名称',width: 100},
            {field:'pdate',title:'创建日期',width: 100},
            {field:'username',title:'创建人',width: 100},
            {field:'ynvip',title:'是否VIP',width: 100,
                formatter: function(value,row,index){
                    if(value==1){

                        return "是"
                    }
                    if(value==2){

                        return "不是"
                    }
                }
            },
            {field:'xiaojie',title:'小节',width: 100},


            {field:'act',title:'操作',width:100,
                formatter: function(value,row,index){
                    return '<input type="button" value="删除" class="btn btn-success" onclick="deletedagang('+row.dgid+')"/><input type="button" value="修改" class="btn btn-success" onclick="updatedagang('+row.dgid+')"/>';
                }}
        ]
    })

    function adddagang(){
        $('#adddagang').modal({
            keyboard:false,
        })
    }

    function   submitdagang(){

        $.ajax({
            type:"post",
            url:"<%=request.getContextPath()%>/CourseController/adddagang",
            data:$("#dagangs").serialize(),
            success:function(ok){

                location.reload();
            },error:function(){
                alert("新增错误")
            }
        })
    }



    function deletedagang(dgid){

        $.ajax({

            type:"post",

            url:"<%=request.getContextPath()%>/CourseController/deletedagang",

            data:{"dgid":dgid},

            success:function(result){
                location.href=location

            }

        })

    }



    function updatedagang(dgid){

        BootstrapDialog.show({
            title : "修改的方法",       //title
            message :$('<div></div>').load("<%=request.getContextPath()%>/CourseController/querydgid?dgid="+dgid),
            buttons : [{
                label : "修改",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/CourseController/updatedagang",
                        type : "post",
                        data : $("#updagang-from").serialize(),
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
