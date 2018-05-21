<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加评论</title>
</head>
<body>
<form id="addComForm">
    <table class="table table-bordered">
        <input type="hidden" name="comid">
        <tr>
            <td>评论内容</td>
            <td><input type="text" name="comcontent"/></td>
        </tr>
        <tr>
            <td>创建时间</td>
            <td>
                <div class="form-group">
                    <a class='input-group date' id='datetimepicker2' >
                        <input onclick="Datetime()" type='text' name="comdate" class="form-control" id='nowdate1' style="width: 150px; height: 30px;" />
                        <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </a>
                </div>
            </td>
        </tr>
        <tr>
            <td>点赞数量</td>
            <td><input type="text" name="comcode"/></td>
        </tr>
        <tr>
            <td>课程id</td>
            <td><input type="text" name="courseid"/></td>
        </tr>
    </table>
</form>

<script type="text/javascript">
    //时间
    function Datetime() {
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
        document.getElementById("nowdate1").value = mydate;
    }
</script>
</body>
</html>
