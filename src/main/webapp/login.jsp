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
<form id="loginForm" class="form-inline" id="addBQform">

    <div class="form-group">
        <%--@declare id="exampleinputname2"--%><label for="exampleInputName2">用户名:</label>
        <input type="text" width="100" class="form-control"  name="username"  placeholder="请输入用户名"><br>
    </div><br><br><br>
    <div class="form-group">
        <label for="exampleInputName2">密码:</label>
        <input type="password" width="100" class="form-control"  name="userpass" placeholder="请输入密码"><br>
    </div><br><br>
    <button type="button" class="btn btn-success"  onclick="deng()">登陆</button>

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

    function deng(){

        $.ajax({

            url:"user/loginUser",

            type:"post",

            data:$("#loginForm").serialize(),

            dataType:"text",

            success:function(data){

                if(data=="OK"){

                    location.href="index.jsp";

                }else if(data=="passNo"){

                    alert("密码错误");

                }else if(data=="nameNo"){

                    alert("用户名错误");
                }
            }
        })
    }

</script>
</html>
