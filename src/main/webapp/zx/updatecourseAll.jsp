<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 <center>
         <form  id="update-course-all" >
                            <table class="table table-bordered"  >
                      <input type="hidden" name="courseid" value="${list.courseid}">
                                <tr>
                                    <td>讲师名称</td>
                                    <td>
                                        <select name="teacherid">
                                            <option>--请选择--</option>

                                            <c:forEach items="${teacher}" var="t">
                                            			<option value="${t.teacherid}"
                                            		${t.teacherid == list.teacherid?'selected':''}
                                            			>${t.teachername}</option>
                                            		</c:forEach>

                                        </select>

                                    </td>
                                </tr>
                                <tr>
                                    <td>课程名称</td>
                                    <td><input type="text" name="coursename" value="${list.coursename}"></td>
                                </tr>

                                <tr>
                                    <td>原价</td>
                                    <td><input type="text" name="yuanprice" value="${list.yuanprice}"></td>
                                </tr>

                                <tr>
                                    <td>是否打折</td>
                                    <td><input type="text" name="dazhe" value="${list.dazhe}"></td>
                                </tr>
                                <tr>
                                    <td>最新价格</td>
                                    <td><input type="text" name="xianprice"  value="${list.xianprice}"></td>
                                </tr>
                                <tr>
                                    <td>课程介绍</td>
                                    <td><input type="text" name="jieshao"   value="${list.jieshao}"></td>
                                </tr>
                                <tr>
                                    <td>班型</td>
                                    <td>
                                        <select name="classid">
                                            <option>--请选择--</option>
                                             <c:forEach items="${clas}" var="c">
                                             <option value="${c.classid}"
                                               ${c.classid == list.classid?'selected':''}
                                               >${c.classname}</option>
                                            </c:forEach>

                                        </select>

                                    </td>
                                </tr>
                                <tr>
                                    <td>免费/会员</td>
                                    <td>
                                        <select name="ynvip">
                                            <option>--请选择--</option>
                                            <option value="1" ${list.ynvip == 1?'selected':''}>--免费--</option>
                                            <option value="2" ${list.ynvip == 2?'selected':''}>--会员--</option>
                                        </select>

                                    </td>
                                </tr>

                                <input type="hidden" name="coursecode" value="${list.coursecode}"><br> <%--课时数--%>
                                <input type="hidden" value="${list.downcode}" name="downcode"><%--下载数量--%>
                                <input type="hidden" value="${list.lookcode}" name="lookcode"><%--浏览数量--%>
                                <input type="hidden" value="${list.lunbotustate}" name="lunbotustate"><%--推广状态--%>
                                <tr>
                                    <td>推广图片</td>
                                    <td>
                                    <div id="show">
                                        <img src="${list.tuiguangphoto}" width="100" height="100">
                                    </div>
                                        <input type="hidden" name="tuiguangphoto" id="photo2"><br>

                                        <input id="file-pic3" name="file" type="file" multiple data-min-file-count="1">

                                    </td>
                                </tr>


                                    <input type="hidden" value="${list.ynjingpin}" name="ynjingpin">


                            </table>
                        </form>
    </center>
<script type="text/javascript">
    $('#file-pic3').fileinput({//初始化上传文件框
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

    $('#file-pic3').on('fileerror', function(event, data) {
        alert("失败");
    });
    //上传文件成功，回调函数
    $('#file-pic3').on("fileuploaded", function(event, data, previewId, index) {
        var result = data.response; //后台返回的json
        //alert(result);
        $('#photo2').val(result.a);
    })
</script>

</body>
</html>