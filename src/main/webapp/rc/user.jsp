<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/27
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户</title>
</head>
<link rel="stylesheet" href="../bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="../bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" type="text/css"/>
<link rel="stylesheet" href="../bootstrap/bTabs-master/b.tabs.css" type="text/css"/>
<link href="../bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.min.css" rel="stylesheet">

<body>
<div class="modal fade" id="adduser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
            </div>
            <center>
                <center>
                    <form  id="user" >
                        <table class="table table-bordered"  >
                            <tr>
                                <td>用户名</td>
                                <td><input type="text" name="username"/></td>
                            </tr>
                            <tr>
                                <td>密码</td>
                                <td><input type="text" name="userpas" /></td>
                            </tr>
                            <tr>
                                <td>验证码</td>
                                <td><input type="text" name="yangzheng"/></td>
                            </tr>
                        </table>
                    </form>
                </center>
            </center>
            <div class="modal-footer">
                <button type="button" class="btn btn-success"  onclick="updatexinwen()">提交</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<input type="button" value="添加" class="btn btn-success" onclick="adduser()"/>
<table class="table  table-striped table-bordered table-hover" id="resstb"></table>

<script type="text/javascript" src="../bootstrap/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="../bootstrap/bTabs-master/b.tabs.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="../bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.min.js"></script>
</body>
<script>
    $('#resstb').bootstrapTable({
        url: "<%=request.getContextPath()%>/user/test2",                      //请求后台的URL（*）
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
            {field:"",title:"复选",width:100,align:'center',
                formatter:function(value,row,index){
                    return  "<input type='checkbox' value='"+row.xid+"'  name='check2'>";
                }
            },
            { field: 'userid',title: 'id',align:'center',sortable: true},
            { field: 'username',title: '用户名',align:'center',sortable: true},
            { field: 'userpas',title: '密码',align:'center',sortable: true},
            { field: 'yangzheng',title: '验证码',align:'center',sortable: true},
            { field: 'jifen',title: '积分',align:'center',sortable: true},
            { field: 'chouci',title: '抽奖次数',align:'center',sortable: true},
        ],
    })
    /**
     * 新增用户表
     */
  function  adduser(){
      $('#adduser').modal({
          keyboard:false,
      })
  }
    function   updatexinwen(){
        $.ajax({
            type:"post",
            url:"<%=request.getContextPath()%>/user/adduser",
            data:$("#user").serialize(),
            success:function(ok){
                location.reload();
            },error:function(){
                alert("新增错误")
            }
        })
    }
</script>
</html>
