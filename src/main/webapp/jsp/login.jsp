<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="../bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="../bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" type="text/css"/>
    <link rel="stylesheet" href="../bootstrap/bTabs-master/b.tabs.css" type="text/css"/>
    <link href="../bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.min.css" rel="stylesheet">
</head>
<body>
<center>
<form id="loginuser" class="form-inline" id="addBQform">
    <input type="hidden" name="bq.bid">
    <div class="form-group">
        <%--@declare id="exampleinputname2"--%><label for="exampleInputName2">用户名:</label>
        <input type="text" width="100" class="form-control"  name="username"  placeholder="请输入用户名"><br>
    </div><br><br><br>
    <div class="form-group">
        <label for="exampleInputName2">密码:</label>
        <input type="password" width="100" class="form-control"  name="userpass" placeholder="请输入密码"><br>
    </div><br><br>
    <button type="button" class="btn btn-success"  onclick="loginuser()">登陆</button>

</form>
</center>
<script type="text/javascript" src="../bootstrap/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="../bootstrap/bTabs-master/b.tabs.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="../bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.min.js"></script>
</body>
<script>
    function  loginuser(){
        var   username=$("[name='username']").val();
        var   userpass=$("[name='userpass']").val();
        $.ajax({
            type:"post",
            url:"<%=request.getContextPath()%>/kcmuser/loginuser",
            data:{"username":username,"userpass":userpass},
            success:function(msg){
                if(msg=='0'){
                    alert("账号不存在")
                }
                if(msg=='1'){
                    alert("密码错误")
                }
                if(msg == '2'){
                    location.href="<%=request.getContextPath()%>/jsp/index.jsp"
                }
            },error:function(){
                alert("程序错误")
            }
        })
    }

</script>
</html>
