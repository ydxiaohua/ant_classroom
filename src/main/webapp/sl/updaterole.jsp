<%--
  Created by IntelliJ IDEA.
  User: 世龙同学
  Date: 2018/5/16
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改角色</title>
</head>
<body>
<form  id="RoleUpdateForm" >
    <table class="table table-bordered">
        <input type="hidden" name="roleid" value="${dbrole.roleid}"/>
        <tr>
            <td>角色名称</td>
            <td><input type="text" name="rolename" value="${dbrole.rolename}"/></td>
        </tr>
    </table>
</form>
</body>
</html>
