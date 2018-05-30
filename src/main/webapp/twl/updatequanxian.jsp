<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改权限</title>
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />

</head>
<body>
<form id="updateqxForm">
    <table class="table table-bordered">
        <input type="hidden" name="id" value="${qx.id}">
        <tr>
            <td>姓名</td>
            <td><input type="text" value="${qx.text}" name="text"/></td>
        </tr>
    </table>
</form>


<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>



</body>
</html>
