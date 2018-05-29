<%--
  Created by IntelliJ IDEA.
  kcmuser: ASUS
  Date: 2018/05/17
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form class="form-inline" id="adddaanform">
    <input type="hidden" name="resultid">
    <div class="form-group">
        <label for="exampleInputName2">问题名称:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" class="form-control" name="questionid">
    </div><br/>
    <div class="form-group">
        <%--@declare id="exampleinputname2"--%><label for="exampleInputName2" >答案内容 :</label>&nbsp;&nbsp;&nbsp;
        <textarea  class="form-control" name="resultcontent"  placeholquestionnameder="简洁明了，能引起思考和讨论的知识的内容."></textarea>
    </div><br><br>
    <div class="form-group">
        <label for="exampleInputName2">被赞数量:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" class="form-control" name="beizancode" >
    </div><br><br>


</form>
</body>
</html>
