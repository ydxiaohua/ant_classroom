<%--
  Created by IntelliJ IDEA.
  User: 世龙同学
  Date: 2018/5/16
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户新增页面</title>
</head>
<body>
<form  id="UserAddForm" >
    <table class="table table-bordered">

        <tr>
            <td>用户名称</td>
            <td><input type="text" name="username"/></td>
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
            <td><input type="text" name="userage"/></td>
        </tr>
        <tr>
            <td>职工生日</td>
            <td><input type="text" name="usertime"/></td>
        </tr>
    </table>
</form>
</body>
</html>
