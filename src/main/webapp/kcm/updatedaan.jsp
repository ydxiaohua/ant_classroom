<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/05/21
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <form class="form-inline" id="upwenform" >
        <input type="hidden" name="resultid" value="${answer.resultid}">

        <div class="form-group">
            <%--@declare id="exampleinputname2"--%><label for="exampleInputName2" >修改答案 :</label>&nbsp;&nbsp;&nbsp;
            <textarea  class="form-control" name="resultcontent"  value="${answer.resultcontent}" placeholder="简洁明了，能引起思考和讨论的知识的内容.">${answer.resultcontent}</textarea>
        </div>
    </form>
</center>
</body>
</html>
