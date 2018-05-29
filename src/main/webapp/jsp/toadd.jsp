<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/05/21
  Time: 09:39
  To change this template use File | Settings | File Templates.
--%>
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
    <title>提问题-专注于分布式&微服务的在线教育【高薪必备】</title>
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

<!-- 新增表单 -->
    <form id="addForm1" style="display:none">
        <input type="hidden" name="questionid">
        <input type="hidden" name="peopleid">
        <input type="hidden" name="typeid">
        <input type="hidden" name="questiontypeid">
        <div class="form-group">
        <%--@declare id="exampleinputname2"--%><label for="exampleInputName2" >问题内容 :</label>&nbsp;&nbsp;&nbsp;
        <textarea  class="form-control" name="questioncontent"  placeholder="简洁明了，能引起思考和讨论的知识的内容."></textarea>
    </div><br><br>
        <div class="form-group">
            <label for="exampleInputName2">问题标题:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" class="form-control" name="questionname"  placeholder="问题标签不少于10个字.">
        </div><br><br>


    </form>

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
                <a href="http://www.itmayiedu.com/" title=""> <img src="http://www.itmayiedu.com/images/upload/websiteLogo/20161107/1478524048493.png" width="100%"
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
    <div class="bg-fa of">
        <section class="container">
            <section class="i-question">
                <div class="fl col-7">
                    <section class="mr30">
                        <header class="comm-title all-article-title">
                            <h2 class="fl tac">
                                <span class="c-333">提问题</span>
                            </h2>
                            <section class="c-tab-title">
                                <a href="javascript: void(0)">&nbsp;</a>
                            </section>
                        </header>
                        <!-- /提问题 开始 -->
                        <div class="q-c-list">
                            <dl>
                                <dt>
                                    <span class="c-999 fsize14">分类：</span>
                                </dt>
                                <dd class="of">
                                    <input type="radio" class="form-control" name="typeid1" value="1">课程问答
                                    <input type="radio" class="form-control" name="typeid1" value="2">学习分享
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="c-999 fsize14">标题：</span>
                                </dt>
                                <dd class="pr">
                                    <label class=""><input type="text" name="questionname1" placeholder="问题标题不少于16个字" onkeyup="checkTitleLength(this)" value=""></label>
                                    <aside class="q-c-jy"></aside>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="c-999 fsize14">内容：</span>
                                </dt>
                                <dd class="pr">
                                    <textarea name="questioncontent1" placeholder="简洁，明了，能引起思考和讨论的知识性的内容。" onkeyup="checkQuestionContent(this)"></textarea>
                                    <aside class="q-c-jy"></aside>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="c-999 fsize14">标签：</span>
                                </dt>
                                <dd class="pr">
                                    <input type='hidden' id='jishu' value="0"/>
                                    <input type='text' name="questiontypeid1" class="form-control" /><br><br>
                                    <span id="font1"></span>
                                    <aside class="q-c-jy"></aside>
                                </dd>
                            </dl>
                            <%--<dl>
                                <div class="form-group">
                                    <label for="exampleInputName2">标签:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type='hidden' id='jishu' value="0"/>
                                    <input type='text' name="questiontypeid" class="form-control" /><br><br>
                                    <span id="font1"></span>
                                </div>
                            </dl>--%>

                            <dl>
                                <dt>
                                    <span class="c-999 fsize14">&nbsp;</span>
                                </dt>
                                <dd>
                                    <section class="pt10">
                                        <a href="javascript:void(0)" onclick="tiwen()" title="" class="comm-btn c-btn-4 bg-orange">提 问</a>
                                    </section>
                                </dd>
                            </dl>
                        </div>
                        <!-- /提问题 结束 -->
                    </section>
                </div>
                <aside class="fl col-3">
                    <div class="mt30 pl10">
                        <section class="q-tip-pic col-3">
                            <img src="http://www.itmayiedu.com/static/inxweb/img/tipQe.png" width="100%" alt="亲，您要提问吧？">
                        </section>
                        <h5 class="pt10">
							<span class="fsize18 c-333 vam">亲，您要提问吧？<br>
							<br>要知道这些哦！
							</span>
                        </h5>
                        <div class="clear"></div>
                        <dl class="mt20">
                            <dt>
                                <h6>
                                    <strong class="fsize14 c-666">一、需要了解的事情：</strong>
                                </h6>
                            </dt>
                            <dd class="pl10">
                                <p class="c-999 mt10">1、您是想来吐槽的吧，没事，随便发吧。有人会跟你一起吐槽的。</p>
                                <p class="c-999 mt10">2、您是来解决问题？请先搜索是否已经有同类问题吧。这样您就省心少打字。</p>
                                <p class="c-999 mt10">3、没找到是么？就在发问题时精确描述你的问题，不要写与问题无关的内容哟。</p>
                                <p class="c-999 mt10">4、因酷问答更热衷于解达您想要的答案。能引起思考和讨论的知识性问题；</p>
                            </dd>
                        </dl>
                        <dl class="mt20">
                            <dt>
                                <h6>
                                    <strong class="fsize14 c-666">二、要注意的事情：</strong>
                                </h6>
                            </dt>
                            <dd class="pl10">
                                <p class="c-999 mt10">1、禁止发布求职、交易、推广、广告类与问答无关信息将一律清理。</p>
                                <p class="c-999 mt10">2、尽可能详细描述您的问题，如标题与内容不符，或与问答无关的信息将被关闭。</p>
                                <p class="c-999 mt10">3、问答刷屏用户一律冻结帐号。</p>
                            </dd>
                        </dl>
                    </div>
                </aside>
                <div class="clear"></div>
            </section>
        </section>
        <!-- /提问题 结束 -->
    </div>
    <script type="text/javascript" src="http://www.itmayiedu.com/static/inxweb/questions/questions_add.js"></script>
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
        function tiwen(){
            var a=$("[name='questioncontent1']").val();
            var b=$("[name='questionname1']").val();
            var c=$("[name='typeid1']").val();
            var d=$("[name='questiontypeid1']").val();

            $("[name='questioncontent']").val(a);
            $("[name='questionname']").val(b);
            $("[name='typeid']").val(c);
            $("[name='questiontypeid']").val(d);
            $("[name='peopleid']").val(1);
            $.ajax({
                type:"post",
                url:"<%=request.getContextPath()%>/kcmuser/addWenti",
                data:$("#addForm1").serialize(),
                dataType:"text",//返回数据的类型
                success:function(){
                    alert("成功")
                    location.reload(true);
                }
            })
        }
        $(function (){
            $.ajax({
                url:"<%=request.getContextPath()%>/kcmuser/queryWenType",//请求地址
                type:"post",//设置请求方式
                dataType:"json",//返回数据的类型
                async:false,
                success:function (WenType){
                    var checkedbox = "";
                    $.each(WenType,function(){
                        checkedbox += " <a title='"+this.questionname+"' data-id='"+this.questionid+"' class='list-tag' href='javascript:getTypeName(\""+this.questionname+" \")' >"+this.questionname+"</a>";
                    })
                    $("#font1").html(checkedbox);
                },
                error:function (){
                    alert("程序出错");
                }
            })
        })

        function getTypeName(questionname){
            if(questionname != null && questionname != ""){
                // 获取text文本中的值
                var sdf = $("[name='questiontypeid1']").val();
                //在上面定义一个隐藏域，count 计数
                var count =$("#jishu").val();
                var dgfgf = sdf.substring(0,sdf.length-1);
                var temp = dgfgf.split(" ");
                if(count <= 3){
                    for(var i=0;i<temp.length;i++){
                        ++count;
                    }
                    sdf += questionname;
                    $("#jishu").val(count);
                    $("[name='questiontypeid1']").val(sdf);
                    return true;
                }else{
                    alert("问题类型最多能选3个");
                    return false;
                }
            }
        }
    </script>
<!-- 统计代码 -->
</body>
</html>
