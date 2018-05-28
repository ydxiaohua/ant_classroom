<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购买会员须知</title>


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
<div class="bg-fa of">
    <section class="container">
        <section class="i-article">
            <div class="fl col-7">

                <section class="hLh30 txtOf mt5 pb20 mreadnum"></section>
                <h2 align="center" style="padding-bottom: 18px;">蚂蚁课堂充值会员须知</h2>
                <div id="art-infor-body">
                    <p style="text-align: center;color: rgb(255, 0, 0);">从2018年06月01日，蚂蚁课堂不在出售永久会员业务，会员规则改为：399元/半年 、599元/1年、 参加培训/永久。2018年06月01日之前充值的永久会员，保留永久会员权限。</p>
                    <p style="text-align: center;">
                        <strong>蚂蚁课堂为了能够更好的服务大家，该课程必须要会员才能观看！</strong>
                    </p>
                    <p style="text-align: center;">
                        <strong><span style="color: rgb(255, 0, 0);">蚂蚁课堂永久会员，五一会员特价：599元/永久会员</span></strong>
                    </p>
                    <p style="text-align: center;">
                        <strong>会员享受特权</strong>
                    </p>
                    <p style="text-align: center;">
                        <strong>java分布式/微服务/并发编程/性能优化/等视频教程免费观看！SpringBoot/SpringCloud/Duboo/Dubbo/实战分布式微服务视频教程
                            一切定位企业符合实际、高端技术、按照目前互联网最新主流技术同步更新。 </strong>
                    </p>

                    <p style="text-align: center;">
                        <b>1024p，超清加速观看，无广告。</b>
                    </p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <p><br></p>
                    <center><button type="button" onclick="chongzhi(${peopleid})" class="btn btn-primary btn-lg">立即充值</button></center>
                </div>
            </div>
        </section>
    </section>
</div>

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
            success:function(){
                alert("购买成功！");
                location.reload();
            }
        })
    }

</script>
</body>
</html>