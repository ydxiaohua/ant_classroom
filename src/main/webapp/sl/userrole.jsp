<%--
  Created by IntelliJ IDEA.
  User: 世龙同学
  Date: 2018/5/17
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>角色设置</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
    <jsp:include page="easyui.jsp" flush="true"></jsp:include>

</head>
<body>
<form>
    <%--<input type="hidden" name="userid" value="${dbuser.userid}" id="userid">--%>


    <table id="userroletb"></table>

</form>
<script type="text/javascript">
    $(function(){
        var userid=${userrole};
        $("#userroletb").datagrid({
            url:'<%=request.getContextPath()%>/user/selectUserRole?userid='+userid,
            queryParams:{
            },
            onLoadSuccess:function(data){
                $.each(data.rows, function(index, item){


                    //这里循环后台返回的角色列表
                    if(item.ro == 1){
                        //判断字段truecolumn中为true则默认背选中checkRow：默认被选中的方法
                        $('#userroletb').datagrid('checkRow', index);

                    }
                })
            },

            columns:[[
                {field:'check',width:150,checkbox:true},
                {field:'roleid',title:'编号',width:200},
                {field:'rolename',title:'角色名称',width:200}
            ]]
        })

    })

</script>
</body>
</html>
