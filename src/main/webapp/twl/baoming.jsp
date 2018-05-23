<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学生报名中心</title>


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
<body background="1.jpg">
<center>
<form id="addpeopleorm">
    <input type="hidden" name="baouserid"/>
    <div class="body" style="zoom: 1; background-color: rgba(255, 255, 255, 0.898);">
        <div class="fb_componentWrapper">
            <div class="fbc_pictureWrapper images-1 layout-1">
                <%--最上方图片--%>
                <div class="fb_component fb_staticComponent staticPic" style="padding-top:5px;padding-bottom:5px;" data-reactid=".0.0.0:$c201888783">
                    <div class="fbc_pictureWrapper images-1 layout-1" data-reactid=".0.0.0:$c201888783.0" style="padding-left: 30px; padding-right: 30px;">
                        <div class="fbc_pictureImage" data-reactid=".0.0.0:$c201888783.0.0:$pic0">
                            <div class="fbc_piWrapper" data-reactid=".0.0.0:$c201888783.0.0:$pic0.0">
                                <img src="http://pcdn.mikecrm.com/ugc_6_c/pub/js/js0g872rdx9wkietvvm1baz726qx62i5/form/image/DxjBG58AvZQIhNLbNjYJWOuW0KdYnR50.jpg"
                                     class="fbc_piImg" style="cursor:default;" data-reactid=".0.0.0:$c201888783.0.0:$pic0.0.0" width="100%">
                            </div>
                        </div>
                    </div>
                </div>
                <%--文字--%>
                    <br><br><br>
                          <font size="7">  每特学院报名预约QQ群：737301282<br>

                           官方客服QQ咨询：644064779</font>
                    <br><br><br
                    <%--表格--%>
                <blockquote>
                    姓名：<input class="span12" type="text" name="baousername" placeholder="姓名" />
                </blockquote>
                <blockquote>
                    性别：<input class="span12" type="radio" name="baousersex" value="1"/>男
                    <input class="span12" type="radio" name="baousersex" value="2"/>女
                </blockquote>
                <blockquote>
                    手机号：<input class="span12" type="text" name="baouserphone"  placeholder="手机号" />
                </blockquote>
                <blockquote>
                    QQ号：<input class="span12" type="text" name="baouserqq"  placeholder="QQ号" />
                </blockquote>
                <blockquote>
                    微信号：<input class="span12" type="text" name="baouserweixin"  placeholder="微信号" />
                </blockquote>
                <blockquote>
                    最高学历：
                    <select name="baousermaxxl">
                        <option>小学</option>
                        <option>初中</option>
                        <option>高中</option>
                        <option>本科</option>
                        <option>研究生</option>
                        <option>博士</option>
                        <option>海外留学</option>
                        <option>无业游民</option>
                        <option>其他</option>
                    </select>
                </blockquote>
                <blockquote>
                    毕业时间：<input class="span12" type="text" name="baousergraduatedate"  placeholder="毕业时间" />
                </blockquote>
                <blockquote>
                    当前薪资：<input class="span12" type="text" name="presentpay"  placeholder="当前薪资" />
                </blockquote>
                <blockquote>
                    当前状态：
                    <select name="presentstatus">
                        <option>在读</option>
                        <option>在实习</option>
                        <option>刚毕业</option>
                        <option>有一年以内工作经验</option>
                        <option>有两年以内工作经验</option>
                        <option>有三年以内工作经验</option>
                        <option>其他</option>
                    </select>
                </blockquote>
                <br>
            </div>
        </div>
    </div>
</form><br>
<input type="button" value="立即预约" onclick="yuyue()"  class="btn btn-danger"/><br><br><br><br><br>
</center>


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
    function yuyue(){
        $.ajax({
            url:"<%=request.getContextPath()%>/baoming/addpeople",
            type:"post",
            data:$("#addpeopleorm").serialize(),
            success:function(){
                alert("预约成功！");
                location.reload();
            }
        })
    }
</script>
</body>
</html>