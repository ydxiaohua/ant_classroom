<%--
  Created by IntelliJ IDEA.
  User: wfyf.zx1520
  Date: 2018/5/16
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>


<center>
    <form  id="updagang-from" >
        <table class="table table-bordered">
            <input type="hidden" name="dgid" value="${list.dgid}"/>
            <tr>
                <td>大纲名称</td>
                <td><input type="text" name="dgname" value="${list.dgname}" class="form-control"/></td>
            </tr>

            <tr>
                <td>创建时间</td>
                <td>
                    <input type="text" name="pdate" value="${list.pdate}" class="form-control"/>
                </td>
            </tr>

            <tr>
                <td>所属课程</td>
                <td>
                    <select name="courseid" class="form-control">

                        <c:forEach items="${course}" var="t">
                            <option value="${t.courseid}"
                                ${t.courseid == list.courseid?'selected':''}
                            >${t.coursename}</option>
                        </c:forEach>
                    </select>


                </td>
            </tr>
            <tr>
                <td>是否为VIP</td>
                <td>
                    <input type="radio"  name="ynvip"  value="1"
                       <c:if test="${list.ynvip==1}">checked</c:if>
                    />是
                    <input type="radio"  name="ynvip"  value="2"
                       <c:if test="${list.ynvip==2}">checked</c:if>
                    />不是

                </td>
            </tr>

            <tr>
                <td>所属小节</td>
                <td>
                    第<input type="text" name="xiaojie" value="${list.xiaojie}" class="form-control"/>节
                </td>
            </tr>
            <input type="hidden" name="uid" value="${list.uid}"/>
        </table>
    </form>
</center>

<script>


</script>

</body>
</html>
