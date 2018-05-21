<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
</head>
<body>
<form id="updateForm">
    <table class="table table-bordered">
        <input type="hidden" name="baouserid" value="${reg.baouserid}">
        <tr>
            <td>姓名</td>
            <td><input type="text" value="${reg.baousername}" name="baousername"/></td>
        </tr>
        <tr>
            <td>性别</td>
            <td>
                <input type="radio" name="baousersex" value="1" <c:if test="${reg.baousersex== '1'}">checked="checked"</c:if>>男
                <input type="radio" name="baousersex" value="2" <c:if test="${reg.baousersex== '2'}">checked="checked"</c:if>>女
            </td>
        </tr>
        <tr>
            <td>手机号</td>
            <td><input type="text" value="${reg.baouserphone}" name="baouserphone" /></td>
        </tr>
        <tr>
            <td>QQ号</td>
            <td><input type="text" value="${reg.baouserqq}" name="baouserqq"/></td>
        </tr>
        <tr>
            <td>微信号</td>
            <td><input type="text" value="${reg.baouserweixin}" name="baouserweixin"/></td>
        </tr>
        <tr>
            <td>最高学历</td>
            <td>
                <select name="baousermaxxl" id="bb">
                    <option value="小学">小学</option>
                    <option value="初中">初中</option>
                    <option value="小学">小学</option>
                    <option value="本科">本科</option>
                    <option value="研究生">研究生</option>
                    <option value="博士">博士</option>
                    <option value="海外留学">海外留学</option>
                    <option value="无业游民">无业游民</option>
                    <option value="其他">其他</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>毕业时间</td>
            <td>
                <div class="form-group">
                    <a class='input-group date' id='datetimepicker1' >
                        <input onclick="Datetime()" value="${reg.baousergraduatedate}" type='text' name="baousergraduatedate" class="form-control" id='nowdate' style="width: 150px; height: 30px;" />
                        <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </a>
                </div>
        </tr>
        <tr>
            <td>当前薪资</td>
            <td><input type="text" value="${reg.presentpay}" name="presentpay"/></td>
        </tr>
        <tr>
            <td>当前状态</td>
            <td>
                <select name="presentstatus" id="cc">
                    <option value="在读">在读</option>
                    <option value="在读">在读</option>
                    <option value="刚毕业">刚毕业</option>
                    <option value="有一年以内工作经验">有一年以内工作经验</option>
                    <option value="有两年以内工作经验">有两年以内工作经验</option>
                    <option value="有三年以内工作经验">有三年以内工作经验</option>
                    <option value="其他">其他</option>
                </select>
            </td>
        </tr>
    </table>
</form>

<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

<script type="text/javascript">
    $(function(){
        var a="${reg.baousermaxxl}";
        $("#bb").val(a);
    })
    $(function(){
        var a="${reg.presentstatus}";
        $("#cc").val(a);
    })


    //时间
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
</script>
</body>
</html>