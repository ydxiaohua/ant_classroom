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
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<center>
    <form class="form-inline" id="addWenform">
        <input type="hidden" name="questionid">
        <div class="form-group">
            <%--@declare id="exampleinputname2"--%><label for="exampleInputName2">分类 :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" class="form-control" name="typeid" value="1">课程问答
            <input type="radio" class="form-control" name="typeid" value="2">学习分享
        </div><br><br>
        <div class="form-group">
            <%--@declare id="exampleinputname2"--%><label for="exampleInputName2" >问题内容 :</label>&nbsp;&nbsp;&nbsp;
                <textarea  class="form-control" name="questioncontent"  placeholder="简洁明了，能引起思考和讨论的知识的内容."></textarea>
        </div><br><br>
        <div class="form-group">
            <label for="exampleInputName2">问题标题:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" class="form-control" name="questionname"  placeholder="问题标签不少于10个字.">
        </div><br><br>
        <div class="form-group">
            <label for="exampleInputName2">标签:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type='hidden' id="jishu" value="0"/>
            <input type='text' name="questiontypeid"/><br><br>
            <span id="font1"></span>
        </div>
    </form>
</center>
<!--jQuery核心js  -->
<script src="<%=request.getContextPath() %>/bootstrap/jquery.min.js"></script>
<!-- bootstrap 核心js文件 -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
<!-- bootStrap TreeView -->

    <script>
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/queryWenType",//请求地址
            type:"post",//设置请求方式
            dataType:"json",//返回数据的类型
            async:false,
            success:function (WenType){
                var checkedbox = "";
                $.each(WenType,function(){
                    checkedbox += "<a href='javascript:getTypeName(\""+this.questionname+" \")'  value="+this.questiontypeid+">"+this.questionname+"</a>&nbsp;";
                })
                $("#font1").html(checkedbox);
            },
            error:function (){
                alert("程序出错");
            }
        })

        /*$("input:checkbox").click(function() {
            var radio_len = $("input:checkbox:checked").length;
            if (radio_len > 3) {
                $("#font2").html("<font color='red'>最多只能选三个^.^</font>");
                return false;
            }
        })*/
        function getTypeName(questionname){
            if(questionname != null && questionname != ""){
                // 获取text文本中的值
                var sdf = $("[name='questiontypeid']").val();
                //在上面定义一个隐藏域，count 计数
                var count =$("#jishu").val();
                var dgfgf = sdf.substring(0,sdf.length-1);
                var temp = dgfgf.split(" ");
                if(count <= 3){
                    for(var i=0;i<temp.length;i++){
                        ++count;
                    }
                    sdf += questionname;
                    $("#jishu").val(count);
                    $("[name='questiontypeid']").val(sdf);
                    return true;
                }else{
                    alert("问题类型最多能选3个");
                    return false;
                }
            }
        }
    </script>

</body>
</html>
