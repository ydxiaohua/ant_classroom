<%--
  Created by IntelliJ IDEA.
  User: wfyf.zx1520
  Date: 2018/5/16
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程标题</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>
<div class="modal fade" id="addcourse" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:500px;height:200px">
        <div class="modal-content">
            <div class="modal-header" style="width:500px;height: 50px">
            </div>
            <center>

                <form class="form-inline"  id="courses" >
                    <table class="table table-bordered"  >

                        <tr>
                            <td>讲师名称</td>
                            <td>
                                <select name="teacherid" class="form-control">
                                    <option>--请选择--</option>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td>课程名称</td>
                            <td><input type="text" name="coursename" class="form-control"></td>
                        </tr>

                        <tr>
                            <td>原价</td>
                            <td><input type="text" name="yuanprice" id="sprice" class="form-control"></td>
                        </tr>

                        <tr>
                            <td>是否打折</td>
                            <td>

                            <select name="dazhe" class="form-control" id="zheid" onchange="gaibian()">
                                <option value="1" >--不打折--</option>
                                <option value="0.6" >--6折--</option>
                                <option value="0.65" >--6.5折--</option>
                                <option value="0.7" >--7折--</option>
                                <option value="0.75" >--7.5折--</option>
                                <option value="0.8" >--8折--</option>
                                <option value="0.85" >--8.5折--</option>
                            </select>


                            </td>
                        </tr>
                        <tr>
                            <td>最新价格</td>
                            <td><input type="text" name="xianprice" id="zheprice" class="form-control"></td>
                        </tr>
                        <tr>
                            <td>课程介绍</td>
                            <td><input type="text" name="jieshao" class="form-control"></td>
                        </tr>
                        <tr>
                            <td>班型</td>
                            <td>
                                <select name="classid" class="form-control">
                                    <option>--请选择--</option>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td>免费/会员</td>
                            <td>
                                <select name="ynvip" id="ynvipids" class="form-control"  onchange="mianfei()">
                                    <option>--请选择--</option>
                                    <option value="1">--免费--</option>
                                    <option value="2">--会员--</option>
                                </select>

                            </td>
                        </tr>

                        <input type="hidden" name="coursecode" value="0"><br> <%--课时数--%>
                        <input type="hidden" value="0" name="downcode"><%--下载数量--%>
                        <input type="hidden" value="0" name="lookcode"><%--浏览数量--%>
                        <input type="hidden" value="1" name="lunbotustate"><%--推广状态--%>
                        <input type="hidden" value="1" name="showphoto"><%--推广状态--%>

                        <tr>
                            <td>推广图片</td>
                            <td>
                                <input type="hidden" name="tuiguangphoto" id="photo1"><br>

                                <input id="file-pic2" name="file" type="file" multiple data-min-file-count="1">

                            </td>
                        </tr>


                        <input type="hidden" value="0" name="ynjingpin">


                    </table>
                </form>

            </center>
            <div class="modal-footer">
                <button type="button" class="btn btn-success"  onclick="submitcourse()">提交</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

<%--条件查询--%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<center>
    <form class="form-inline">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="form-group">
            <label for="coursenameid">课程名</label>
            <input type="email"  class="form-control" id="coursenameid" name="coursename" />

        </div>
        <div class="form-group">
            <label for="classid1">班型</label>
            <select name="classid" class="form-control" id="classid1">

            </select>
        </div>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <input type="button" class="btn btn-success" onclick="search()" value="搜索"/>
    </form>
</center>



<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapseOne">
                    展开
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">

                <form class="form-inline">
                  最低价:<input type="text"  class="form-control" id="minpriceid" name="minprice" />
                    =====>>
                  最高价:<input type="text"  class="form-control" id="maxpriceid" name="maxprice" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    免费/会员：
                    <select name="ynvip" class="form-control" id="ynvipid">
                        <option value="">--请选择--</option>
                        <option value="1">--免费--</option>
                        <option value="2">--会员--</option>
                    </select>

                </form>

            </div>
        </div>
    </div>



<input type="button" value="添加" class="btn btn-success" onclick="addcourse()"/>
<table class="table" id="course" border="1"></table>


<script>

    function search(){

        $("#course").bootstrapTable("refresh",{'pageNumber':1});
    }



        $("#course").bootstrapTable({

            url: "<%=request.getContextPath()%>/CourseController/querycourse",
            striped: true,//隔行变色
            showPaginationSwitch: true,//是否显示 数据条数选择框
            minimumCountColumns: 1,//最小留下一个
            showRefresh: true,//显示刷新按钮
            showToggle: true,//显示切换视图
            //search:true,//是否显示搜索框
            searchOnEnterKey: true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
            //bootstrap默认是客户端分页client 若写服务端则出不来结果server
            sidePagination: "",//
            pagination: true,//开启分页
            paginationLoop: true,//开启分页无限循环
            pageNumber: 1,//当前页数
            minimumCountColumns: 1,//最小留下一个
            showRefresh: true,//显示刷新按钮
            showToggle: true,//显示切换视图
            //search:true,//是否显示搜索框
            searchOnEnterKey: true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
            //bootstrap默认是客户端分页client 若写服务端则出不来结果server
            sidePagination: "",//
            pagination: true,//开启分页
            paginationLoop: true,//开启分页无限循环
            pageNumber: 1,//当前页数
            pageSize: 3,//每页条数
            pageList: [1, 3, 5],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            method: 'post',//发送请求的方式
            contentType: "application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams: function (param) {
                return {
                    coursename: $("#coursenameid").val(),
                    classid: $("#classid1").val(),
                    minprice: $("#minpriceid").val(),
                    maxprice: $("#maxpriceid").val(),
                    ynvip: $("#ynvipid").val()

                }
            },

            columns: [

                {field: 'courseid', title: 'id', width: 100},
                {field: 'teachername', title: '讲师', width: 100},
                {field: 'coursename', title: '课程名称', width: 100},
                {field: 'xianprice', title: '最新价格', width: 100},
                {field: 'yuanprice', title: '原价', width: 100},
                {field: 'jieshao', title: '课程介绍', width: 100},
                {field: 'classname', title: '班型', width: 100},
                {field: 'ynvip', title: '类型', width: 100 ,
                    formatter: function (value, row, index) {
                    if(value==1){
                        return "免费"
                    }
                    if(value==2){
                        return "会员"
                    }
                }},
                {field: 'coursecode', title: '课时数', width: 100},
                {field: 'downcode', title: '下载数量', width: 100},
                {field: 'lookcode', title: '浏览数量', width: 100},
                {field: 'lunbotustate', title: '推广状态', width: 100},
                {
                    field: 'tuiguangphoto', title: '推广图片', width: 100,
                    formatter: function (value, row, index) {

                        var path = "";

                        var path = '<img src="' + value + '" width="100px" height="100px">';
                        return path;
                    }
                },
                {field: 'ynjingpin', title: '是否精品', width: 100},

                {
                    field: 'act', title: '操作', width: 100,
                    formatter: function (value, row, index) {
                        return '<input type="button" value="删除" class="btn btn-success" onclick="deletecourse(' + row.courseid + ')"/><input type="button" value="修改" class="btn btn-success" onclick="updatecourses(' + row.courseid + ')"/><input type="button" value="设为推广" class="btn btn-success" onclick="updatetuig(' + row.courseid + ')"/>';
                    }
                }
            ]
        })


    function addcourse(){
        $('#addcourse').modal({
            keyboard:false,
        })
    }




    $.ajax({
        url:"<%=request.getContextPath()%>/CourseController/queryteacher",
        type:"post",
        dataType:"json",
        success:function (Teacher){
            var option = "<option value=''>请选择</option>";
            $(Teacher).each(function (){
                option += "<option value='"+this.teacherid+"'>"+this.teachername+"</option>";
            })
            $("[name='teacherid']").html(option);
        },
        error:function (){
            alert(0);
        }
    })

    $.ajax({
        url:"<%=request.getContextPath()%>/CourseController/queryclass",
        type:"post",
        dataType:"json",
        success:function (BanXing){
            var option = "<option value=''>请选择</option>";
            $(BanXing).each(function (){
                option += "<option value='"+this.classid+"'>"+this.classname+"</option>";
            })
            $("[name='classid']").html(option);
        },
        error:function (){
            alert(0);
        }
    })


    function   submitcourse(){

        $.ajax({
            type:"post",
            url:"<%=request.getContextPath()%>/CourseController/addcourse",
            data:$("#courses").serialize(),
            async : false,//是否异步请求async : false,//是否异步请求
            success:function(ok){

                location.reload();
            },error:function(){
                alert("新增错误")
            }
        })
    }
    function deletecourse(courseid){

        $.ajax({

            type:"post",

            url:"<%=request.getContextPath()%>/CourseController/deletecourse",

            data:{"courseid":courseid},

            success:function(result){



                location.href=location

            }

        })

    }
    function updatetuig(courseid){

        $.ajax({

            type:"post",

            url:"<%=request.getContextPath()%>/CourseController/updatetuig",

            data:{"courseid":courseid},

            success:function(result){



                location.href=location

            }

        })

    }
    function gaibian(){
        var a=$("#sprice").val()
        var b=$("#zheid").val()

        $("#zheprice").val(parseInt(a*b))

    }


    function updatecourses(courseid){

        BootstrapDialog.show({
            title : "修改的方法",       //title
            message :$('<div></div>').load("<%=request.getContextPath()%>/CourseController/querycourseid?courseid="+courseid),
            buttons : [{
                label : "修改",
                action : function(dialog){
                    $.ajax({
                        url : "<%=request.getContextPath()%>/CourseController/updatecourse",
                        type : "post",
                        data : $("#update-course-all").serialize(),
                        dataType:"json",
                        success : function(flag){
                            if(flag == 1){
                                location.reload();
                            }
                        }
                    })
                }
            },{
                label : "取消",
                action : function(dialog){
                    dialog.close();
                }
            }]
        })
    }

    function mianfei(){
        var a=$("#sprice").val()
        var b=$("#zheid").val()


       var  mianfei =  $("#ynvipids").val();
          if(mianfei==1){
          $("#zheprice").val(parseInt(0))
          }

        if(mianfei==2){
            $("#zheprice").val(parseInt(a*b))
        }
    }


</script>
<script type="text/javascript">
    $('#file-pic2').fileinput({//初始化上传文件框
        showUpload : true,	//是否显示上传按钮
        showRemove : true,	//是否显示移除按钮
        uploadAsync: true,
        uploadLabel: "上传",		//设置上传按钮的汉字
        uploadClass: "btn btn-primary",//设置上传按钮样式
        showCaption: true,		//是否显示标题
        language: "zh",			//配置语言
        uploadUrl: "<%=request.getContextPath()%>/BootstrapAction/addPicture",
        maxFileSize : 0,
        maxFileCount: 2,		//允许最大上传数，可以多个，当前设置单个
        enctype: 'multipart/form-data',
        //allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash'],//预览类型
        //allowedFileTypes: ['image', 'video', 'flash'],	//文件类型
        allowedFileExtensions : ["jpg", "png","gif"],	//上传文件格式
        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
        dropZoneTitle: "请通过拖拽图片文件放到这里",
        dropZoneClickTitle: "或者点击此区域添加图片",
        //uploadExtraData: {"id": id},//这个是外带数据
        uploadExtraData: function(previewId, index) {   //额外参数的关键点
            var obj = {};
            obj.base=$($('#'+previewId+' tuiguangphoto')[index]).prop('src');
            return obj;
        },
        showBrowse: false,
        browseOnZoneClick: true,
        slugCallback : function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
    });

    $('#file-pic2').on('fileerror', function(event, data) {
        alert("失败");
    });
    //上传文件成功，回调函数
    $('#file-pic2').on("fileuploaded", function(event, data, previewId, index) {
        var result = data.response; //后台返回的json
        //alert(result);
        $('#photo1').val(result.a);
    })

</script>


</body>
</html>
