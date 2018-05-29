<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加权限</title>


    <!-- Bootstrap 插件 css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap TreeView css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">
    <!-- Bootstrap addTabs css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <!-- Bootstrap table css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- bootstrap-dialog css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
    <!-- bootstrap-fileinput css -->
    <link href="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">


</head>
<body>
    <form id="addquanxianForm">
        <table class="table table-bordered">
            <input type="hidden" name="id">
            <input type="hidden" name="url">
            <tr>
                <td>权限名称</td>
                <td><input type="text" name="text"/></td>
            </tr>
            <tr>
                <td>所属模块</td>
                <td>
                    <select name="pid" id="qwer">
                        <option value="0">-请选择-</option>
                    </select>
                </td>
            </tr>

        </table>
    </form>


    <!--jQuery核心js  -->
    <script src="<%=request.getContextPath() %>/bootstrap/jquery.min.js"></script>
    <!-- bootstrap 核心js文件 -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
    <!-- bootStrap TreeView -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
    <!-- bootStrap addTabs -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootStrap-addTabs/bootstrap.addtabs.js"></script>
    <!-- bootStrap table -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/bootstrap-table.js"></script>
    <!-- bootStrap table 语言包中文-->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
    <!-- bootstrap-datetimepicker -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <!-- bootstrap-dialog -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
    <!-- bootstrap-fileinput -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/js/fileinput.js"></script>
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-fileinput/js/locales/zh.js"></script>
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>



    <script type="text/javascript">

        $.ajax({
            url:"<%=request.getContextPath() %>/user/queryquanxian",
            type:"post",
            dataType:"json",
            success:function(reslut){
                var tr2 ="";
                $(reslut).each(function(){
                    tr2 +="<option value='"+this.id+"'>"+this.text+"</option >";
                })
                $("#qwer").append(tr2);
            }
        })

    </script>
</body>
</html>
