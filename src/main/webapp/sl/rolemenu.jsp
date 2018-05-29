<%--
  Created by IntelliJ IDEA.
  User: 世龙同学
  Date: 2018/5/17
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>角色赋权限</title>

    <jsp:include page="easyui.jsp" flush="true"></jsp:include>
</head>
<body>
<ul id="menus-tree"></ul>

<%--<input type="hidden" name="roleid" value="${roleid}" id="roleid">--%>
<script>
    $(function(){
        var rid=${roleid};
        $('#menus-tree').tree({
            url:'<%=request.getContextPath()%>/user/selectRoleMenu?rid='+rid,
            parentField:'pid',//实体类中父节点id的属性名
            checkbox:"true",
            selectOnCheck:false,
            striped:true,
            ctrlselect:true,
        });
    })
</script>
</body>
</html>
