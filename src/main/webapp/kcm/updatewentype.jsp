<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/05/16
  Time: 08:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap 插件 css -->
    <link href="<%=request.getContextPath()%>/bootstrap/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link href="<%=request.getContextPath()%>/bootstrap/bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<center>
    <form class="form-inline" id="upwentypeform">
        <input type="hidden" name="questionid" value="${pt.questionid}">
        <div class="form-group">
            <%--@declare id="exampleinputname2"--%><label for="exampleInputName2">问题类型 :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" class="form-control" name="questionname" value="${pt.questionname}">
        </div><br><br>
    </form>
</center>
<!--jQuery核心js  -->
<script src="<%=request.getContextPath() %>/bootstrap/jquery.min.js"></script>
<!-- bootstrap 核心js文件 -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
<!-- bootStrap TreeView -->

</body>
</html>
