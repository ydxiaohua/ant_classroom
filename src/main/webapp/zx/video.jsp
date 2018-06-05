<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程标题</title>
    <jsp:include page="bootcommon.jsp" flush="true"></jsp:include>
</head>
<body>

<div class="modal fade" id="addvideo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:500px;height:200px">
        <div class="modal-content">
            <div class="modal-header" style="width:500px;height: 50px">
            </div>
            <center>

                <form  id="videos" >
                    <table class="table table-bordered"  >

                        <tr>
                            <td>视频名称</td>
                            <td>
                                <input type="text" name="vname">
                            </td>
                        </tr>


                        <tr>
                            <td>课程</td>
                            <td>
                                <select name="courseid">
                                    <option>--请选择--</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td>大纲</td>
                            <td>
                                <select name="dgid">
                                    <option>--请选择--</option>
                                </select>

                            </td>
                        </tr>
                       <tr>
                            <td>视频</td>
                            <td>
                                <input type="hidden" name="videotv" id="photo3"><br>

                                <input id="file-pic4" name="file" type="file" multiple data-min-file-count="1">

                            </td>
                        </tr>

                    </table>
                </form>

            </center>
            <div class="modal-footer">
                <button type="button" class="btn btn-success"  onclick="submitvideo()">提交</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>






<input type="button" value="添加" class="btn btn-success" onclick="addvideo()"/>
<table class="table" id="video" border="1"></table>


<script>



    $("#video").bootstrapTable({

        url:"<%=request.getContextPath()%>/CourseController/queryvideo",
        striped: true,//隔行变色
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        //search:true,//是否显示搜索框
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
        //bootstrap默认是客户端分页client 若写服务端则出不来结果server
        sidePagination:"",//
        pagination:true,//开启分页
        paginationLoop:true,//开启分页无限循环
        pageNumber:1,//当前页数
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        //search:true,//是否显示搜索框
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
        //bootstrap默认是客户端分页client 若写服务端则出不来结果server
        sidePagination:"",//
        pagination:true,//开启分页
        paginationLoop:true,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:3,//每页条数
        pageList:[1,3,5],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        columns:[

            {field:'vid',title:'id',width: 100},
            {field:'vname',title:'视频名称',width: 100},
            {field:'coursename',title:'课程表名称',width: 100},
            {field:'dgname',title:'大纲名称',width: 100},
            {field:'vdate',title:'上传时间',width: 100},
            {field:'username',title:'上传人',width: 100},
            {field:'videotv',title:'视频',width: 100,
                formatter: function(value,row,index){

                    var path ="";

                    var path='<img src="'+value+'" width="100px" height="100px">';
                    return path;
                }},

            {field:'act',title:'操作',width:100,
                formatter: function(value,row,index){
                    return '<input type="button" value="删除" class="btn btn-success" onclick="deletecourse('+row.courseid+')"/><input type="button" value="修改" class="btn btn-success" onclick="updatecourses('+row.courseid+')"/>';
                }}
        ]
    })

    function addvideo(){
        $('#addvideo').modal({
            keyboard:false,
        })
    }

    function   submitvideo(){

        $.ajax({
            type:"post",
            url:"<%=request.getContextPath()%>/CourseController/addvideo",
            data:$("#videos").serialize(),
            success:function(ok){

                location.reload();
            },error:function(){
                alert("新增错误")
            }
        })
    }

    $.ajax({
        url:"<%=request.getContextPath()%>/CourseController/querydagang",
        type:"post",
        dataType:"json",
        success:function (dagang){
            var option = "<option value=''>请选择</option>";
            $(dagang).each(function (){
                option += "<option value='"+this.dgid+"'>"+this.dgname+"</option>";
            })
            $("[name='dgid']").html(option);
        },
        error:function (){
            alert(0);
        }
    })
    $.ajax({
        url:"<%=request.getContextPath()%>/CourseController/querycourse",
        type:"post",
        dataType:"json",
        success:function (course){
            var option = "<option value=''>请选择</option>";
            $(course).each(function (){
                option += "<option value='"+this.courseid+"'>"+this.coursename+"</option>";
            })
            $("[name='courseid']").html(option);
        },
        error:function (){
            alert(0);
        }
    })

</script>


<script type="text/javascript">
        $('#file-pic4').fileinput({//初始化上传文件框
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
            allowedFileExtensions : ["jpg", "png","gif","mP4"],	//上传文件格式
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

     $('#file-pic4').on('fileerror', function(event, data) {
    alert("失败");
       });
        //上传文件成功，回调函数
    $('#file-pic4').on("fileuploaded", function(event, data, previewId, index) {
    var result = data.response; //后台返回的json
    //alert(result);
    $('#photo3').val(result.a);
})
</script>
</body>