<%--
  Created by IntelliJ IDEA.
  User: wfyf.zx1520
  Date: 2018/5/16
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <center>
        <form  id="upteacher-from" >
            <table class="table table-bordered">
                <input type="hidden" name="teacherid" value="${list.teacherid}"/>
                <tr>
                    <td>讲师名称</td>
                    <td><input type="text" name="teachername" value="${list.teachername}"/></td>
                </tr>

                <tr>
                    <td>创建时间</td>
                    <td>
                        <input type="text" name="teacherdate" value="${list.teacherdate}"/>
                    </td>
                </tr>
                <tr>
                    <td>个人邮箱</td>
                    <td><input type="text"  name="teachernote" value="${list.teachernote}"/></td>
                </tr>

            </table>
        </form>
    </center>


</body>
</html>
