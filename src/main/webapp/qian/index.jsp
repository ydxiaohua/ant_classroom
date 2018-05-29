<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no,minimal-ui">
    <title>IT课程列表-蚂蚁课堂</title>
    <meta name="author" content="http://www.itmayiedu.com" />
    <meta name="keywords" content="蚂蚁课堂,Java视频教程,Java高级架构师教程,SpringBoot视频教程,SpringCloud视频教程,Redis视频教程,ActivityMQ视频教程" />
    <meta name="description" content="蚂蚁课堂：专属于年轻人的在线学习平台，因为年轻，所以坚持不懈！网站包含了【微服务实战】【分布式架构】【高并发与高可用】等视频课程。官方QQ群:193086273" />
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

    <script type="text/javascript"
            src="http://www.itmayiedu.com/static/inxweb/front/course.js"></script>
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
                    <li><a href="/"
                           title="首页"
                    >首页</a></li>
                    <li><a href="http://cn.mikecrm.com/kz8uPv0"
                           title="培训"
                           target="_blank">培训</a></li>
                    <li><a href="/front/showcoulist"
                           title="课程"
                    >课程</a></li>
                    <li><a href="/lc/locaMemberRecharge"
                           title="会员"
                    >会员</a></li>
                    <li><a href="/questions/list"
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
                    <li><a href="http://www.itmayiedu.comhttp://cn.mikecrm.com/kz8uPv0"
                           title="培训"
                           target="_blank">培训</a></li>
                    <li><a href="http://www.itmayiedu.com/front/showcoulist"
                           title="课程"
                    >课程</a></li>
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
    <div id="aCoursesList" class="bg-fa of">
        <!-- /课程列表 开始 -->
        <section class="container">
            <header class="comm-title">
                <h2 class="fl tac">
                    <span class="c-333">全部课程</span>
                </h2>
            </header>
            <section class="c-sort-box">
                <section class="c-s-dl">
                    <dl>
                        <dt>
                            <span class="c-999 fsize14">按班型</span>
                        </dt>
                        <dd class="c-s-dl-li">
                            <ul class="clearfix">
                                <li
                                        class="current"><a
                                        onclick="submitForm(1,0)" title="全部" href="javascript:void(0)">全部</a></li>
                                <li
                                >
                                    <a onclick="submitForm(1,366)"
                                       title="微服务架构实战"
                                       href="javascript:void(0)">微服务架构实战</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,359)"
                                       title="分布式解决方案"
                                       href="javascript:void(0)">分布式解决方案</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,379)"
                                       title="分布式消息中间件"
                                       href="javascript:void(0)">分布式消息中间件</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,357)"
                                       title="分布式协调工具"
                                       href="javascript:void(0)">分布式协调工具</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,355)"
                                       title="分布式缓存"
                                       href="javascript:void(0)">分布式缓存</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,384)"
                                       title="源码分析"
                                       href="javascript:void(0)">源码分析</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,356)"
                                       title="分布式架构存储"
                                       href="javascript:void(0)">分布式架构存储</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,358)"
                                       title="分布式架构"
                                       href="javascript:void(0)">分布式架构</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,411)"
                                       title="微服务项目实战"
                                       href="javascript:void(0)">微服务项目实战</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,413)"
                                       title="微信开发技术"
                                       href="javascript:void(0)">微信开发技术</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,421)"
                                       title="JavaEE基础"
                                       href="javascript:void(0)">JavaEE基础</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,350)"
                                       title="并发编程"
                                       href="javascript:void(0)">并发编程</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,364)"
                                       title="项目管理工具"
                                       href="javascript:void(0)">项目管理工具</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,363)"
                                       title="互联网安全架构"
                                       href="javascript:void(0)">互联网安全架构</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,362)"
                                       title="开放平台设计"
                                       href="javascript:void(0)">开放平台设计</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,360)"
                                       title="分布式通讯技术"
                                       href="javascript:void(0)">分布式通讯技术</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,354)"
                                       title="高并发与高可用"
                                       href="javascript:void(0)">高并发与高可用</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,352)"
                                       title="性能优化"
                                       href="javascript:void(0)">性能优化</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,351)"
                                       title="设计模式"
                                       href="javascript:void(0)">设计模式</a>
                                </li>
                                <li
                                >
                                    <a onclick="submitForm(1,424)"
                                       title="面试指导"
                                       href="javascript:void(0)">面试指导</a>
                                </li>
                            </ul>
                            <aside class="c-s-more">
                                <a href="javascript: void(0)" title="" class="fsize14 c-master">[展开]</a>
                            </aside>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                            <span class="c-999 fsize14">按讲师</span>
                        </dt>
                        <dd class="c-s-dl-li">
                            <ul class="clearfix">
                                <li
                                        class="current"><a
                                        onclick="submitForm(2,0)" title="全部" href="javascript:void(0)">全部</a></li>
                                <li
                                ><a
                                        title="余胜军" onclick="submitForm(2,85)"
                                        href="javascript:void(0)">余胜军</a></li>
                                <li
                                ><a
                                        title="邹安旭" onclick="submitForm(2,92)"
                                        href="javascript:void(0)">邹安旭</a></li>
                            </ul>
                            <aside class="c-s-more">
                                <a href="javascript: void(0)" title="" class="fsize14 c-master">[展开]</a>
                            </aside>
                        </dd>
                    </dl>


                    <dl>
                        <dt>
                            <span class="c-999 fsize14">按类型</span>
                        </dt>
                        <dd class="c-s-dl-li">
                            <ul class="clearfix">
                                <li
                                        class="current"class="current" ><a
                                        onclick="submitForm(4,null)" title="全部"
                                        href="javascript:void(0)">全部</a></li>
                                <li
                                ><a
                                        onclick="submitForm(4,0)" title="免费"
                                        href="javascript:void(0)">免费</a></li>
                                <li ><a
                                        onclick="submitForm(4,1)" title="会员"
                                        href="javascript:void(0)">会员</a></li>
                                <!--  <li ><a onclick="submitForm(4,2)"
                                                                                                   title="项目"
                                                                                                   href="javascript:void(0)">项目</a>
                                 </li>
                                 <li ><a onclick="submitForm(4,3)"
                                                                                                   title="知识"
                                                                                                   href="javascript:void(0)">知识</a>
                                 </li> -->
                            </ul>
                            <aside class="c-s-more">
                                <a href="javascript: void(0)" title="" class="fsize14 c-master">[展开]</a>
                            </aside>
                        </dd>
                    </dl>


                    <div class="clear"></div>
                </section>
                <div class="js-wrap">
                    <section class="fr">
						<span class="c-ccc"> <tt class="c-master f-fM">1</tt>/<tt
                                class="c-666 f-fM">4</tt>
						</span>
                    </section>
                    <section class="fl">
                        <ol class="js-tap clearfix">
                            <li
                            ><a
                                    title="关注度" onclick="submitForm(3,'FOLLOW')"
                                    href="javascript:void(0)">关注度</a></li>
                            <li
                                    class="current bg-orange">
                                <a title="最新" onclick="submitForm(3,'NEW')"
                                   href="javascript:void(0)">最新</a>
                            </li>
                            <!-- <li
                                    >
                                <a title="价格"
                                   onclick="submitForm(4,'
                                   ONE')"
                                   href="javascript:void(0)">价格<span></span></a>
                            </li>
                            <li><a title="最新" onclick="submitForm(3,'NEW')"
                                   href="javascript:void(0)">会员</a></li> -->
                        </ol>
                    </section>
                </div>
                <div class="mt40">
                    <article class="comm-course-list">
                        <ul class="of">
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180520/1526748578060.png"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/123/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/123/0"
                                           title="纯手写SpringMVC框架"
                                           class="course-title fsize18 c-333">纯手写SpringMVC框架</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-green"><tt
                                                    class="c-fff fsize12 f-fA">免费</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">10913浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180518/1526612717895.png"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/122/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/122/0"
                                           title="手写SpringIOC容器框架"
                                           class="course-title fsize18 c-333">手写SpringIOC容器框架</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-green"><tt
                                                    class="c-fff fsize12 f-fA">免费</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">11122浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180516/1526460584714.png"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/121/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/121/0"
                                           title="手写Spring事务注解框架"
                                           class="course-title fsize18 c-333">手写Spring事务注解框架</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-orange"><tt
                                                    class="c-fff fsize14 f-fG">会员</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">11154浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180514/1526273682184.png"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/120/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/120/0"
                                           title="JVM实战参数调优"
                                           class="course-title fsize18 c-333">JVM实战参数调优</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-orange"><tt
                                                    class="c-fff fsize14 f-fG">会员</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">11070浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180514/1526273824496.png"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/119/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/119/0"
                                           title="垃圾回收机制算法分析"
                                           class="course-title fsize18 c-333">垃圾回收机制算法分析</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-green"><tt
                                                    class="c-fff fsize12 f-fA">免费</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">10974浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180503/1525329696838.png"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/118/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/118/0"
                                           title="深入理解Java锁的实现原理"
                                           class="course-title fsize18 c-333">深入理解Java锁的实现原理</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-orange"><tt
                                                    class="c-fff fsize14 f-fG">会员</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">12543浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180423/20180423094433.png"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/117/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/117/0"
                                           title="线程池实现原理之自定义线程池"
                                           class="course-title fsize18 c-333">线程池实现原理之自定义线程池</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-green"><tt
                                                    class="c-fff fsize12 f-fA">免费</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">12905浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180410/1523342959527.png"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/116/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/116/0"
                                           title="使用LCN解决分布式事务"
                                           class="course-title fsize18 c-333">使用LCN解决分布式事务</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-green"><tt
                                                    class="c-fff fsize12 f-fA">免费</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">14058浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180328/1522170028933.jpg"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/113/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/113/0"
                                           title="使用Zookeeper实现动态负载均衡"
                                           class="course-title fsize18 c-333">使用Zookeeper实现动态负载均衡</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-green"><tt
                                                    class="c-fff fsize12 f-fA">免费</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">13594浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180326/1522060797824.jpg"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/112/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/112/0"
                                           title="SpringCloud微服务电商项目实战"
                                           class="course-title fsize18 c-333">SpringCloud微服务电商项目实战</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-orange"><tt
                                                    class="c-fff fsize14 f-fG">会员</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">27085浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180319/1521434517085.jpg"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/111/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/111/0"
                                           title="Java开发微信机器人"
                                           class="course-title fsize18 c-333">Java开发微信机器人</a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-green"><tt
                                                    class="c-fff fsize12 f-fA">免费</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">12945浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                            <li>
                                <div class="cc-l-wrap">
                                    <section class="course-img">
                                        <img xSrc="http://www.itmayiedu.com/images/upload/course/20180316/1521184693048.jpg"
                                             src="http://www.itmayiedu.com/static/inxweb/img/default-img.gif"
                                             class="img-responsive" alt="">
                                        <div class="cc-mask">
                                            <a href="http://www.itmayiedu.com/front/couinfo/110/0"
                                               title="" class="comm-btn c-btn-1">开始学习</a>
                                        </div>
                                    </section>
                                    <h3 class="hLh30 txtOf mt10">
                                        <a href="http://www.itmayiedu.com/front/couinfo/110/0"
                                           title="Zookeeper基础 "
                                           class="course-title fsize18 c-333">Zookeeper基础 </a>
                                    </h3>
                                    <section class="mt10 hLh20 of">
                                            <span class="fr jgTag bg-green"><tt
                                                    class="c-fff fsize12 f-fA">免费</tt></span>
                                        <span class="fl jgAttr c-ccc f-fA"> <tt
                                                class="c-999 f-fA">15406浏览</tt>
												</span>
                                    </section>
                                </div>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </article>
                </div>
                <!-- 公共分页 开始 -->
                <script type="text/javascript" src="http://www.itmayiedu.com/static/common/web/js/page.js"></script>
                <div class="paging">
                    <a href="javascript:goPage(1);" title="">首</a>
                    <a id="backpage" class="undisable" href="javascript:void(0)" title="">&lt;</a>
                    <a id="nextpage" href="javascript:goPage(2);" title="">&gt;</a>
                    <a href="javascript:goPage(4);" title="">末</a>
                    <div class="clear"></div>
                </div>


                <script type="text/javascript">
                    var totalPageSize =4;
                    var currentPage =
                        0<1 ? 1 :1;
                    var totalPage = 4;
                    showPageNumber();
                </script><!-- 公共分页 结束 -->
                <form action="http://www.itmayiedu.com/front/showcoulist" id="searchForm"
                      method="post">
                    <input type="hidden" id="pageCurrentPage" name="page.currentPage"
                           value="1"/> <input type="hidden" name="queryCourse.teacherId"
                                              value="0"/> <input type="hidden"
                                                                 name="queryCourse.subjectId"
                                                                 value="0"/>
                    <input type="hidden" name="queryCourse.order"
                           value=""/>
                    <input type="hidden" name="queryCourse.type"
                           value=""/>
                    <input type="hidden" name="queryCourse.subType"
                           value=""/>
                </form>
            </section>
        </section>
        <!-- /课程列表 结束 -->
    </div>
    <script>
        $(function () {
            cSortFun(); //分类更多按钮交互效果
            scrollLoad(); //响应滚动加载课程图片
        });
        //sort suMore
        var cSortFun = function () {
            $(".c-s-dl>dl .c-s-more>a").each(function () {
                var _this = $(this),
                    _uList = _this.parent().siblings("ul"),
                    _uLw = _uList.height();
                if (_uLw <= "40") {
                    _this.hide();
                } else {
                    _uList.css("height", "40px");
                    _this.click(function () {
                        if (_this.html() == "[展开]") {
                            _uList.css("height", "auto");
                            _this.text("[收起]");
                        } else {
                            _uList.css("height", "40px");
                            _this.text("[展开]");
                        }
                    })
                }
            });
        }
    </script>
    <!-- 公共底引入 -->
    <link href="http://www.itmayiedu.com/static/inxweb/css/qq.css " rel="stylesheet">
    <footer id="footer">
        <section class="container">
            <div class="">
                <h4 class="hLh30">
                    <span class="fsize18 f-fM c-999">友情链接</span>
                </h4>
                <ul class="of flink-list">
                    <li><a href="https://www.meitedu.com" title="每特学院"
                           target="_blank">每特学院</a>
                    </li>
                    <li><a href="https://ms.meitedu.com" title="Java面试宝典"
                           target="_blank">Java面试宝典</a>
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

<!-- 统计代码 -->
</body>
</html>

