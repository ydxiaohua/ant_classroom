<%--
  Created by IntelliJ IDEA.
  User: 世龙同学
  Date: 2018/5/16
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户信息</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>
<form  id="UserUpdateForm" >
    <table class="table table-bordered">
        <input type="hidden" name="userid" value="${dbuser.userid}"/>
        <tr>
            <td>用户名称</td>
            <td><input type="text" name="username" value="${dbuser.username}"/></td>
        </tr>
        <tr>
            <td>新闻类型</td>
            <td>
                男<input type="radio" name="usersex" value="1">
                女<input type="radio" name="usersex" value="2">
            </td>
        </tr>
        <tr>
            <td>职工年龄</td>
            <td><input type="text" name="userage" value="${dbuser.userage}"/></td>
        </tr>
        <tr>
            <td>职工生日</td>
            <td><input type="text" name="usertime" value="${dbuser.usertime}"/></td>
        </tr>
    </table>
</form>
<script>
    var usersex=${dbuser.usersex};
    $("input[name='usersex'][value="+usersex+"]").attr("checked",true);





</script>

</body>
</html>
