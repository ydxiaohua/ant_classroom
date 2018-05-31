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
<form class="handleForm coverForm" id="addpeopleorm">
    <input type="hidden" name="baouserid"/>
    <div class="wrapper">
        <div class="main" style="width: 800px;">
            <div class="header" style="background-color: rgb(39, 44, 50); height: auto; min-height: 68px;"><div class="fb_headerInfo" style="padding-top:0px" tabindex="1">
                <div class="h_headline" style="text-align:center;font-size:28px;"><span>每特学院(蚂蚁课堂)培训报名</span></div>
                <div class="h_description" style="text-align:center;color:#ECF0F1;"><span>目前主要面向JavaEE中高级架构技术培训</span></div>
                <div class="clearB"></div></div>
            </div>
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
                        <font size="4">  每特学院报名预约QQ群：737301282<br>

                            官方客服QQ咨询：644064779</font>
                        <br><br><br>
                        <%--表格--%>
                        <table width="500" height="400">
                            <tr>
                                <td>姓名</td>
                                <td><input  class="form-control" type="text" name="baousername" placeholder="姓名" /></td>
                            </tr>
                            <tr >
                                <td>性别</td>
                                <td>
                                    <input  type="radio" name="baousersex" value="1"/>男
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input  type="radio" name="baousersex" value="2"/>女
                                </td>
                            </tr>
                            <tr>
                                <td>手机号</td>
                                <td><input  class="form-control" type="text" name="baouserphone"  placeholder="手机号" /></td>
                            </tr>
                            <tr>
                                <td>QQ号</td>
                                <td><input  class="form-control" type="text" name="baouserqq"  placeholder="QQ号" /></td>
                            </tr>
                            <tr>
                                <td>微信号</td>
                                <td><input  class="form-control" type="text" name="baouserweixin"  placeholder="微信号" /></td>
                            </tr>
                            <tr>
                                <td>最高学历</td>
                                <td>
                                    <select name="baousermaxxl" class="form-control">
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
                                </td>
                            </tr>
                            <tr>
                                <td>毕业时间</td>
                                <td>
                                    <a class='input-group date' id='datetimepicker1' >
                                        <input onclick="Datetime()" type='text' name="baousergraduatedate" class="form-control" id='nowdate' style="width: 250px; height: 30px;" />
                                         <span class="input-group-addon" style="float: left; width: 50px; height: 30px;">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>当前薪资</td>
                                <td><input  class="form-control" type="text" name="presentpay"  placeholder="当前薪资" /></td>
                            </tr>
                            <tr>
                                <td>当前状态</td>
                                <td>
                                    <select name="presentstatus" class="form-control">
                                        <option>在读</option>
                                        <option>在实习</option>
                                        <option>刚毕业</option>
                                        <option>有一年以内工作经验</option>
                                        <option>有两年以内工作经验</option>
                                        <option>有三年以内工作经验</option>
                                        <option>其他</option>
                                    </select>
                                </td>
                            </tr>
                        </table>
                        <br>
                    </div>
                </div>
            </div>
            <div data-reactid=".1">
                <div class="submit" style="text-align:center;background-color:#272C32;height: 70px;" aria-live="assertive" aria-relevant="text" data-reactid=".1.$submit">
                    <a class="fb_submitBtn" tabindex="1" onclick="yuyue()" role="button" aria-disabled="false" id="form_submit" style="width:auto;height:30px;padding-top:7px;padding-bottom:7px;padding-left:20px;padding-right:20px;font-weight:normal;color:#2C3E50;background:#FFFFFF;" >立即预约</a>
                    <div class="clearB" data-reactid=".1.$submit.3"></div>
                </div>
            </div>
        </div>
    </div>


</form><br>

<%--<input type="button" value="立即预约" onclick="yuyue()"  class="btn btn-danger"/><br><br><br><br><br>
--%></center>


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
            success:function(zz){
                if(zz == "aaaa"){
                    alert("请补全信息!");
                }
                if(zz == "bbbb"){
                    alert("预约成功!");
                    location.reload();
                }
            }
        })
    }

    //时间
    function Datetime() {
        $('#datetimepicker1').datetimepicker({
            language: 'zh-CN',//显示中文
            format: 'yyyy-mm-dd',//显示格式
            minView: "month",//设置只显示到月份
            initialDate: new Date(),
            autoclose: true,//选中自动关闭
            todayBtn: true,//显示今日按钮
        });
        //默认获取当前日期
        var today = new Date();
        var nowdate = (today.getFullYear()) + "-" + (today.getMonth() + 1) + "-" + today.getDate();
        //对日期格式进行处理
        var date = new Date(nowdate);
        var mon = date.getMonth() + 1;
        var day = date.getDate();
        var mydate = date.getFullYear() + "-" + (mon < 10 ? "0" + mon : mon) + "-" + (day < 10 ? "0" + day : day);
        document.getElementById("nowdate").value = mydate;
    }
</script>
</body>
</html>