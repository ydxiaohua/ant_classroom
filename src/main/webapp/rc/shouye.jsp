<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/21
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
   <%-- <script type="text/javascript" src="<%=request.getContextPath() %>/js/common.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath() %>/js/shouye.js"></script>--%>

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


        });
    </script>

    <header id="header">
        <section class="container">
            <a href='http://cn.mikecrm.com/kz8uPv0' target="_blank">

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
                    <li><a href="/front/showcoulist"
                           title="课程"
                    >课程</a></li>
                    <li><a href="http://cn.mikecrm.com/kz8uPv0"
                           title="培训"
                           target="_blank">培训</a></li>
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
                                                        placeholder="输入课程" name="queryCourse.courseName"
                                                        value="" >
                            <button type="submit" class="s-btn">
                                <em class="icon18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</em>
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
                            <img class="imgload" src="http://www.itmayiedu.com/images/upload/image/20180511/1525971349741.png"
                                 alt="首页banner图片02">
                        </a>
                    </div>
                    <div class="swiper-slide"
                         style="background: #fafafa;;">
                        <a target="_blank"
                           href="https://ke.qq.com/course/273548?tuin=2663a60b">
                            <img class="imgload" src="http://www.itmayiedu.com/images/upload/image/20180511/1525971495193.png"
                                 alt="首页banner图片04">
                        </a>
                    </div>
                    <div class="swiper-slide"
                         style="background: #fafafa;;">
                        <a target="_blank"
                           href="http://www.itmayiedu.com/lc/locaMemberRecharge">
                            <img class="imgload" src="http://www.itmayiedu.com/images/upload/image/20180514/1526270493681.png"
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
                    <span id="liyangshouye"></span>
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
                        <a href="javascript:jinping()" title="精品课程" onclick="bna('FOLLOW',this)">精品课程</a>
                        <a href="javascript:zuixing()" class="current boutiqueCourse" title="最新课程" onclick="bna('NEW',this)">最新课程</a>
                        <a href="javascript:quanbu()" title="全部课程" onclick="bna('ALL',this)">全部课程</a>
                    </section>
                </div>
                <div>
                    <article class="comm-course-list">
                        <span id="jinping"></span>
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
    <script type="text/javascript"
            src="http://www.itmayiedu.com/static/inxweb/js/swiper-2.1.0.js"></script>
    <script type="text/javascript"
            src="http://www.itmayiedu.com/static/inxweb/front/index.js"></script>
    <script type="text/javascript"
            src="http://www.itmayiedu.com/static/inxweb/front/index_theme_color.js"></script>
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
<script>

 //移动端导航显示与隐藏
 var wmNavFun = function() {
     var wmBtn = $(".mw-nav-btn"), hmMask = $(".h-mobile-mask"), wH = $(window)
         .height();
     $(".head-mobile").css("height", wH + "px");
     wmBtn.click(function() {
         if (!wmBtn.hasClass("mw-tap")) {
             $(this).addClass("mw-tap");
             $("html").addClass("active");
             hmMask.show().css("opacity", "1");
         } else {
             $(this).removeClass("mw-tap");
             $("html").removeClass("active");
             hmMask.css("opacity", "0").hide();
         }
         ;
     });
     hmMask.click(function() {
         if (!hmMask.is(":hidden")) {
             wmBtn.removeClass("mw-tap");
             $("html").removeClass("active");
             hmMask.css("opacity", "0").hide();
         }
     });
 };
 // 向上滚动方法
 var upSlideFun = function(od) {
     var _upWrap = $(od), _sTime = 5000, _moving;
     _upWrap.hover(function() {
         clearInterval(_moving);
     }, function() {
         _moving = setInterval(function() {
             var _mC = _upWrap.find("li:first");
             var _mH = _mC.height();
             _mC.animate({
                 "margin-top" : -_mH + "px"
             }, 600, function() {
                 _mC.css("margin-top", 0).appendTo(_upWrap);
             });
         }, _sTime);
     }).trigger("mouseleave");
 }
 // 滚动定位
 function cTabFun(op) {
     var cTab = op;
     cTab.each(function() {
         var _this = $(this), _tName = _this.attr("name");
         _this.click(function() {
             _this.parent().parent().find("a").removeClass("current");
             _this.addClass("current").siblings().removeClass("current");
             $("html,body").animate({
                 "scrollTop" : $("." + _tName + "-content").offset().top
             }, 500);
         })
     })
 }
 // 课程分享
 function shareShow() {
     // share show
     $(".kcShare").hover(function() {
         var _this = $(this);
         _this.stop().animate({
             "width" : "205px"
         }, 200);
         _this.siblings("span").css({
             "width" : "60px"
         });
         _this.children("#bdshare").stop().animate({
             "right" : "0"
         }, 200);
     }, function() {
         var _this = $(this);
         _this.stop().animate({
             "width" : "48px"
         }, 200);
         _this.children("#bdshare").stop().animate({
             "right" : "-160px"
         }, 200);
     });
 }
 // tree menu
 function treeMenu() {
     // 一级目录
     $("#lh-menu>ul>li>a").each(
         function() {
             var _this = $(this);
             _this.click(function() {
                 if (_this.siblings("ol").is(":hidden")) {
                     _this.siblings("ol").slideDown(150);
                     _this.addClass("current-1");
                     _this.parent("li").siblings().children("ol").slideUp(
                         150);
                     _this.parent("li").siblings().children("a:first")
                         .removeClass("current-1");
                 } else {
                     _this.siblings("ol").slideUp(150);
                     _this.removeClass("current-1");
                 }
                 ;
             });
         })
 }
 // 答疑回复
 function replyFun() {
     var hfElem = '<section class="n-reply-wrap"><fieldset>'
         + '<textarea name=""></textarea>'
         + '</fieldset><p class="of mt5 tar pl10 pr10">'
         + '<span class="fl"><tt class="c-red">回复内容不能为空！</tt></span>'
         + '<u class="hand mr10 qxBtn c-999">取消</u>'
         + '<a href="javascript: void(0)" title="回复" class="lh-reply-btn" onclick="addReply(this)">回复</a>'
         + '</p></section>';
     $(".question-list>ul>li").each(function() {
         var _this = $(this), qxFun = function() {
             // _this.find(".n-reply").find(".n-reply-wrap").remove();
             _this.find(".n-reply").slideUp(150);
         };
         _this.find(".noter-dy").click(function() {
             if (_this.find(".n-reply").is(":hidden")) {
                 // _this.find(".n-reply").slideDown(150).prepend(hfElem);
                 _this.find(".n-reply").slideDown(150);
             } else {
                 qxFun();
             }
             ;
         });
         _this.find(".qxBtn").bind("click", function() {
             qxFun();
         });
     });
 }
 // 选项卡公共方法
 function cardChange(oTitle, oCont, current, callback) {
     var oTitle = $(oTitle), oCont = $(oCont), _index;
     oTitle.click(function() {
         _index = oTitle.index(this);
         $(this).addClass(current).siblings().removeClass(current);
         oCont.eq(_index).show().siblings().hide();
         if (typeof callback === "function") {
             callback();
         }
         ;
     }).eq(0).click();
 }
 // scrollLoad 滚动响应加载调用图片方法
 var scrollLoad = (function(options) {
     var defaults = (arguments.length == 0) ? {
         src : 'xSrc',
         time : 500
     } : {
         src : options.src || 'xSrc',
         time : options.time || 500
     };
     var camelize = function(s) {
         return s.replace(/-(\w)/g, function(strMatch, p1) {
             return p1.toUpperCase();
         });
     };
     this.getStyle = function(element, property) {
         if (arguments.length != 2)
             return false;
         var value = element.style[camelize(property)];
         if (!value) {
             if (document.defaultView && document.defaultView.getComputedStyle) {
                 var css = document.defaultView.getComputedStyle(element, null);
                 value = css ? css.getPropertyValue(property) : null;
             } else if (element.currentStyle) {
                 value = element.currentStyle[camelize(property)];
             }
         }
         return value == 'auto' ? '' : value;
     };
     var _init = function() {
         if (document.getElementById("aCoursesList") == null) {
             return;
         }
         var offsetPage = window.pageYOffset ? window.pageYOffset
             : window.document.documentElement.scrollTop, // 滚动条滚动高度
             offsetWindow = offsetPage
                 + Number(window.innerHeight ? window.innerHeight
                     : document.documentElement.clientHeight), docImg = document
                 .getElementById("aCoursesList").getElementsByTagName("img"), // 通过ID查找获取图片节点
             _len = docImg.length;
         if (!_len)
             return false;
         for (var i = 0; i < _len; i++) {
             var attrSrc = docImg[i].getAttribute(defaults.src), o = docImg[i], tag = o.nodeName
                 .toLowerCase();
             if (o) {
                 postPage = o.getBoundingClientRect().top
                     + window.document.documentElement.scrollTop
                     + window.document.body.scrollTop;
                 postWindow = postPage
                     + Number(this.getStyle(o, 'height').replace('px', ''));
                 if ((postPage > offsetPage && postPage < offsetWindow)
                     || (postWindow > offsetPage && postWindow < offsetWindow)) { // 判断元素始终在可见区域内
                     if (tag === "img" && attrSrc !== null) {
                         o.setAttribute("src", attrSrc);
                     }
                     o = null;
                 }
             }
         }
         ;
         window.onscroll = function() {
             setTimeout(function() {
                 _init();
             }, defaults.time);
         }
     };
     return _init();
 });
 // 公共弹框
 /*******************************************************************************
  * **
  *
  * @param dTitle :
     *            弹框标题名称; **
  * @param index :
     *            调用弹框的类型; ** index == 0 : 支付结果反馈弹出框; ** index == 1 : 正确提示弹出框; **
  *            index == 2 : 错误提示弹出框; ** index == 3 : 确认提示弹出框；
  */
 function dialog(dTitle, msg, index, url) {
     $("#tisbutt,.dClose,#qujiao").click();
     var oBg = $('<div class="bMask"></div>').appendTo($("body")), dialogEle = $(
         '<div class="dialogWrap"><div class="dialog-ele"><h4 class="d-s-head pr"><a href="javascript:void(0)" title="关闭" class="dClose icon16 pa">&nbsp;</a><span class="d-s-head-txt">'
         + dTitle
         + '</span></h4><div class="of"><div id="dcWrap" class="mt20 mb20 ml20 mr20 "></div></div></div></div>')
         .appendTo($("body"));
     var dCont = [
         "<div class='d-tips-1'><em class='pa d-t-icon-3'></em><p class='fsize14 c-666'>"
         + msg
         + "</p><div class='tac mt30'><a href='javascript:void(0)' title='' class='order-submit dClose'>确定</a></div></div>",
         "<div class='d-tips-2'><em class='pa d-t-icon-2'></em><p class='fsize14 c-666'>"
         + msg
         + "</p><div class='tac mt30'><a href='javascript:void(0)' title='' class='order-submit dClose'>确定</a></div></div>",
         "<div class='d-tips-3'><em class='pa d-t-icon-3'></em><p class='fsize14 c-666'>"
         + msg
         + "</p><div class='tac mt30'><a href='"
         + url
         + "' title='' class='order-submit'>确定</a><a href='javascript:void(0)' title='' class='goBack-btn ml10 dClose'>取消</a></div></div>",
         "<div class='d-tips-4><em class='pa d-t-icon-1'></em><p class='fsize14 c-666'>你选择使用工商银行网银进行在线支付，在你支付成功后我们将尽快发送给你购买的课程。祝你学习愉快！</p><div class='tac mt20'><a href='' title='' class='blue-btn mr10'>支付过程发生问题</a><a href='' title='' class='blue-btn ml10'>已成功完成支付</a></div><p class='tar mt20 c-666'>如有疑问请询问客服：400-6587-777</p></div>",
         "<div class='d-tips-5'><em class='pa d-t-icon-4'></em><p class='fsize14 c-666 disIb ml5'>恭喜，你已成功激活。现在你可以：</p><div class='tac mt20 mb10'><a href='' title='' class='blue-btn mr10'>登录网页</a><a href='' title='' class='blue-btn'>查看课程</a></div></div>",
         "<div class='d-tips-6'>" + msg + "</div>" ];
     $("#dcWrap").html(dCont[index]);
     var dTop = (parseInt(document.documentElement.clientHeight, 10) / 2)
         + (parseInt(document.documentElement.scrollTop
             || document.body.scrollTop, 10)), dH = dialogEle.height(), dW = dialogEle
         .width(), dHead = $(".dialog-ele>h4");
     dialogEle.css({
         "top" : (dTop - (dH / 2)),
         "margin-left" : -(dW / 2)
     });
     dHead.css({
         "width" : (dW - "12")
     }); // ie7下兼容性;
     $("#tisbutt,.dClose,#qujiao").bind("click", function() {
         dialogEle.remove();
         oBg.remove();
     });

 }

 var ajaxUrl;// 记录上次ajax分页的url
 var ajaxparameters;// 记录上次ajax分页的参数
 var ajaxcallBack;
 /*
  * ajax分页方法获取数据
  */
 function ajaxPage(url, parameters, pageNum, callBack) {
     ajaxUrl = url;
     ajaxparameters = parameters;
     ajaxcallBack = callBack;
     parameters = 'page.currentPage=' + pageNum + '' + parameters;
     $.ajax({
         type : "POST",
         dataType : "text",
         url : baselocation + url,
         data : parameters,
         cache : true,
         async : false,
         success : callBack
     });
 }
 // 点击分页
 function goPageAjax(pageNum) {
     ajaxPage(ajaxUrl, ajaxparameters, pageNum, ajaxcallBack);
 }

 /*
  * 公共点赞 targetId 点赞的目标id type 点赞类型 1问答点赞 2问答评论点赞 obj 当前标签对象
  */
 function addPraise(targetId, type, obj) {
     if (isLogin()) {
         $.ajax({
             url : baselocation + "/praise/ajax/add",
             data : {
                 "praise.targetId" : targetId,
                 "praise.type" : type
             },
             type : "post",
             dataType : "json",
             async : true,
             success : function(result) {
                 if (result.success == true) {
                     dialog('提示', "点赞成功", 0);
                     // 点赞数加一
                     var praiseNum = $(".addPraise" + targetId + "_" + type)
                         .html();
                     $(".addPraise" + targetId + "_" + type).html(
                         praiseNum * 1 + 1);

                     // 修改点赞数
                     var priaseCount = parseInt($(obj).children("span").html());
                     $(obj).children("span").html(priaseCount + 1);
                 } else {
                     dialog('提示', result.message, 1);
                 }
             }
         })
     } else {
         // 先关闭 弹出
         $("#tisbutt,.dClose,#qujiao").click();
         lrFun();
     }
 }

 /**
  * 查询未读消息
  */
 function queryUnReadNum() {
     if (!isLogin()) {
         return;
     }
     $.ajax({
         type : "POST",
         dataType : "json",
         url : baselocation + "/uc/ajax/queryUnReadLetter",
         cache : true,
         async : true,
         success : function(result) {
             var letter = result.entity;
             if (letter == null) {
                 return;
             }
             // 未读系统消息数
             var systemNum = letter.SMNum;
             // 未读站内信数
             var letterNum = letter.mNum;

             // 总未读消息数
             unReadNum = letter.unReadNum;
             if (unReadNum != 0) {
                 $("#headerMsgCountId").next().show();
             }
             $("#headerMsgCountId").attr("title", unReadNum + "条未读消息");
             // $("#headerMsgCountId").html(unReadNum);
         }
     });
 }

 /*
  * 快捷登录/注册 type 1 头部点击登陆 2 注册 选中
  */
 function lrFun(type) {
     var oBg = $('<div class="bMask"></div>').appendTo($("body")), dialogEle = $(
         '<div class="dialogWrap" style="position: absolute;border:3px solid rgb(234, 234, 234);border-radius: 3%;"><div class="dialog-ele"><h4 class="d-s-head pr"><a id="close" href="javascript:void(0)" title="关闭" class="dClose icon16 pa">&nbsp;</a><span id="d-s-head-tab" class="d-s-head-tab"><a href="javascript:void(0)" class="current">登录</a><a href="javascript:void(0)">注册</a></span></h4><div class="of"><div id="lrEleWrap" class="mt10 mb20 ml20"></div></div></div></div>')
         .appendTo($("body")), rlEle = [ '<div id="d-s-head-cont" class="lrWrap">'
     + '<section class="dis e-login-ele">'
     + '<div class="mt10">'
     + '<p class="e-l-jy"></p>'
     + '</div>'
     + '<div>'
     + '<ol class="e-login-options">'
     + '<li>'
     + '<input  type="text" placeholder="请输入登录邮箱"  name="yyouxiang" value="" onkeyup="$(this).next().html(\'\');">'
     + '<p class="lr-tip-wrap"></p>'
     + '</li>'
     + '<li>'
     + '<input  type="password" placeholder="请输入密码"  name="ypass" value="" onkeyup="$(this).next().html(\'\');">'
     + '<p class="lr-tip-wrap"></p>'
     + '</li>'
     + '</ol>'
     +
     /*
      * '<section class="hLh30 of pl10"><span class="fr"><a
      * href="/uc/register" class="c-master fsize12">没有账号？去注册→</a></span>'+
      */
     '<section class="hLh30 of pl10">'
     + '<span class="fl"><a class="vam ml10 c-blue" title="" href="/front/passwordRecovery">忘记密码?</a></span></section>'
     + '<section class="mt20 tac">'
     + '<a href="javascript:void(0)" title="登 录" class="e-login-btn" onclick="dialogLogin('
     + type
     + ')">登 录</a>'
     + '</section>'
     +

     '<section class="mt20 sf-lr-wrap tac">'
     + '<h6 class="hLh20 mb15"><span class="c-666 fsize14">第三方快捷登录</span></h6>'
     + '<a href="javascript:thirdPartyLogin('
     + 1
     + ')" title="QQ登录" class="qq-sf">&nbsp;</a>'
     + '</section>'
     + '</div>'
     + '</section>'
     + '<section class="undis e-login-ele">'
     + '<div class="mt10">'
     + '<p class="e-l-jy"></p>'
     + '</div>'
     + '<div>'
     + '<ol class="e-login-options">'
     + '<li>'
     + '<input id="yyouxiang" type="text" placeholder="请输入登录邮箱"  name="" value="" onkeyup="$(this).next().html(\'\');">'
     + '<p class="lr-tip-wrap"></p>'
     + '</li>'
     + '<li>'
     + '<input id="yphone" type="text" placeholder="请输入用户手机号"  name="" value="" onkeyup="$(this).next().html(\'\');" maxlength="11">'
     + '<p class="lr-tip-wrap"></p>'
     + '</li>'
     + '<li>'
     + '<input id="ypass" type="password" placeholder="请输入密码"  name="" value="" onkeyup="$(this).next().html(\'\');">'
     + '<p class="lr-tip-wrap"></p>'
     + '</li>'
     + '<li>'
     + '<input id="ypass2" type="password" placeholder="请再输入一次密码"  name="" value="" onkeyup="$(this).next().html(\'\');">'
     + '<p class="lr-tip-wrap"></p>'
     + '</li>'
     + '</ol>'
     + '<section class="mt20 tac">'
     + '<a href="javascript: void(0)" onclick="dialogRegister()" title="注 册" class="e-login-btn">注 册</a>'
     + '</section>'
     + '<section class="mt20 sf-lr-wrap tac">'
     + '<h6 class="hLh20 mb15"><span class="c-666 fsize14">第三方快捷登录</span></h6>'
     + '<a href="javascript:thirdPartyLogin('
     + 1
     + ')" title="QQ登录" class="qq-sf">&nbsp;</a>' + '</section>' +

     '</div>' + '</section>' + '</div>' ];
     $("#lrEleWrap").html(rlEle[0]);
     placeholderFun();// placeholder兼容IE方法
     var dTop = (parseInt(document.documentElement.clientHeight, 10) / 2)
         + (parseInt(document.documentElement.scrollTop
             || document.body.scrollTop, 10)), dH = dialogEle.height(), dW = dialogEle
         .width(), dHead = $(".dialog-ele>h4");
     dialogEle.css({
         "top" : (dTop - (dH / 2)),
         "margin-left" : -(dW / 2)
     });
     dHead.css({
         "width" : (dW - "12")
     }); // ie7下兼容性;
     cardChange("#d-s-head-tab>a", "#d-s-head-cont>section", "current",
         function() {
             var dH = dialogEle.height();
             dialogEle.css({
                 "top" : (dTop - (dH / 2)),
                 "margin-left" : -(dW / 2)
             });
         });
     $(".dClose").bind("click", function() {
         dialogEle.remove();
         oBg.remove();
     });
     if (type == 2) {
         $("#d-s-head-tab").find("a:eq(1)").click();
     }
 }
 // placeholder兼容IE方法
 function placeholderFun() {
     // 判断浏览器是否支持placeholder属性
     supportPlaceholder = 'placeholder' in document.createElement('input');

     // 当浏览器不支持placeholder属性时，调用placeholder函数
     if (!supportPlaceholder) {
         $("input").not("input[type='ypass']").each(// 把input绑定事件
             // 排除password框
             function() {
                 if ($(this).val() == "" && $(this).attr("placeholder") != "") {
                     $(this).val($(this).attr("placeholder"));
                     $(this).focus(function() {
                         if ($(this).val() == $(this).attr("placeholder"))
                             $(this).val("");
                     });
                     $(this).blur(function() {
                         if ($(this).val() == "")
                             $(this).val($(this).attr("placeholder"));
                     });
                 }
             });
         // 对password框的特殊处理
         var pwdField = $("input[type=ypass]");
         pwdField.each(function() {
             var _this = $(this), index = _this.index(), pwdVal = _this
                 .attr('placeholder');
             _this.after('<input id="pwdPlaceholder' + index
                 + '" type="text" value=' + pwdVal
                 + ' autocomplete="off" />');
             var pwdFieldColn = _this.next();
             pwdFieldColn.show();
             _this.hide();

             pwdFieldColn.focus(function() {
                 pwdFieldColn.hide();
                 _this.show();
                 _this.focus();
             });

             _this.blur(function() {
                 if (_this.val() == '') {
                     pwdFieldColn.show();
                     _this.hide();
                 }
             });
         });
     }
 }
 // 右侧浮动 在线客服，官方微信， 返回顶部
 function goTopFun() {
     var _gt = $("#goTopBtn");
     _gt.bind("click", function() {
         $("html,body").animate({
             "scrollTop" : 0
         }, 500);
     })
     var goTop = function() {
         var sTop = $(document).scrollTop();
         (sTop > 120) ? _gt.fadeIn(50) : _gt.fadeOut(50);
     }
     $(window).bind("scroll", goTop);
 }

 /**
  * 执行登录
  *
  *
  */
 function dialogLogin(type) {

     var userName = $("[name='yyouxiang']").val();

     alert(userName)

     var pwd = $("[name='ypass']").val();


     $.ajax({

         url:"../raaac/querylogin",

         type:"post",

         data:{ "username":userName, "userpass":pwd},

         dataType:"text",

         success:function(flag){

             alert(flag)

             if(flag=="success"){

                 //alert("成功")
                 location.href="e-chu.jsp";

             }else if(flag=="erroruserpas"){

                 alert("账号或密码错误");

             }else if(flag=="error"){

                 alert("账号不存在")
             }
         },
         error:function(){

         }
     })
 }

 /**
  * 注册新用户
  */
 function dialogRegister(regType) {

    $(".e-l-jy").html('');
     var emailVal = $("#yyouxiang").val();
     if (emailVal == "") {// 验证邮箱是否为空
         $("#yyouxiang")
             .next()
             .html(
                 '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>请输入邮箱！</span>');
         return;
     }
     var reg = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_])+(.[a-zA-Z0-9_])+/; // 验证邮箱正则
     if (reg.test(emailVal) == false) {// 格式不正确
         $("#yyouxiang")
             .next()
             .html(
                 '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>请输入正确的邮箱！</span>');
         return;
     }
     ;

     var mobileVal = $("#yphone").val();
     if (mobileVal == "") {// 验证手机是否为空
         $("#yphone")
             .next()
             .html(
                 '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>请输入用户手机号！</span>');
         return;
     }
     var reg = /^(13[0-9]|15[012356789]|18[012356789]|14[57]|17[012356789])[0-9]{8}$/; // 验证手机正则
     if (reg.test(mobileVal) == false) {// 格式不正确
         $("#yphone")
             .next()
             .html(
                 '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>请输入正确的手机！</span>');
         return;
     }
     ;

     if ($("#ypass").val().trim() == "") {// 验证密码是否为空
         $("#ypass")
             .next()
             .html(
                 '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>请输入密码！</span>');
         return;
     }
     if ($("#ypass").val().length < 6) {// 验证密码长度
         $("#ypass")
             .next()
             .html(
                 '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>密码长度不能小于六位！</span>');
         return;
     }
     if (($("#ypass").val()).indexOf(" ") != -1) {
         $("#ypass")
             .next()
             .html(
                 '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>密码不能包含空格！</span>');
         return false;
     }
     if ($("#ypass2").val().trim() == "") {// 验证确认密码是否为空
         $("#ypass2")
                 .next()
                 .html(
                         '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>请输入确认密码！</span>');
         return;
     }
     if ($("#ypass2").val()!=$("#ypass").val()) {// 验证确认密码是否为空
         $("#ypass2")
                 .next()
                 .html(
                         '<span class="c-orange"><em class="icon16 u-a-cw">&nbsp;</em>两次密码必须一样！</span>');
         return;
     }
     $.ajax({
         url :"../raaac/register",
         data : {"username" : $("#yyouxiang").val(),"password" : $("#ypass").val(),"phoe" : $("#yphone").val()},
         type : "post",
         dataType : "text",
         cache : false,
         async : false,
         success : function(result) {
                 if(result=="ok"){
alert("注册成功，返回登录")
                 }else{
                     alert("用户名已被注册")
                 }

         },
         error : function(error) {
             $(".e-l-jy").html(
                 '<font class="fsize12 c-orange">系统繁忙，请稍后再操作</font>');
         }
     });
 }

 function locaLogin() {

 }

 function dialogSupport(dTitle, msg, index, url) {
     $("#tisbutt,.dClose,#qujiao").click();
     var oBg = $('<div class="bMask"></div>').appendTo($("body")), dialogEle = $(
         '<div class="dialogWrap" ><div class="dialog-ele"><h4 class="d-s-head pr"><a href="javascript:void(0)" title="关闭" class="dClose icon16 pa">&nbsp;</a><span class="d-s-head-txt">'
         + dTitle
         + '</span></h4><div class="of"><div id="dcWrap" class="mt20 mb20 ml20 mr20 "></div></div></div></div>')
         .appendTo($("body"));
     var dCont = [
         "<div  class='d-tips-1'><em class='pa d-t-icon-3'></em><p class='fsize14 c-666'>"
         + msg
         + "</p> <div  align='center'> <img    alt='支付宝扫一扫,即可支援蚂蚁！' width='300px' height='400px' src='/images/upload/pay/yushengjun_pay.jpg'></div><div class='tac mt30'><a href='javascript:void(0)' title='' style='width: 110px;' class='order-submit dClose'>我已支援</a><br><a href='javascript:void(0)' style='width: 110px;'  title='' class='order-submit dClose'>俺也穷</a></div></div>",
         "<div class='d-tips-2'><em class='pa d-t-icon-2'></em><p class='fsize14 c-666'>"
         + msg
         + "</p><div class='tac mt30'><a href='javascript:void(0)' title='' class='order-submit dClose'>确定</a></div></div>",
         "<div class='d-tips-3'><em class='pa d-t-icon-3'></em><p class='fsize14 c-666'>"
         + msg
         + "</p><div class='tac mt30'><a href='"
         + url
         + "' title='' class='order-submit'>我要支援</a><a href='javascript:void(0)' title='' class='goBack-btn ml10 dClose'>取消</a></div></div>",
         "<div class='d-tips-4><em class='pa d-t-icon-1'></em><p class='fsize14 c-666'>你选择使用工商银行网银进行在线支付，在你支付成功后我们将尽快发送给你购买的课程。祝你学习愉快！</p><div class='tac mt20'><a href='' title='' class='blue-btn mr10'>支付过程发生问题</a><a href='' title='' class='blue-btn ml10'>已成功完成支付</a></div><p class='tar mt20 c-666'>如有疑问请询问客服：400-6587-777</p></div>",
         "<div class='d-tips-5'><em class='pa d-t-icon-4'></em><p class='fsize14 c-666 disIb ml5'>恭喜，你已成功激活。现在你可以：</p><div class='tac mt20 mb10'><a href='' title='' class='blue-btn mr10'>登录网页</a><a href='' title='' class='blue-btn'>查看课程</a></div></div>",
         "<div class='d-tips-6'>" + msg + "</div>" ];
     $("#dcWrap").html(dCont[index]);
     var dTop = (parseInt(document.documentElement.clientHeight, 10) / 2)
         + (parseInt(document.documentElement.scrollTop
             || document.body.scrollTop, 10)), dH = dialogEle.height(), dW = dialogEle
         .width(), dHead = $(".dialog-ele>h4");
     dialogEle.css({
         "top" : (dTop - (dH / 2)),
         "margin-left" : -(dW / 2)
     });
     dHead.css({
         "width" : (dW - "12")
     }); // ie7下兼容性;
     $("#tisbutt,.dClose,#qujiao").bind("click", function() {
         dialogEle.remove();
         oBg.remove();
     });
     $(".dialogWrap").css("top", "-0px");
     $(".dialogWrap").css("margin-left", "-160px");
 }
 function payDialogSupport() {
     dialogSupport(
         "打赏该课程",
         "蚂蚁课堂网站的理念是，蚂蚁课堂网站所有教学视频全部免费，专为IT爱好者提供免费教学服务网站。我希望别人能够看完我的教学视频，能够得到技术上的帮助，少走弯路。能够找到一份满意工作，我就非常开心！感谢您对蚂蚁课堂网站的支持，希望您能够支持蚂蚁课堂越办越好，将蚂蚁课堂网站推荐给您的朋友、同学，让他们也能在蚂蚁课堂得到帮助。如果您觉得蚂蚁课堂比较好，也可以打赏蚂蚁课堂网站。为了给予蚂蚁课堂团队有更多动力制作视频教程,您可以打赏一下蚂蚁课堂,打开支付宝扫一扫图下二维码,即可支援蚂蚁课堂。",
         0, "http://www.baidu.com");
 }

 /**
  * 学过此课程的用户
  */
 function getCourseLearnedUser(courseId) {
     $.ajax({
         type : "POST",
         dataType : "json",
         url : baselocation
         + "/couserStudyHistory/ajax/courseLearnedUser/"
         + courseId,
         cache : true,
         async : false,
         success : function(result) {
             if (result.success == true) {
                 var resultList = result.entity;
                 if (resultList.length != 0) {
                     var useImg = "";
                     var userShowName = "";
                     var resultStr = '<section class="c-infor-tabTitle c-tab-title"><a href="" title="">学过此课的人（'
                         + result.message + '）</a></section>';
                     resultStr += '<section class="buy-cin-list">';
                     for (var i = 0; i < resultList.length; i++) {
                         useImg = resultList[i].userImg;
                         if (useImg == null || $.trim(useImg) == '') {
                             useImg = baselocation
                                 + '/static/inxweb/img/avatar-boy.gif';
                         } else {
                             useImg = imagesPath + useImg;
                         }
                         userShowName = resultList[i].userShowName;
                         if (userShowName == null
                             || $.trim(userShowName) == '') {
                             userShowName = resultList[i].userEmail;
                         }
                         resultStr = resultStr + '<span title="'
                             + userShowName + '"><img alt="" src="'
                             + useImg + '"><tt class="c-999">'
                             + userShowName + '</tt></span>';
                     }
                     resultStr += '</section>';
                     $("#courseLearnedUserDiv").parent().html(resultStr);
                 }
             }
         }
     });
 };

 function thirdPartyLogin(type) {

     var callbackurl = window.location.href;

     window.location.href = baselocation + "/loginQu/oauth/qq?callbackurl=" + callbackurl;
 }

 // 绑定已有账户
 function bundling() {
     var callbackurl = window.location.href;
     var userEmail = $("#userEmail").val();
     var password = $("#password").val();
     if (isEmpty(userEmail)) {
         $("#userEmailError").html('请填写注册时使用的邮箱号码或手机号码！');
         return;
     }
     if (isEmpty(password)) {
         $("#passwordError").html('请输入密码！');
         return;
     }
     $.ajax({
         url : baselocation + "/loginQu/bundingOld",
         data : {
             "account" : userEmail,
             "password" : password,
             "openId" : $("#openId").val()
         },
         type : "post",
         dataType : "json",
         cache : false,
         async : false,
         success : function(result) {
             if (result.success) {
                 dialog('绑定提示', '绑定成功!', 0);
                 window.location.href = result.message;
                 // window.setTimeout('$("#dcWrap
                 // div.d-tips-1").find("a").attr("onclick","window.location.href=\''+redirectUrl+'\';")',
                 // 1000);
             } else {
                 dialog('提示', result.message, 1);
             }
         }
     });
 }

 /**
  * 绑定注册新用户
  */
 function bundingRegister() {
     var emailVal = $("#regEmail").val();
     if (emailVal == "") {// 验证邮箱是否为空
         $("#regEmailError").html('请输入邮箱！');
         return;
     }
     if (checkEmail(emailVal) == false) {// 格式不正确
         $("#regEmailError").html('请输入正确的邮箱！');
         return;
     }
     if ($("#regPwd").val().trim() == "") {// 验证密码是否为空
         $("#regPwdError").html('请输入密码！');
         return;
     }
     if ($("#regPwd").val().length < 6) {// 验证密码长度
         $("#regPwdError").html('密码长度不能小于六位！');
         return;
     }
     if (($("#regPwd").val()).indexOf(" ") != -1) {
         $("#regPwdError").html('密码不能包含空格！');
         return false;
     }
     $.ajax({
         url : baselocation + "/loginQu/bundingNew",
         data : {
             "email" : $("#regEmail").val(),
             "password" : $("#regPwd").val(),
             "openId" : $("#openId").val(),
             "phone":$("#regPhone").val()
         },
         type : "post",
         dataType : "json",
         cache : false,
         async : false,
         success : function(result) {
             if (result.success) {
                 window.location.href = "/uc/index";
                 dialog('绑定提示', '绑定成功!', 0);
                 window.setTimeout(
                     '$("#dcWrap div.d-tips-1").find("a").attr("onclick","window.location.href=\''
                     + redirectUrl + '\';")', 1000);
             } else {
                 dialog('提示', result.message, 1);
             }
         },
         error : function(error) {
             dialog('绑定提示', "系统繁忙，请稍后再操作", 1);
         }
     });
 }
 // 检查邮箱
 function checkEmail(str) {
     var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/
     if (re.test(str)) {
         return true;
         console.log("正确");
     } else {
         return false;
         console.log("错误");
     }
 }

 /**
  * 手机用户个人中心canadaTrend跳转
  */
 function mobileHrefCheckLogin(hrefUrl) {
     if (isLogin()) {
         window.location.href = hrefUrl;
     } else {
         lrFun();
     }
 }
</script>
</html>
