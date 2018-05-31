<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购买会员详情</title>

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


<center>
<form id="dddda">
    <h2 align="center" style="padding-bottom: 18px;">59元一个月会员</h2>
    <input type="radio" name="ynvip" value="1">选我
    <br><br>

    <h2 align="center" style="padding-bottom: 18px;">339元半年会员</h2>
    <input type="radio" name="ynvip" value="2">选我
    <br><br>

    <h2 align="center" style="padding-bottom: 18px;">599元一年会员</h2>
    <input type="radio" name="ynvip" value="3">选我
    <br><br><br><br>

    <button type="button" onclick="chongzhi(${param.peopleid})" class="btn btn-primary btn-lg">购买</button>
</form>
</center>


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

    function chongzhi(peopleid){
        $.ajax({
            url:"<%=request.getContextPath()%>/baoming/updateVIP?peopleid="+peopleid,
            type:"post",
            data:$("#dddda").serialize(),
            success:function(qq){
                if(qq == "空"){
                    alert("请选择充值类型！");
                }
                if(qq == "实"){
                    alert("充值成功！");
                    location.href="<%=request.getContextPath()%>/twl/huiyuan.jsp";
                }
            }
        })
    }

</script>

</body>
</html>
