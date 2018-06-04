<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML> <!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]--> <!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]--> <!--[if IE 8]><html class="lt-ie9"><![endif]--> <!--[if gt IE 8]><!--> <html> <!--<![endif]--> <head> <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> <meta http-equiv="X-UA-Compatible" content="IE=9, IE=8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <title>我的消息--专注于分布式&微服务的在线教育【高薪必备】</title> <meta name="author" content="http://www.itmayiedu.com"/> <meta name="keywords" content="蚂蚁课堂,Java视频教程,Java高级架构师教程,SpringBoot视频教程,SpringCloud视频教程,Redis视频教程,ActivityMQ视频教程"/> <meta name="description" content="蚂蚁课堂：专属于年轻人的在线学习平台，因为年轻，所以坚持不懈！网站包含了【微服务实战】【分布式架构】【高并发与高可用】等视频课程。官方QQ群:193086273"/> <link rel="shortcut icon" href="http://www.itmayiedu.com/favicon.ico" type="image/x-icon"> <link rel="stylesheet" type="text/css" href="http://www.itmayiedu.com/static/inxweb/css/reset.css"> <link rel="stylesheet" type="text/css" href="http://www.itmayiedu.com/static/inxweb/css/theme.css"> <link rel="stylesheet" type="text/css" href="http://www.itmayiedu.com/static/inxweb/css/global.css"> <link rel="stylesheet" type="text/css" href="http://www.itmayiedu.com/static/inxweb/css/web.css"> <link href="http://www.itmayiedu.com/static/inxweb/css/mw_320_768.css" rel="stylesheet" type="text/css" media="screen and (min-width: 320px) and (max-width: 768px)"> <script type="text/javascript" src="http://www.itmayiedu.com/static/common/webutils.js"></script> <script type="text/javascript" src="http://www.itmayiedu.com/static/common/jquery-1.7.2.min.js"></script> <script type="text/javascript" src="http://www.itmayiedu.com/static/inxweb/user/ucTop.js"></script> <script type="text/javascript" src="http://www.itmayiedu.com/static/inxweb/header/header.js"></script> <script type="text/javascript" src="http://www.itmayiedu.com/static/inxweb/js/common.js"></script> <!--[if lt IE 9]><script src="http://www.itmayiedu.com/static/common/html5.js"></script><![endif]--> <script>var baselocation = "http://www.itmayiedu.com";var keuploadSimpleUrl='http://www.itmayiedu.com/image/keupload?';var uploadServerUrl='http://www.itmayiedu.com';var uploadSimpleUrl="http://www.itmayiedu.com/image/gok4?";</script> <script type="text/javascript">
    function delULetter(id){//删除站内信
        $.ajax({
            type:"POST",
            dataType:"json",
            url:baselocation+"/uc/ajax/delLetterInbox",
            data:{"msgReceive.id":id},
            cache:true,
            async:false,
            success:function(result){
                if(result.message=="success"){
                    $("#del"+id).remove();//
                    dialog('提示','删除成功',0,'/uc/letter');
                }
            }
        });
    }
</script> <script type="text/javascript">
    $(document).ready(function() {
        var i = setInterval(function() {
            if ($(".in-wrap").next().is(":hidden")) {
                clearTimeout(i);
                $(".in-wrap").next().show();
                //如果元素为隐藏,则将它显现
            } else {
                $(".in-wrap").next().html('');
                $(".in-wrap").next().hide(); //如果元素为显现,则将其隐藏
            }

        }, 1);

    });
</script> </head> <body> <div class="in-wrap"> <script>
    $(document).ready(function (){

        // 首页大图,Banner推广区域
        /*var imgHeight = $('.in-wrap').width() < 785 ? '135px' :'480px';
         $("#topImg").animate({height:imgHeight,width:'100%'});
         setTimeout(function(){
         $("#topImg").animate({height:"0px",width:'100%'});
         },5000)*/

    });
</script> <header id="header"> <section class="container"> <a href='http://cn.mikecrm.com/kz8uPv0' target="_blank"> </a> <h1 id="logo"> <a href="http://www.itmayiedu.com/" title=""> <img src="http://www.itmayiedu.com/images/upload/websiteLogo/20161107/1478524048493.png" width="100%" alt=""> </a> </h1> <div class="h-r-nsl"> <ul class="nav">
    <li><a href="../courseInfo/index.jsp"
           title="首页"
    >首页</a></li>
    <li><a href="../twl/baoming.jsp"
           title="培训"
           target="_blank">培训</a></li>
    <li><a href="../zx/quanbu.jsp"
           title="课程"
    >课程</a></li>
    <li><a href="../twl/huiyuan.jsp"
           title="会员"
    >会员</a></li>
    <li><a href="../jsp/wenda.jsp"
           title="问答"
    >问答</a></li>
    <li><a href="http://www.itmayiedu.comhttp://bbs.itmayiedu.com"
           title="社区"
    >社区</a></li>
    <li><a href="http://www.itmayiedu.comhttps://fir.im/mayiketang"
           title="APP"
           target="_blank">APP</a></li>
</ul> <ul class="h-r-login">
  <span id="dlzcqh">
  <li class="undis" id="no-login"><a href="javascript:lrFun()" title="登录"> <em class="icon18 login-icon">&nbsp;</em><span class="vam ml5">登录</span> </a> | <a href="javascript:lrFun(2)" title="注册"> </em><span class="vam ml5">注册</span> </a></li>
  </span>
    <li class="mr10 undis" id="is-login-one"><a href="http://www.itmayiedu.com/uc/letter" title="消息" id="headerMsgCountId"> <em class="icon18 news-icon">&nbsp;</em> </a><q class="red-point" style="display: none">&nbsp;</q></li> <li class="h-r-user undis" id="is-login-two"><a href="http://www.itmayiedu.com/uc/index" title=""> <img src="http://www.itmayiedu.com/static/inxweb/img/avatar-boy.gif" width="30" height="30" class="vam picImg" alt=""> </a> <a href="javascript:void(0)" title="退出" onclick="exit();" class="ml5">退出</a></li> </ul> <aside class="h-r-search"> <form action="http://www.itmayiedu.com/front/showcoulist" method="post"> <label class="h-r-s-box"><input type="text" placeholder="输入你想学的课程" name="queryCourse.courseName" value=""> <button type="submit" class="s-btn"> <em class="icon18">&nbsp;</em> </button></label> </form> </aside> </div> <aside class="mw-nav-btn"> <div class="mw-nav-icon"></div> </aside> <div class="clear"></div> </section> </header> <div class="h-mobile-mask"></div> <div class="head-mobile"> <div class="head-mobile-box"> <section class="clearfix"> <div class="u-face-pic"> <img src="http://www.itmayiedu.com/static/inxweb/img/avatar-boy.gif" alt="" class="userImgPhoto"> <a href="http://www.itmayiedu.com/uc/initUpdateUser/1" title="" class="c-fff">修改头像</a> </div> <h4 class="hLh30 txtOf"> <span class="fsize16 c-ccc userNameClass"> <span class="vam ml5" style="cursor: pointer;" onclick="lrFun(1)">登录</span> </span> </h4> <div class="hLh30"> <a href="adminzil.jsp" title="个人资料设置" class="c-999">个人资料设置</a> </div> <div class="hLh20 undis" id="mobileExitDiv"> <a href="javascript:void(0)" title="退出" onclick="exit();" class="c-999">退出</a> </div> </section> <nav class="mw-nav"> <ul class="clearfix"> <li><a href="http://www.itmayiedu.com/" title="首页">首页</a></li> <li><a href="http://www.itmayiedu.comhttp://cn.mikecrm.com/kz8uPv0" title="培训" target="_blank">培训</a></li> <li><a href="http://www.itmayiedu.com/front/showcoulist" title="课程">课程</a></li> <li><a href="http://www.itmayiedu.com/lc/locaMemberRecharge" title="会员">会员</a></li> <li><a href="http://www.itmayiedu.com/questions/list" title="问答">问答</a></li> <li><a href="http://www.itmayiedu.comhttp://bbs.itmayiedu.com" title="社区">社区</a></li> <li><a href="http://www.itmayiedu.comhttps://fir.im/mayiketang" title="APP" target="_blank">APP</a></li> </ul> </nav> <section class="u-m-dd"> <ul> <li><span>我的学习</span> <ol> <li class="current"><a href="javascript:void(0)" onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/index')" title="">免费课程</a></li> <li><a href="javascript:void(0)" onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/front/showcoulist')" title="">选课中心</a></li> <li><a href="javascript:void(0)" onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/myFavorites')" title="">我的收藏</a></li> </ol></li> </ul> <ul> <li><span>我的问答</span> <ol> <li><a onclick="mytiwen()" title="">我的提问</a></li> <li><a  onclick="myhuida()" title="">我的回答</a></li> </ol></li> </ul> <ul> <li><span>我的资料</span> <ol> <li><a onclick="ziliao()" title="">基本资料</a></li> <li><a href="javascript:void(0)" onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/initUpdateUser/1')" title="">个人头像</a></li> <li><a onclick="mima()" title="">密码设置</a></li> </ol></li> </ul> <ul> <li><span>我的消息</span> <ol> <li><a href="javascript:void(0)" onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/letter')" title="">系统消息</a></li> </ol></li> </ul> </section> </div> </div> <script>
    $(function() {
        wmNavFun(); // 手机端导航方法
        goTopFun(); //返回顶部
    })
</script>
    <div class="bg-fa of"> <section class="container"> <div class="u-body mt40"> <menu class="col-3 fl uMenu"> <dl> <dt> <section class="of"> <div class="u-face-pic"> <img src="http://www.itmayiedu.com/static/inxweb/img/avatar-boy.gif" alt="" class="userImgPhoto"> <a href="http://www.itmayiedu.com/uc/initUpdateUser/1" title="" class="c-fff">修改头像</a> </div> <h4 class="mt10"><span class="fsize16 c-666 userNameClass"></span></h4> <div class="hLh30 mt10"> <a href="http://www.itmayiedu.com/uc/initUpdateUser/0" title="" class="c-blue">个人资料设置</a> </div> <div class="clear"></div> </section> </dt> <dd class="u-m-dd"> <ul> <li> <span>我的问答</span> <ol> <li><a onclick="mytiwen()" title="">我的提问</a></li> <li><a onclick="myhuida()" title="">我的回答</a></li> </ol> </li> </ul> <ul> <li> <span>我的资料</span> <ol> <li><a onclick="ziliao()"  title="">基本资料</a></li> <li><a href="http://www.itmayiedu.com/uc/initUpdateUser/1" title="">个人头像</a></li> <li><a onclick="mima()" title="">密码设置</a></li> </ol> </li> </ul> <ul> <li> <span>我的消息</span> <ol> <li><a href="/uc/letter" title="">系统消息</a></li> </ol> </li> </ul> </dd> </dl> </menu> <script>$(function(){var str = '<section style="color: #666;position:absolute;left:50%;bottom:20px;z-index:7;margin-left:-80px;">';str+='<span>Powered by</span>';str+='<a href="http://www.inxedu.com" target="_blank" title="因酷教育软件" style="margin-left: 2px;color: #666;">因酷教育软件</a>';str+='</section>';$("body").append(str); });</script> <article class="col-7 fl"> <div class="u-r-cont"> <section> <div> <section class="c-infor-tabTitle c-tab-title"> <a href="javascript: void(0)" title="基本资料" class="current">基本资料</a></section> </div> <div class="mt40">

        <div class="q-list">
            <section class="q-all-list">
                <ul id="wenpage">
                </ul>
            </section>
        </div>

        <script>


                $.ajax({
                    url:"<%=request.getContextPath()%>/kcmuser/querytiwen",//请求地址
                    type:"post",//设置请求方式
                    dataType:"json",//返回数据的类型
                    async:false,

                    success:function (data){

                        var bb="";
                        $.each(data,function(){
                            bb+=" <font color='red'>我的提问</font><li><aside class=\"q-head-pic\"><img src=\"\" alt=\"\"><p class=\"hLh30 txtOf\"><span class=\"c-999\">"+this.peoplename+"</span></p></aside>\n" +
                                "\t<section class=\"q-txt-box\"><a class=\"replyBrowseNum\" href=\"javascript:tiao("+this.questionid+")\" title=\"\">\n" +
                                "\t\t\t<div class=\"replyNum\"><span class=\"r-b-num\"></span>\n" +
                                "\t\t\t\t<p class=\"hLh30\"><span class=\"c-999 f-fA\">回复信息</span></p>\n" +
                                "\t\t\t</div>\n" +
                                "\t\t\t<div class=\"browseNum\">\n" +
                                "\t\t\t    <span class=\"r-b-num\">"+this.looknum+"</span><p class=\"hLh30\"><span class=\"c-999 f-fA\">浏览数</span></p>\n" +
                                "\t\t\t</div>\n" +
                                "\t\t</a>\n" +
                                "\t\t<h3 class=\"hLh30 txtOf\">\n" +
                                "\t\t\t<em class=\"icon16 q-tw\">&nbsp;</em>\n" +
                                "\t\t\t<a href=\"javascript:tiao("+this.questionid+")\"  title=\"\" class=\"fsize16 c-333 vam\">"+this.questioncontent+"</a>\n" +
                                "\t\t</h3>\n" +
                                "\t\t<div class=\"mt15\">\n" +
                                "\t\t\t<span class=\"c-ccc fl vam\">"+this.questiondate+"</span>\n" +
                                "\t\t\t<section class=\"fl ml20 pt10\">\n" +
                                "\t\t\t\t<div class=\"taglist clearfix\">\n" +
                                "\t\t\t\t\t<a title=\"MyBatis\" data-id=\"15\" onclick=\"submitform('15','questionsTagId')\" class=\"list-tag\" href=\"javascript:;\">"+this.questiontypeid+"</a>\n" +
                                "\t\t\t\t</div>\n" +
                                "\t\t\t</section>\n" +
                                "\t\t\t<div class=\"clear\"></div>\n" +
                                "\t\t</div>\n" +
                                "\t</section>\n" +
                                "</li>";
                        })
                        $("#wenpage").html(bb);
                    },
                    error:function (){
                        alert("程序出错");
                    }
                })

                function myhuida() {

                    $.ajax({
                        url: "<%=request.getContextPath()%>/kcmuser/querymyhuida",//请求地址
                        type: "post",//设置请求方式
                        dataType: "json",//返回数据的类型
                        async: false,

                        success: function (data) {
                            var bb = "";
                            $.each(data, function () {
                                bb += "<font color='red'>我的回答</font><li><aside class=\"q-head-pic\"><img src=\"\" alt=\"\"><p class=\"hLh30 txtOf\"><span class=\"c-999\">" + this.peoplename + "</span></p></aside>\n" +
                                    "\t<section class=\"q-txt-box\"><a class=\"replyBrowseNum\" href=\"javascript:tiao(" + this.questionid + ")\" title=\"\">\n" +
                                    "\t\t\t<div class=\"replyNum\"><span class=\"r-b-num\"></span>\n" +
                                    "\t\t\t\t<p class=\"hLh30\"><span class=\"c-999 f-fA\">回复信息</span></p>\n" +
                                    "\t\t\t</div>\n" +
                                    "\t\t\t<div class=\"browseNum\">\n" +
                                    "\t\t\t    <span class=\"r-b-num\">" + this.looknum + "</span><p class=\"hLh30\"><span class=\"c-999 f-fA\">浏览数</span></p>\n" +
                                    "\t\t\t</div>\n" +
                                    "\t\t</a>\n" +
                                    "\t\t<h3 class=\"hLh30 txtOf\">\n" +
                                    "\t\t\t<em class=\"icon16 q-tw\">&nbsp;</em>\n" +
                                    "\t\t\t<a href=\"javascript:tiao(" + this.questionid + ")\"  title=\"\" class=\"fsize16 c-333 vam\">" + this.questioncontent + "</a>\n" +
                                    "\t\t</h3>\n" +
                                    "\t\t<div class=\"mt15\">\n" +
                                    "\t\t\t<span class=\"c-ccc fl vam\">" + this.questiondate + "</span>\n" +
                                    "\t\t\t<section class=\"fl ml20 pt10\">\n" +
                                    "\t\t\t\t<div class=\"taglist clearfix\">\n" +
                                    "\t\t\t\t\t<a title=\"MyBatis\" data-id=\"15\" onclick=\"submitform('15','questionsTagId')\" class=\"list-tag\" href=\"javascript:;\">" + this.questiontypeid + "</a>\n" +
                                    "\t\t\t\t</div>\n" +
                                    "\t\t\t</section>\n" +
                                    "\t\t\t<div class=\"clear\"></div>\n" +
                                    "\t\t</div>\n" +
                                    "\t</section>\n" +
                                    "</li>";
                            })
                            $("#wenpage").html(bb);
                        },
                        error: function () {
                            alert("程序出错");

                        }
                    })

                }



            function mytiwen(){

                var searchUrl =encodeURI("../rc/adminwen2.jsp");   //使用encodeURI编码

                window.location.href =searchUrl;

            }

        </script>
        <script type="text/javascript" src="http://www.itmayiedu.com/static/common/web/js/page.js"></script>
        <script type="text/javascript">
            var totalPageSize =1;
            var currentPage =
                    0<1 ? 1 :1;
            var totalPage = 1;
            showPageNumber();
        </script> <form action="http://www.itmayiedu.com/uc/letter"name="searchForm" id="searchForm" method="post"> <input id="pageCurrentPage" type="hidden" name="page.currentPage" value="1"/> </form> </div> </section> </div> </article> <div class="clear"></div> </div> </section> </div> <link href="http://www.itmayiedu.com/static/inxweb/css/qq.css " rel="stylesheet"> <footer id="footer"> <section class="container"> <div class=""> <h4 class="hLh30"> <span class="fsize18 f-fM c-999">友情链接</span> </h4> <ul class="of flink-list"> <li><a href="https://www.meitedu.com" title="每特学院" target="_blank">每特学院</a> </li> <li><a href="https://ms.meitedu.com" title="Java面试宝典" target="_blank">Java面试宝典</a> </li> <li><a href="http://www.itresource.org" title="IT资源网" target="_blank">IT资源网</a> </li> <li><a href="http://www.meiteedu.com/" title="每特公司">每特公司</a> </li> <li><a href="http://mini.eastday.com/a/170618074857596.html" title="媒体报道" target="_blank">媒体报道</a> </li> <li><a href="http://www.itresource.org/plugin.php?id=qgroup:qgroup" title="粉丝群" target="_blank">粉丝群</a> </li> </ul> <div class="clear"></div> </div> <div class="b-foot"> <section class="fl col-7"> <section class="mr20"> <section class="b-f-link"> <a href="/front/articleinfo/117.html" title="关于我们">关于我们</a>| <span>服务热线：400-006-5079</span> <span>Email：644064779@qq.com Java技术交流群:116295598</span> </section> <section class="b-f-link mt10"> <span>©2016-2018 上海每特教育科技有限公司版本所有</span> </section> </section> </section> <aside class="fl col-3 tac mt15"> <section class="gf-tx"> <span><img src="http://www.itmayiedu.com/static/inxweb/img/wx-icon.png" alt=""></span> <div class="gf-tx-ewm"> <img src="http://www.itmayiedu.com/images/upload/image/20171222/1513928038043.jpg" alt=""> </div> </section> <section class="gf-tx"> <span><img src="http://www.itmayiedu.com/static/inxweb/img/wb-icon.png" alt=""></span> <div class="gf-tx-ewm"> <img src="http://www.itmayiedu.com/images/upload/image/20150908/1441801298938.png" alt=""> </div> </section> </aside> <div class="clear"></div> </div> </section> </footer> <section style="color: #666; position: absolute; left: 50%; bottom: 20px; z-index: 7; margin-left: -80px;"> <span>Powered by</span><a style="margin-left: 2px; color: #666;" title="IT蚂蚁课堂">蚂蚁课堂</a> <script>(function (i, s, o, g, r, a, m) {
        i["DaoVoiceObject"] = r;
        i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
        a = s.createElement(o), m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        a.charset = "utf-8";
        m.parentNode.insertBefore(a, m)
    })(window, document, "script", ('https:' == document.location.protocol ? 'https:' : 'http:') + "//widget.daovoice.io/widget/3b2adbb4.js", "daovoice")</script> <script>

        var  uuid="";
        $(function(){
            var url = location.search;
            var hid = url.split( "=" );
            var  searchText =decodeURI(hid[1]);   //decodeURI解码
            uuid =searchText;
            $("#userid").val(uuid);
        });
        function   ziliao(){
            var searchUrl =encodeURI("adminzil.html?uuid="+uuid);   //使用encodeURI编码

            window.location.href =searchUrl;
        }


        function   mima(){
            var searchUrl2 =encodeURI("mima.html?uuid="+uuid);   //使用encodeURI编码

            window.location.href =searchUrl2;

        }

        function IsPC() {
            var userAgentInfo = navigator.userAgent;
            var Agents = ["Android", "iPhone",
                "SymbianOS", "Windows Phone",
                "iPad", "iPod"
            ];
            var flag = true;
            for (var v = 0; v < Agents.length; v++) {
                if (userAgentInfo.indexOf(Agents[v]) > 0) {
                    flag = false;
                    break;
                }
            }
            return flag;
        }

        var myerror = '';
        (function () {
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
            } else {
                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();

        $(function () {

            $('#close_im').bind('click', function () {
                $('#main-im').css("height", "0");
                $('#im_main').hide();
                $('#open_im').show();
            });
            $('#open_im').bind('click', function (e) {
                $('#main-im').css("height", "272");
                $('#im_main').show();
                $(this).hide();
            });
            $('.go-top').bind('click', function () {
                $(window).scrollTop(0);
            });
            $(".weixing-container").bind('mouseenter', function () {
                $('.weixing-show').show();
            })
            $(".weixing-container").bind('mouseleave', function () {
                $('.weixing-show').hide();
            });

            // if (!IsPC()) {
            //     $("#main-im").hide();
            // }
        });

        daovoice('init', {
            app_id: "3b2adbb4"
        });
        daovoice('update');
        $(function () {

        })
        $(function(){

                    if($("#userid").val()!=""&$("#userid").val()!=null){
                        $("#dlzcqh").html(

                                ' <li  id="is-login-one">' +
                                '                    <a href="http://www.itmayiedu.com/uc/letter" title="消息" id="headerMsgCountId">' +
                                '                    <em     class="icon18 news-icon">&nbsp;</em></a>' +
                                '                <q class="red-point" style="display: none">&nbsp;</q></li>' +
                                '                <li  id="is-login-two">' +
                                '                    <a   onclick="tiao()" title="">' +
                                ' '+
                                '                    <img src="http://www.itmayiedu.com/static/inxweb/img/avatar-boy.gif" width="30" height="30" class="vam picImg" alt=""> </a>' +
                                '                    <a href="javascript:void(0)" title="退出" onclick="qkson();" class="ml5">退出</a></li>'
                        )

                    }
                }
        )
    </script>
    </section>
</div>
<input type="hidden" id="userid" value=""/>
</body>
</html>