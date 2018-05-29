<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/05/14
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<%=request.getContextPath()%>/bootstrap/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link href="<%=request.getContextPath()%>/bootstrap/bootstrap/css/bootstrap.min.css">
    <!-- bootstrap-dialog css -->
    <link href="<%=request.getContextPath()%>/bootstrap/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no,minimal-ui">
    <title>蚂蚁课堂-专属年轻人的在线教育【梦想起航】</title>
    <meta name="author" content="http://www.itmayiedu.com" />
    <meta name="keywords" content="蚂蚁课堂,Java视频教程,Java高级架构师教程,SpringBoot视频教程,SpringCloud视频教程,Redis视频教程,ActivityMQ视频教程" />
    <meta name="description" content="蚂蚁课堂是专属于年轻人的在线学习平台，因为年轻，所以坚持不懈！网站包含了SpringCloud视频教程,SpringBoot视频教程,等Java技术教程。官方QQ群:193086273" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style"
          content="black-translucent" />
    <meta content="telephone=no" name="format-detection" />
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/css1/tu/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css1/css/reset.css?t=2017-07-27">
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css1/css/theme.css?t=2017-07-27">
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css1/css/global.css?t=2017-07-27">
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css1/css/web.css?t=2017-07-27">
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css1/css/adaptive.css?t=2017-07-27">
    <link href="<%=request.getContextPath()%>/css1/css/mw_320_768.css?t=2017-07-27" rel="stylesheet"
          type="text/css"
          media="screen and (min-width: 320px) and (max-width: 768px)">
    <!--[if lt IE 9]><!--
<script src="http://www.itmayiedu.com/static/common/html5.js"></script>-->
<![endif]--><!-- Bootstrap 插件 css -->

    <script type="text/javascript" src="<%=request.getContextPath()%>/css1/js/jquery-1.7.2.min.js?t=2017-07-27"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/css1/js/webutils.js?t=2017-04-30"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/css1/js/header.js?t=2017-07-27"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/css1/js/common.js?t=2017-07-27"></script>
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
    <meta name="baidu-site-verification" content="td22YrPILf" />

    <script>
        var theme_color = 'orange';

    </script>

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
                        src="<%=request.getContextPath()%>/css1/tu/1478524048493.png" width="100%"
                        alt="">
                </a>
            </h1>
            <div class="h-r-nsl">
                <ul class="nav">
                    <li><a href="/"
                           title="首页"
                    >首页</a></li>
                    <li><a href="/front/showcoulist"
                           title="课程"
                    >课程</a></li>
                    <li><a href="http://cn.mikecrm.com/kz8uPv0"
                           title="培训"
                           target="_blank">培训</a></li>
                    <li><a href="/lc/locaMemberRecharge"
                           title="会员"
                    >会员</a></li>
                    <li><a href="<%=request.getContextPath()%>/jsp/wenda.jsp"
                           title="问答"
                    >问答</a></li>
                    <li><a href="http://bbs.itmayiedu.com"
                           title="社区"
                    >社区</a></li>
                    <li><a href="https://fir.im/mayiketang"
                           title="APP"
                           target="_blank">APP</a></li>
                </ul>
                <!-- / nav -->
                <ul class="h-r-login">
                    <li class="undis" id="no-login"><a href="javascript:login()"
                                                       title="登录"> <em class="icon18 login-icon">&nbsp;</em><span
                            class="vam ml5">登录</span>
                    </a> | <a href="javascript:register()" title="注册"> </em><span
                            class="vam ml5">注册</span>
                    </a></li>
                    <li class="mr10 undis" id="is-login-one"><a
                            href="http://www.itmayiedu.com/uc/letter" title="消息" id="headerMsgCountId"> <em
                            class="icon18 news-icon">&nbsp;</em>
                    </a><q class="red-point" style="display: none">&nbsp;</q></li>
                    <li class="h-r-user undis" id="is-login-two"><a
                            href="http://www.itmayiedu.com/uc/index" title=""> <img
                            src="<%=request.getContextPath()%>/css1/tu/avatar-boy.gif" width="30"
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
                    <img src="<%=request.getContextPath()%>/css1/tu/avatar-boy.gif" alt=""
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
                    <li><a href="<%=request.getContextPath()%>/jsp/wenda.jsp"
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
    <div class="i-slide">
        <section>
            <!-- 如果需要导航按钮 -->
            <a class="arrow-left s-arrow" href="javascript:void(0)"></a> <a
                class="arrow-right s-arrow" href="javascript:void(0)"></a>
            <!-- 图片位置 -->
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"
                         style="background: #fafafa;;">
                        <a target="_blank"
                           href="https://mp.weixin.qq.com/s?__biz=MzUzNDQwNTI5OA==&mid=2247483676&idx=1&sn=0ab157709cf2af77ef70271e19524ef6&chksm=fa9408c1cde381d7288816e4a4ed63b17e4159a0dc40afaa41321ca029ac91d4fd77cacd4b63&mpshare=1&scene=23&srcid=05112wBs5jvYfiOUSauwCBbH#rd">
                            <img class="imgload" src="<%=request.getContextPath()%>/css1/tu/1525971349741.png"
                                 alt="首页banner图片02">
                        </a>
                    </div>
                    <div class="swiper-slide"
                         style="background: #fafafa;;">
                        <a target="_blank"
                           href="https://ke.qq.com/course/273548?tuin=2663a60b">
                            <img class="imgload" src="<%=request.getContextPath()%>/css1/tu/1525971495193.png"
                                 alt="首页banner图片04">
                        </a>
                    </div>
                    <div class="swiper-slide"
                         style="background: #fafafa;;">
                        <a target="_blank"
                           href="http://www.itmayiedu.com/lc/locaMemberRecharge">
                            <img class="imgload" src="<%=request.getContextPath()%>/css1/tu/1526270493681.png"
                                 alt="蚂蚁课堂VIP">
                        </a>
                    </div>
                </div>
            </div>
            <!-- 如果需要分页器 -->
            <div class="pagination"></div>
        </section>
    </div>
    <!-- /index slide -->
    <div id="aCoursesList">
        <!-- /为你推荐 开始 -->
        <div class="bg-fa of">
            <section class="container">
                <header class="comm-title">
					<span class="fr mt5"><a href="javascript:void(0)"
                                                                title="换一换" class="c-master" onclick="huanyihuan()">换一换</a></span>
                    <h2 class="fl tac">
                        <span class="c-333">为你推荐</span>
                    </h2>
                </header>
                <article class="comm-course-list">
                    <ul class="of" id="weinituijian">

                    </ul>
                    <div class="clear"></div>
                </article>
            </section>


        </div>
        <!-- /为你推荐 结束 -->
        <!-- /网校课程 开始 -->
        <div>
            <section class="container">
                <header class="comm-title">
                    <h2 class="tac">
                        <span class="c-333">实战课程</span>
                    </h2>
                </header>
                <div>
                    <section class="c-tab-title">
                        <a href="javascript:void(0)" title="精品课程"
                           onclick="bna('FOLLOW',this)">精品课程</a> <a
                            href="javascript:void(0)" class="current boutiqueCourse"
                            title="最新课程" onclick="bna('NEW',this)">最新课程</a> <a
                            href="javascript:void(0)" title="全部课程" onclick="bna('ALL',this)">全部课程</a>
                    </section>
                </div>
                <div>
                    <article class="comm-course-list">
                        <ul class="of" id="bna">
                        </ul>
                        <div class="clear"></div>
                    </article>
                    <section class="tac pt20">
                        <a href="http://www.itmayiedu.com/front/showcoulist" title="全部课程"
                           class="comm-btn c-btn-2">全部课程</a>
                    </section>
                </div>
            </section>
        </div>
        <!-- /网校课程 结束 -->
        <!-- /课程互动 开始-->

        <!-- /课程互动 结束-->
        <!-- /网校名师 开始 -->

        <!-- /网校名师 结束 -->
    </div>
    <!-- <script type="text/javascript"
                    src="http://www.itmayiedu.com/static/inxweb/js/adaptive.js"></script> -->
    <!--jQuery核心js  -->
    <script src="<%=request.getContextPath() %>/bootstrap/jquery.min.js"></script>
    <!-- bootstrap 核心js文件 -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
    <!-- bootstrap-dialog -->
    <script src="<%=request.getContextPath() %>/bootstrap/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>

    <script type="text/javascript"
            src="<%=request.getContextPath()%>/css1/js/swiper-2.1.0.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/css1/js/index.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/css1/js/index_theme_color.js"></script>
    <!-- 换肤 -->
    <script>
        $(function() {
            /*			if(otherAda()=='pc'){
            $(".i-slide").addClass('i-slides');
            $("#header").addClass('headers');
            }*/
            sSwiperFun(); //幻灯片调取
            upSlideFun("#iQuestion"); //向上滚动互动
            scrollLoad(); //响应滚动加载课程图片
            $(".boutiqueCourse").click();//网校课程-精品课程
            huanyihuan();
            studentDynamic();//学生动态

            var uri = window.location.search;
            var val = "msg";
            var re = new RegExp("" + val + "=([^&?]*)", "ig");
            var msg = ((uri.match(re)) ? (uri.match(re)[0]
                .substr(val.length + 1)) : null);
            if (msg != null && msg != '' && msg == 'LimitLogin') {
                dialog('提示信息', "您的帐号在其他地点登录，请重新登录", 1);
            }
        });
    </script>



    <!-- 公共底引入 -->
    <link href="<%=request.getContextPath()%>/css1/css/qq.css " rel="stylesheet">
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
                            <span>服务热线：400-006-5079</span> <span>Email：644064779@qq.com Java技术交流群:116295598</span>
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
    <!-- 代码部分 begin -->
    <!-- <div class="r-fixed-wrap">
    <ul class="r-fixed-ul">
    <li id="goTopBtn" class="undis"><a href="javascript: void(0)"
    title="返回顶部" class="bg-orange"> <em class="r-f-icon-3">&nbsp;</em><span>返回顶部</span>
    </a></li>
    <li class="foot-zixun">
    <a href="" title="在线咨询" class="bg-orange">
    <em class="r-f-icon-1" >&nbsp;</em><span>在线咨询</span>
    </a>
    </li>
    <li class="foot-zixun">
    <a href="" title="扫描关注" class="bg-orange">
    <em class="r-f-icon-2">&nbsp;</em><span>扫描关注</span>
    </a>
    </li>
    </ul>
    </div> -->
    <section
            style="color: #666; position: absolute; left: 50%; bottom: 20px; z-index: 7; margin-left: -80px;">
        <span>Powered by</span><a style="margin-left: 2px; color: #666;"
                                  title="IT蚂蚁课堂">蚂蚁课堂</a>

        <script type="text/javascript">
            var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
                : " http://");
            document
                .write(unescape("%3Cspan id='cnzz_stat_icon_1259976290'%3E%3C/span%3E%3Cscript src='"
                    + cnzz_protocol
                    + "s11.cnzz.com/z_stat.php%3Fid%3D1259976290%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
        </script>
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

                // if (!IsPC()) {
                //     $("#main-im").hide();
                // }
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
        /*
         * 快捷登录/注册 type 1 头部点击登陆 2 注册 选中
         */
        function login() {
            alert("123")
            BootstrapDialog.show({
                title: '订单详情',
                message: $('<div></div>').load('<%=request.getContextPath()%>/jsp/loginandreg.jsp'),
                buttons: [{
                    label: '关闭',
                    action:function(result) {
                        result.close();
                    }
                }]
            })
        }
    </script>
<!-- 统计代码 -->
</body>

</html>
