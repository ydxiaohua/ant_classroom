<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/15
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分享查询</title>
</head>
<link rel="stylesheet" href="../bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="../bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" type="text/css"/>
<link rel="stylesheet" href="../bootstrap/bTabs-master/b.tabs.css" type="text/css"/>
<link href="../bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.min.css" rel="stylesheet">
<!--   @*datetime控件-->
<link href="../bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<body>

<a class='input-group date' id='datetimepicker1'>
    <input size="16" type="text" onclick="Datetime()" name="qiandata" class="form-control" id='nowdate' style="width: 150px; height: 30px;" >
                <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
</a>
↓
<a class='input-group date' id='datetimepicker2'>
    <input size="16" type="text" onclick="Datetime2()" name="hodata" class="form-control" id='nowdate2' style="width: 150px; height: 30px;" >
                <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
</a><input  type="button" value="区间查询"   class="btn btn-info" onclick="querylist()"/>
<table class="table  table-striped table-bordered table-hover"  id="share"></table>
<div class="bdsharebuttonbox">
    <a href="#" class="bds_more" data-cmd="more"></a>
    <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信" ></a>
    <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间" ></a>
    <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" ></a>
    <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博" ></a>
    <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
</div>
<script type="text/javascript" src="../bootstrap/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="../bootstrap/bTabs-master/b.tabs.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="../bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.min.js"></script>
<script src="../bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
</body>
<script>
    //设置日期时间控件
    function Datetime() {
        $('#datetimepicker1').datetimepicker({
            language: 'zh-CN',//显示中文
            format: 'yyyy-mm-dd',//显示格式
            minView: "month",//设置只显示到月份
            initialDate: new Date(),
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        //默认获取当前日期
        var today = new Date();
        var nowdate = (today.getFullYear()) + "-" + (today.getMonth() + 1) + "-" + today.getDate();
        //对日期格式进行处理
        var date = new Date(nowdate);
        var mon = date.getMonth() + 1;
        var day = date.getDate();
        var mydate = date.getFullYear() + "-" + (mon < 10 ? "0" + mon : mon) + "-" + (day < 10 ? "0" + day : day);
        document.getElementById("nowdate").value = mydate;
    }
    //设置日期时间控件
    function Datetime2() {
        $('#datetimepicker2').datetimepicker({
            language: 'zh-CN',//显示中文
            format: 'yyyy-mm-dd',//显示格式
            minView: "month",//设置只显示到月份
            initialDate: new Date(),
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        //默认获取当前日期
        var today = new Date();
        var nowdate = (today.getFullYear()) + "-" + (today.getMonth() + 1) + "-" + today.getDate();
        //对日期格式进行处理
        var date = new Date(nowdate);
        var mon = date.getMonth() + 1;
        var day = date.getDate();
        var mydate = date.getFullYear() + "-" + (mon < 10 ? "0" + mon : mon) + "-" + (day < 10 ? "0" + day : day);
        document.getElementById("nowdate2").value = mydate;
    }
    $(function(){
          query();
            })
    //区间查询
    function  querylist(){
        $("#share").bootstrapTable("refresh");
    }
    function   query(){
        $('#share').bootstrapTable({
            url: "<%=request.getContextPath()%>/user/sharelist",      //请求后台的URL（*）
            striped: true,//隔行变色
            showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            showRefresh:true,//显示刷新按钮
            showToggle:true,//显示切换视图
            searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
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
                    qiandata:$("[name='qiandata']").val(),
                    hodata: $("[name='hodata']").val()
                }
            },
            columns:[
                {field:"",title:"复选",width:100,align:'center',
                    formatter:function(value,row,index){
                        return  "<input type='checkbox' value='"+row.shareid+"'  name='check2'>";
                    }
                },
                { field: 'shareid',title: 'id',align:'center',sortable: true},
                { field: 'userid',title: '用户名',align:'center',sortable: true},
                { field: 'comid',title: '密码',align:'center',sortable: true},
                { field: 'shareurl',title: '验证码',align:'center',sortable: true},
                { field: 'presenttime',title: '分享时间',align:'center',sortable: true},
            ],
        })
    }
</script>

<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"24"}, "share":{},"image":{"viewList":["weixin","qzone","tsina","tqq","renren"],
        "viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["weixin","qzone","tsina","tqq","renren"]}};
        with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>
</html>
