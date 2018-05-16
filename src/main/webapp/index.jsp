<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="common.jsp"  flush="true"></jsp:include>
 
</head> 
<body width="775px"  height="190px" >

<section id="container" >
  
      <header class="header reg-bg" >
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;      
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <iframe width="420" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5&site=12"></iframe>	
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <a href="login.jsp" class="btn btn-success" role="button">login.jsp</a>
         </header>
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              		
              	  <h5 class="centered"><span style="color:#66FF33">欢迎&nbsp;&nbsp;&nbsp;<b>${username}</b>&nbsp;&nbsp;登陆后台管理系统</span></h5>
                  	    <div >
	    	              <div id="tree" style="color:#0033FF"></div>
	                    </div>        
              </ul>
           
          </div>
      </aside>
     
      <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
	    <br>
	    <br>
	    <br>
	    <br>
    <!-- 标签页区域 -->
            <div style="margin-top:10px;" class="span10" id="mainFrameTabs1">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <!-- 设置默认的首页标签页，设置noclose样式，则不会被关闭 -->
                    <li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab">首页</a></li>
                </ul>
                        <!-- Tab panes -->
                <div class="tab-content"  >
                    <!-- 默认标签页（首页）的内容区域 -->
                    <div class="tab-pane active"   id="div_first" >
                        <div class="page-header">
                            <h2 style="font-size: 31.5px;text-align: center;font-weight: normal;">


            </h2>
                        </div>
                        <div style="text-align: center;font-size: 20px;line-height: 20px;">
                            Welcome to use bTabs plugin!

                        </div>
                    </div>
                </div>
    </div>

      </section>

      <!--footer end-->
  </section>
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({jsp: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });

        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    function getTree() {
    	var data="";
    	        $.ajax({
    	            url:"<%=request.getContextPath()%>/user/queryTree",
    	            type:"post",
    	            dataType:"json",
    	            async:false,
    	            success:function(reslut){
    	                data = reslut;
    	            },
    	        });

        return data;
    }

  $(function(){
    	$('#tree').treeview({
            data: getTree(),
     	   // expandIcon:"glyphicon glyphicon-eye-close",//父级关闭时的样式
    	   // emptyIcon:"glyphicon glyphicon-minus",//子节点的样式
    	    //collapseIcon:"glyphicon glyphicon-plus",//父级展开时的样式
            expandIcon: "glyphicon glyphicon-stop",
            collapseIcon: "glyphicon glyphicon-unchecked",
            nodeIcon: "glyphicon glyphicon-user",
            color: "#66FFFF",
            backColor: "purple",
            onhoverColor: "orange",
            borderColor: "red",
            showBorder: false,
            showTags: true,
            highlightSelected: true,
            selectedColor: "#66FFFF",
            selectedBackColor: "darkorange",
            onNodeSelected:function(event, data){
    			  var url = "<%=request.getContextPath()%>"+data.url
    			  if(data.url == "/login.jsp"){
  					location.href="<%=request.getContextPath()%>/login.jsp"
  				}else if(data.url!=null&&data.url!=''){
  					 $('#mainFrameTabs1').bTabsAdd(data.quanid,data.text,url); 
  				}
    			
    		}

    	});	
    })  
  $('#mainFrameTabs1').bTabs({
 	 'resize' : function(){
 		 //这里只是个样例，具体的情况需要计算
	     $('#mainFrameTabs1').height(580);
	     
	    }

}); 
  

</script>

</body>
</html>