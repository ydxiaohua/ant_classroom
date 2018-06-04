<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no,minimal-ui">
    <title>IT技术问答平台-蚂蚁课堂问答</title>
    <meta name="author" content="http://www.itmayiedu.com" />
    <meta name="keywords" content="IT程序员技术交流与问答,技术问答,蚂蚁课堂社区,编程技术问答,技术问答平台,IT技术社区" />
    <meta name="description" content="问答是由蚂蚁课堂为广大IT爱好者提供的专业问答交流平台,这里大牛云集,用户可根据自身需求,提出相关问题,也可为有问题同学进行解答,互帮互助,分享知识！" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style"
          content="black-translucent" />
    <meta content="telephone=no" name="format-detection" />
    <link rel="shortcut icon" href="http://www.itmayiedu.com/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css"
          href="http://www.itmayiedu.com/static/inxweb/css/reset.css?t=2017-07-27">
    <link rel="stylesheet" type="text/css"
          href="http://www.itmayiedu.com/static/inxweb/css/theme.css?t=2017-07-27">
    <link rel="stylesheet" type="text/css"
          href="http://www.itmayiedu.com/static/inxweb/css/global.css?t=2017-07-27">
    <link rel="stylesheet" type="text/css"
          href="http://www.itmayiedu.com/static/inxweb/css/web.css?t=2017-07-27">
    <link rel="stylesheet" type="text/css"
          href="http://www.itmayiedu.com/static/inxweb/css/adaptive.css?t=2017-07-27">
    <link href="http://www.itmayiedu.com/static/inxweb/css/mw_320_768.css?t=2017-07-27" rel="stylesheet"
          type="text/css"
          media="screen and (min-width: 320px) and (max-width: 768px)">
    <!--[if lt IE 9]><script src="http://www.itmayiedu.com/static/common/html5.js"></script><![endif]-->
    <script type="text/javascript"
            src="http://www.itmayiedu.com/static/common/jquery-1.7.2.min.js?t=2017-07-27"></script>
    <script type="text/javascript" src="http://www.itmayiedu.com/static/common/webutils.js?t=2017-04-30"></script>
    <script type="text/javascript"
            src="http://www.itmayiedu.com/static/inxweb/header/header.js?t=2017-07-27"></script>
    <script type="text/javascript" src="http://www.itmayiedu.com/static/inxweb/js/common.js?t=2017-07-27"></script>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?b43c1c82b09cda6b125e6981fbde442c";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <script>var baselocation = "http://www.itmayiedu.com";var keuploadSimpleUrl='http://www.itmayiedu.com/image/keupload?';var uploadServerUrl='http://www.itmayiedu.com';var uploadSimpleUrl="http://www.itmayiedu.com/image/gok4?";</script>

    <script type="text/javascript">
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
    </script>
</head>
<body class="W-body">
<div class="in-wrap">

    <!-- 公共头引入 -->
    <!-- /global header begin-->


    <script>
        $(document).ready(function (){

            // 首页大图,Banner推广区域
            /*var imgHeight = $('.in-wrap').width() < 785 ? '135px' :'480px';
                $("#topImg").animate({height:imgHeight,width:'100%'});
                setTimeout(function(){
                        $("#topImg").animate({height:"0px",width:'100%'});
                },5000)*/

        });
    </script>

    <header id="header">
        <section class="container">
            <a href='http://cn.mikecrm.com/kz8uPv0' target="_blank">
                <!--
                        <img  id="topImg"    alt="" style='height:0px;width:100%' src="http://www.itmayiedu.com/images/hs/1510242080873.png">
                 -->
            </a>
            <h1 id="logo">
                <a href="http://www.itmayiedu.com/" title=""> <img
                        src="http://www.itmayiedu.com/images/upload/websiteLogo/20161107/1478524048493.png" width="100%"
                        alt="">
                </a>
            </h1>
            <div class="h-r-nsl">
                <ul class="nav">
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
                </ul>
                <!-- / nav -->
                <ul class="h-r-login">
                    <li class="undis" id="no-login"><a href="javascript:lrFun()"
                                                       title="登录"> <em class="icon18 login-icon">&nbsp;</em><span
                            class="vam ml5">登录</span>
                    </a> | <a href="javascript:lrFun(2)" title="注册"> </em><span
                            class="vam ml5">注册</span>
                    </a></li>
                    <li class="mr10 undis" id="is-login-one"><a
                            href="http://www.itmayiedu.com/uc/letter" title="消息" id="headerMsgCountId"> <em
                            class="icon18 news-icon">&nbsp;</em>
                    </a><q class="red-point" style="display: none">&nbsp;</q></li>
                    <li class="h-r-user undis" id="is-login-two"><a
                            href="http://www.itmayiedu.com/uc/index" title=""> <img
                            src="http://www.itmayiedu.com/static/inxweb/img/avatar-boy.gif" width="30"
                            height="30" class="vam picImg" alt=""> <!--<span
						class="vam disIb" id="userName"></span>-->
                    </a> <a href="javascript:void(0)" title="退出" onclick="exit();"
                            class="ml5">退出</a></li>
                    <!-- /未登录显示第1 li；登录后显示第2，3 li -->
                </ul>
                <aside class="h-r-search">
                    <form action="http://www.itmayiedu.com/front/showcoulist" method="post">
                        <label class="h-r-s-box"><input type="text"
                                                        placeholder="输入你想学的课程" name="queryCourse.courseName"
                                                        value="">
                            <button type="submit" class="s-btn">
                                <em class="icon18">&nbsp;</em>
                            </button></label>
                    </form>
                </aside>
            </div>
            <aside class="mw-nav-btn">
                <div class="mw-nav-icon"></div>
            </aside>
            <div class="clear"></div>
        </section>
    </header>
    <!-- /global header end-->
    <div class="h-mobile-mask"></div>
    <div class="head-mobile">

        <div class="head-mobile-box">
            <section class="clearfix">
                <div class="u-face-pic">
                    <img src="http://www.itmayiedu.com/static/inxweb/img/avatar-boy.gif" alt=""
                         class="userImgPhoto"> <a href="http://www.itmayiedu.com/uc/initUpdateUser/1"
                                                  title="" class="c-fff">修改头像</a>
                </div>
                <h4 class="hLh30 txtOf">
				<span class="fsize16 c-ccc userNameClass"> <span
                                        class="vam ml5" style="cursor: pointer;" onclick="lrFun(1)">登录</span>
				</span>
                </h4>
                <div class="hLh30">
                    <a href="http://www.itmayiedu.com/uc/initUpdateUser/0" title="个人资料设置" class="c-999">个人资料设置</a>
                </div>
                <div class="hLh20 undis" id="mobileExitDiv">
                    <a href="javascript:void(0)" title="退出" onclick="exit();"
                       class="c-999">退出</a>
                </div>
            </section>
            <nav class="mw-nav">
                <ul class="clearfix">
                    <li><a href="http://www.itmayiedu.com/"
                           title="首页"
                    >首页</a></li>
                    <li><a href="http://www.itmayiedu.com/front/showcoulist"
                           title="课程"
                    >课程</a></li>
                    <li><a href="http://www.itmayiedu.comhttp://cn.mikecrm.com/kz8uPv0"
                           title="培训"
                           target="_blank">培训</a></li>
                    <li><a href="http://www.itmayiedu.com/lc/locaMemberRecharge"
                           title="会员"
                    >会员</a></li>
                    <li><a href="http://www.itmayiedu.com/questions/list"
                           title="问答"
                    >问答</a></li>
                    <li><a href="http://www.itmayiedu.comhttp://bbs.itmayiedu.com"
                           title="社区"
                    >社区</a></li>
                    <li><a href="http://www.itmayiedu.comhttps://fir.im/mayiketang"
                           title="APP"
                           target="_blank">APP</a></li>
                </ul>
            </nav>
            <section class="u-m-dd">
                <ul>
                    <li><span>我的学习</span>
                        <ol>
                            <li class="current"><a href="javascript:void(0)"
                                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/index')" title="">免费课程</a></li>
                            <li><a href="javascript:void(0)"
                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/front/showcoulist')"
                                   title="">选课中心</a></li>
                            <li><a href="javascript:void(0)"
                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/myFavorites')" title="">我的收藏</a></li>
                        </ol></li>
                </ul>
                <ul>
                    <li><span>我的问答</span>
                        <ol>
                            <li><a href="javascript:void(0)"
                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/myquestions/list')"
                                   title="">我的提问</a></li>
                            <li><a href="javascript:void(0)"
                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/myrepquestions/list')"
                                   title="">我的回答</a></li>
                        </ol></li>
                </ul>
                <ul>
                    <li><span>我的资料</span>
                        <ol>
                            <li><a href="javascript:void(0)"
                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/initUpdateUser/0')"
                                   title="">基本资料</a></li>
                            <li><a href="javascript:void(0)"
                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/initUpdateUser/1')"
                                   title="">个人头像</a></li>
                            <li><a href="javascript:void(0)"
                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/initUpdateUser/2')"
                                   title="">密码设置</a></li>
                        </ol></li>
                </ul>
                <ul>
                    <li><span>我的消息</span>
                        <ol>
                            <li><a href="javascript:void(0)"
                                   onclick="mobileHrefCheckLogin('http://www.itmayiedu.com/uc/letter')" title="">系统消息</a></li>
                        </ol></li>
                </ul>
            </section>
        </div>

    </div>
    <script>
        $(function() {
            wmNavFun(); // 手机端导航方法
            goTopFun(); //返回顶部
        })
    </script>
    <!-- 公共头引入 -->
    <script>$(function(){var str = '<section style="color: #666;position:absolute;left:50%;bottom:20px;z-index:7;margin-left:-80px;">';str+='<span>Powered by</span>';str+='<a href="http://www.inxedu.com" target="_blank" title="因酷教育软件" style="margin-left: 2px;color: #666;">因酷教育软件</a>';str+='</section>';$("body").append(str); });</script>
    <div class="bg-fa of">
        <section class="container">
            <section class="i-question">
                <div class="fl col-7">
                    <section class="mr30 pt10">
                        <section class="c-infor-tabTitle c-tab-title">
                            <a href="javascript: void(0)" title="全部问答" onclick="quanbu()" >全部问答</a>
                            <a href="javascript: void(0)" title="课程问答" onclick="submitform(1)" >课程问答</a>
                            <a href="javascript: void(0)" title="学习分享" onclick="submitform(2)" >学习分享</a>
                        </section>
                        <div class="js-wrap">
                            <section class="fr">
								<span class="c-ccc"> <tt class="c-master f-fM">1</tt>/<tt class="c-666 f-fM">4</tt>
								</span>
                            </section>
                            <section class="fl">
                                <ol class="js-tap clearfix">
                                    <li class="current bg-orange"><a onclick="hot()" href="javascript:void(0)" title="热门">热门</a></li>
                                    <li class="current bg-orange"><a onclick="zuinew()" href="javascript:void(0)" title="最新">最新</a></li>
                                </ol>
                            </section>
                        </div>
                        <!-- /问题列表 开始 -->
                        <div class="q-list">
                            <section class="q-all-list">
                                <ul id="wenpage">
                                    
                                </ul>
                            </section>
                            <form action="http://www.itmayiedu.com/questions/list" id="searchForm" method="post">
                                <input type="hidden" id="pageCurrentPage" name="page.currentPage" value="1" />
                                <input type="hidden" name="questions.orderFalg" value="addTime" />
                                <input type="hidden" name="questions.type" value="0" />
                                <input type="hidden" name="questions.status" value="0" />
                                <input type="hidden" name="questions.questionsTagId" value="" />
                            </form>
                        </div>
                        <!-- /问题列表 结束 -->
                    </section>
                </div>
                <aside class="fl col-3">
                    <b class="mt30 pl10">
                        <section class="pt10">
                            <a href="javascript:void(0)" onclick="tiwen()" title="我要提问" class="comm-btn c-btn-5">我要提问</a>
                            <span id="sub1"></span>
                        </section>
                        <br>
                        <br>
                        <br>
                        <!-- /标签云 -->
                        <h4 style="color: chartreuse">热门问答推荐</h4><br>
                        <div class="taglist clearfix" id="sub"></div>
                        <%--<section class="mt30">
                            <section class="c-infor-tabTitle c-tab-title">
                                <a href="javascript: void(0)" title="热门问答推荐">热门问答推荐</a>
                            </section>
                            <div class="taglist clearfix" id="sub"></div>
                        </section>--%>
                        <!-- /热门问答排行 -->
                    </div>
                </aside>
                <div class="clear"></div>
            </section>
        </section>
        <!-- /提问题 结束 -->
    </div>
    <script type="text/javascript" src="http://www.itmayiedu.com/static/inxweb/questions/questions.js"></script>
    <!-- 公共底引入 -->
    <link href="http://www.itmayiedu.com/static/inxweb/css/qq.css " rel="stylesheet">
    <footer id="footer">
        <section class="container">
            <div class="">
                <h4 class="hLh30">
                    <span class="fsize18 f-fM c-999">友情链接</span>
                </h4>
                <ul class="of flink-list">
                    <li><a href="https://meiteedu.ke.qq.com/#tuin=2663a60b" title="每特学院"
                           target="_blank">每特学院</a>
                    </li>
                    <li><a href="http://www.itresource.org" title="IT资源网"
                           target="_blank">IT资源网</a>
                    </li>
                    <li><a href="http://www.meiteedu.com/" title="每特公司"
                    >每特公司</a>
                    </li>
                    <li><a href="http://mini.eastday.com/a/170618074857596.html" title="媒体报道"
                           target="_blank">媒体报道</a>
                    </li>
                    <li><a href="http://www.itresource.org/plugin.php?id=qgroup:qgroup" title="粉丝群"
                           target="_blank">粉丝群</a>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="b-foot">
                <section class="fl col-7">
                    <section class="mr20">
                        <section class="b-f-link">
                            <a href="/front/articleinfo/117.html" title="关于我们"
                            >关于我们</a>|
                            <span>服务热线：400-006-5079</span> <span>Email：644064779@qq.com Java技术交流群:116295598</span>
                        </section>
                        <section class="b-f-link mt10">
                            <span>©2016-2018    上海每特教育科技有限公司版本所有</span>
                        </section>
                    </section>
                </section>
                <aside class="fl col-3 tac mt15">
                    <section class="gf-tx">
                        <span><img src="http://www.itmayiedu.com/static/inxweb/img/wx-icon.png" alt=""></span>
                        <div class="gf-tx-ewm">
                            <img src="http://www.itmayiedu.com/images/upload/image/20171222/1513928038043.jpg" alt="">
                        </div>
                    </section>
                    <section class="gf-tx">
                        <span><img src="http://www.itmayiedu.com/static/inxweb/img/wb-icon.png" alt=""></span>
                        <div class="gf-tx-ewm">
                            <img src="http://www.itmayiedu.com/images/upload/image/20150908/1441801298938.png" alt="">
                        </div>
                    </section>
                </aside>
                <div class="clear"></div>
            </div>
        </section>
    </footer>
    <section
            style="color: #666; position: absolute; left: 50%; bottom: 20px; z-index: 7; margin-left: -80px;">
        <span>Powered by</span><a style="margin-left: 2px; color: #666;"
                                  title="IT蚂蚁课堂">蚂蚁课堂</a>

        <script>(function (i, s, o, g, r, a, m) {
            i["DaoVoiceObject"] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            a.charset = "utf-8";
            m.parentNode.insertBefore(a, m)
        })(window, document, "script", ('https:' == document.location.protocol ? 'https:' : 'http:') + "//widget.daovoice.io/widget/3b2adbb4.js", "daovoice")</script>
        <script>
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
            });

            daovoice('init', {
                app_id: "3b2adbb4"
            });
            daovoice('update');
        </script>
    </section>
    <!-- 公共底引入 -->
</div>
<script>
    function tiwen() {
        location.href="<%=request.getContextPath()%>/jsp/toadd.jsp";
    }

    $(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/queryWenType",//请求地址
            type:"post",//设置请求方式
            dataType:"json",//返回数据的类型
            async:false,
            success:function (WenType){
                var checkedbox = "<a onclick='quan()' href='javascript:quan();' class='list-tag' data-id='0' title='JAVA'>全部</a>";
                $.each(WenType,function(){
                    checkedbox += " <a title='"+this.questionname+"' data-id='"+this.questionid+"' class='list-tag' href='javascript:submitform1(\""+this.questionid+" \")' >"+this.questionname+"</a>";
                })
                $("#sub1").html(checkedbox);
            },
            error:function (){
                alert("程序出错");
            }
        })
    })

    $(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/querypagewen",//请求地址
            type:"post",//设置请求方式
            dataType:"json",//返回数据的类型
            async:false,
            success:function (data){
                var checkedbox = "";
                $.each(data,function(){
                    checkedbox += "<a title='"+this.questionname+"' class='fsize14 c-333 ml5' href='javascript:tiao("+this.questionid+")' >"+this.questionname+"</a>&nbsp;&nbsp;&nbsp;回答数:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>"+this.huidashu+"</font></br>";
                })
                $("#sub").html(checkedbox);
            },
            error:function (){
                alert("程序出错");
            }
        })
    })

    $(function(){
        kcm()
    })
    function kcm(){
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/querywenshow",//请求地址
            type:"post",//设置请求方式
            dataType:"json",//返回数据的类型
            async:false,
            success:function (data){
                var bb="";
                $.each(data,function(){
                    bb+="<li><aside class=\"q-head-pic\"><img src=\"\" alt=\"\"><p class=\"hLh30 txtOf\"><span class=\"c-999\">"+this.peoplename+"</span></p></aside>\n" +
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
    }

    function tiao(questionid){
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/updatenum",
            type:"post",
            data:{"questionid":questionid},
            success:function(result){
                location.href="/kcmuser/tohuifu?questionid="+questionid;
            }
        })

    }
    function submitform(obj){
            if(obj==3){
                alert("全部");
                kcm()
            }
            $.ajax({
                url:"<%=request.getContextPath()%>/kcmuser/querywenshow1",//请求地址
                type:"post",//设置请求方式
                dataType:"json",//返回数据的类型
                data:{"typeid":obj},
                async:false,
                success:function (data){
                    var bb="";
                    $.each(data,function(){
                        bb+="<li><aside class=\"q-head-pic\"><img src=\"\" alt=\"\"><p class=\"hLh30 txtOf\"><span class=\"c-999\">"+this.peoplename+"</span></p></aside>\n" +
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
    }

    function quanbu(){
        location.href="<%=request.getContextPath()%>/jsp/wenda.jsp"
    }


    function submitform1(questionid){
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/querybywenid",//请求地址
            type:"post",//设置请求方式
            dataType:"json",//返回数据的类型
            data:{"questionid":questionid},
            async:false,
            success:function (data){
                var bb="";
                $.each(data,function(){
                    bb+="<li><aside class=\"q-head-pic\"><img src=\"\" alt=\"\"><p class=\"hLh30 txtOf\"><span class=\"c-999\">"+this.peoplename+"</span></p></aside>\n" +
                        "\t<section class=\"q-txt-box\"><a class=\"replyBrowseNum\" href=\"javascript:tiao("+this.questionid+")\" title=\"\">\n" +
                        "\t\t\t<div class=\"replyNum\"><span class=\"r-b-num\"></span>\n" +
                        "\t\t\t\t<p class=\"hLh30\"><span class=\"c-999 f-fA\">查看回复</span></p>\n" +
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
    }

    function quan(){
        location.href="<%=request.getContextPath()%>/jsp/wenda.jsp"
    }


    function zuinew(){
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/querynew",//请求地址
            type:"post",//设置请求方式
            dataType:"json",//返回数据的类型
            async:false,
            success:function (data){
                var bb="";
                $.each(data,function(){
                    bb+="<li><aside class=\"q-head-pic\"><img src=\"\" alt=\"\"><p class=\"hLh30 txtOf\"><span class=\"c-999\">"+this.peoplename+"</span></p></aside>\n" +
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
    }

    function hot(){
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/queryhot",//请求地址
            type:"post",//设置请求方式
            dataType:"json",//返回数据的类型
            async:false,
            success:function (data){
                var bb="";
                $.each(data,function(){
                    bb+="<li><aside class=\"q-head-pic\"><img src=\"\" alt=\"\"><p class=\"hLh30 txtOf\"><span class=\"c-999\">"+this.peoplename+"</span></p></aside>\n" +
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
    }
</script>
<!-- 统计代码 -->
</body>
</html>
