<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/05/23
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no,minimal-ui">
    <title>springboot怎么实现上传文件？- 蚂蚁课堂</title>
    <meta name="author" content="http://www.itmayiedu.com" />
    <meta name="keywords" content="IT程序员技术交流与问答,技术问答,蚂蚁课堂社区,编程技术问答,技术问答平台,IT技术社区" />
    <meta name="description" content="怎么实现上传文件到项目指定的目录下，并且可以从中下载下来" />
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
                    <section class="mr30 pt10">
                        <section class="path-wrap txtOf hLh30">
                            <a href="http://www.itmayiedu.com" title="" class="c-999 fsize14">首页</a>
                            \
                            <a href="http://www.itmayiedu.com/questions/list" title="" class="c-999 fsize14">${co.typeid}</a>
                            \ <span class="c-333 fsize14">${co.questioncontent}</span>
                        </section>
                        <!-- /问题详情 开始 -->
                        <div>
                            <section class="q-infor-box">
                                <div class="pr">
                                    <aside class="q-head-pic">
                                        <img src="http://www.itmayiedu.com/static/inxweb/img/avatar-boy.gif" alt="">
                                        <p class="hLh30 txtOf"></p>
                                    </aside>
                                    <section class="q-txt-box">
                                        <aside class="q-share">
                                            <span class="fl" title="分享到："><em class="icon14 q-share-icon mt5">&nbsp;</em></span>
                                            <div class="fl ml10" style="width: 95px;">
                                                <div class="bdsharebuttonbox bdshare-button-style0-16" id="bdshare" data-bd-bind="1443601302583" style="right: -160px;">
                                                    <a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
                                                    <a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a>
                                                    <a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a>
                                                    <a title="分享到腾讯微博" href="#" class="bds_tqq" data-cmd="tqq"></a>
                                                </div>
                                                <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                                            </div>
                                            <div class="clear"></div>
                                        </aside>
                                        <h3 class="hLh30 txtOf">
                                            <em class="icon16 q-tw">&nbsp;</em> <span class="c-blue fsize14">${co.peoplename}</span> <span class="c-999 fsize14"> 学习分享</span>
                                        </h3>
                                    </section>
                                    <section class="ml50 pl10">
                                        <div class="mt20">
                                            <h3 class="hLh30 txtOf">
                                                <span class="fsize18 c-333 vam">${co.questioncontent}</span>
                                            </h3>
                                        </div>
                                        <div class="i-q-txt mt15">

                                            <span class="c-999 f-fA">${co.questionname}</span>

                                        </div>
                                        <div class="mt20 pr10">
                                            <section class="fr">
                                                <span> <a href="#i-art-comment" title="评论" class="noter-dy vam">
                                                                <em class="icon18">&nbsp;</em>(<span id="questionsReplyCount">1</span>)
                                                        </a> <tt class="noter-zan vam ml10 f-fM" title="赞一下" onclick="addPraise(85,1,this)">
                                                                <em class="icon18">&nbsp;</em>(<span>0</span>)
                                                        </tt>
                                                </span>
                                            </section>
                                            <span class="c-ccc fl vam">${co.questiondate}</span>
                                            <section class="fl ml20 pt10">
                                                <div class="taglist clearfix">
                                                    <a title="SpringBoot" data-id="59" onclick="submitForm('59','questionsTagId')" class="list-tag" href="javascript:;">${co.questiontypeid}</a>
                                                </div>
                                            </section>
                                            <div class="clear"></div>
                                        </div>
                                    </section>
                                </div>
<span id="questionsCommentSpan11">

        <div class="q-i-noter-box">
	  <section class="q-i-reply">
		<h6 class="c-c-content c-infor-title">
			<span>问答列表</span>
		</h6>

                <form id="huiform">
                    <input type="hidden" name="resultid">
                    <input type="hidden" name="questionid">
                    <input type="hidden" name="resultcontent">
                    <input type="hidden" name="userid">
                    <input type="hidden" name="resultdate">
                    <input type="hidden" name="beizancode">
                </form>
		<section class="lh-bj-list pr mt20">
				<ul>
					<li class="unBr">
						<aside class="noter-pic">
							<img src="http://www.itmayiedu.com/static/inxweb/img/avatar-boy.gif" alt="" width="50" height="50">
								</aside>
						<div class="of">
							<section class="n-reply-wrap">
								<fieldset>
									<textarea placeholder="输入您要回复的文字" name="content" onkeyup="$(this).parent().next().find('tt').html('');"></textarea>
								</fieldset>
								<p class="of mt5 tar pl10 pr10">
									<span class="fl"><tt class="c-red"></tt></span><u class="hand mr10 qxBtn c-999" style="display: none;">取消</u>
									<a class="lh-reply-btn" title="回复" href="javascript:huifu()">回复</a>
								</p>
							</section>
						</div>
					</li>
				</ul>
			</section>
		</section>
	<div class="q-n-r-box">
			<section class="question-list lh-bj-list pr">
				<ul class="pr10" id="huifu"></ul>
			</section>
		</div>
               </div>
                                </span>
                            </section>
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
    <script>
        var questionsId="85";
    </script>
    <script type="text/javascript" src="http://www.itmayiedu.com/static/inxweb/questions/questions_info.js"></script>
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

            var myerror = '2895918482@qq.com';
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
            $(function(){
                $.ajax({
                    url:"<%=request.getContextPath()%>/kcmuser/queryhuifu",//请求地址
                    type:"post",//设置请求方式
                    dataType:"json",//返回数据的类型
                    data:{"questionid":${co.questionid}},
                    async:false,
                    success:function (data){
                        var bb="";
                        $.each(data,function(){
                            bb+="<li>\n" +
                                "\t\t\t\t\t\t\t<aside class=\"noter-pic\">\n" +
                                "\t\t\t\t\t\t\t\t<img src=\"\" alt=\"无\" width=\"50\" height=\"50\">\n" +
                                "\t\t\t\t\t\t\t\t\t</aside>\n" +
                                "\t\t\t\t\t\t\t<div class=\"of hLh20\">\n" +
                                "\t\t\t\t\t\t\t\t<span class=\"fl\"> <font class=\"fsize12 c-blue\"> "+this.peoplename+"</font> <font class=\"fsize12 c-999 ml5\">回复：</font></span>\n" +
                                "\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t<div class=\"noter-txt mt5\">\n" +
                                "\t\t\t\t\t\t\t\t<p>"+this.resultcontent+"</p>\n" +
                                "\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t<div class=\"of mt5\">\n" +
                                "\t\t\t\t\t\t\t\t<span class=\"fr\"><font class=\"fsize12 c-999 ml5\"> <!-- <a href=\"\" class=\"c-blue mr10\">删除</a> --> "+this.resultdate+"</font></span> <span class=\"fl\"> <a href=\"javascript: void(0)\" title=\"回答\" class=\"noter-dy vam\" onclick=\"getCommentById(this,125)\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t<em class=\"icon18\">&nbsp;</em>(<span></span>)\n" +
                                "\t\t\t\t\t\t\t\t\t</a> <tt class=\"noter-zan vam ml10\" title=\"赞一下\" onclick=\"zan("+this.resultid+")\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t<em class=\"icon18\">&nbsp;</em><input type='text' width='5' height='5' id='zan1' value='0'/>\n" +
                                "\t\t\t\t\t\t\t\t\t</tt>\n" +
                                "\t\t\t\t\t\t\t\t</span>\n" +
                                "\t\t\t\t\t\t\t</div>\n" +
                                "\n" +
                                "\t\t\t\t\t\t\t<div class=\"n-reply\" style=\"display: none;padding-left: 0;\">\n" +
                                "\t\t\t\t\t\t\t\t<div>\n" +
                                "\t\t\t\t\t\t\t\t\t<section class=\"n-reply-wrap mt10\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t<fieldset>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t<textarea name=\"\" onkeyup=\"$(this).parent().next().find('tt').html('');\"></textarea>\n" +
                                "\t\t\t\t\t\t\t\t\t\t</fieldset>\n" +
                                "\t\t\t\t\t\t\t\t\t\t<p class=\"of mt5 tar pl10 pr10\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t<span class=\"fl\"><tt class=\"c-red\"></tt></span><u class=\"hand mr10 qxBtn c-999\">取消</u>\n" +
                                "\t\t\t\t\t\t\t\t\t\t\t<a href=\"javascript: void(0)\" title=\"回复\" class=\"lh-reply-btn\" onclick=\"addReply(this)\">回复</a>\n" +
                                "\t\t\t\t\t\t\t\t\t\t</p>\n" +
                                "\t\t\t\t\t\t\t\t\t</section>\n" +
                                "\t\t\t\t\t\t\t\t\t<input type=\"hidden\" id=\"\" name=\"\" value=\"125\">\n" +
                                "\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t<div class=\"mt10 pl10 pr10\">\n" +
                                "\t\t\t\t\t\t\t\t\t<dl class=\"n-reply-list\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t<!-- 当前问答回复的所有评论在这里 -->\n" +
                                "\t\t\t\t\t\t\t\t\t</dl>\n" +
                                "\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t</div> <!-- /回复盒子 -->\n" +
                                "\t\t\t\t\t\t</li>";
                        })
                        $("#huifu").html(bb);
                    },
                    error:function (){
                        alert("程序出错");
                    }
                })
            })

            function huifu(){
                var a=$("[name='content']").val();
                $("[name='resultcontent']").val(a);
                $("[name='questionid']").val(${co.questionid})
                $("[name='beizancode']").val(22)
                $.ajax({
                    type:"post",
                    url:"<%=request.getContextPath()%>/kcmuser/adddaan",
                    data:$("#huiform").serialize(),
                    success:function(){
                        location.reload(true);
                    }
                })
           }
    </script>

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
                var checkedbox = "<a onclick='submitForm('0','questionsTagId')' href='javascript:;' class='list-tag' data-id='0' title='JAVA'>全部</a>";
                $.each(WenType,function(){
                    checkedbox += " <a title='"+this.questionname+"' data-id='"+this.questionid+"' class='list-tag' href='javascript:submitForm1(\""+this.questionname+" \")' >"+this.questionname+"</a>";
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
    function tiao(questionid){
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/updatenum",
            type:"post",
            data:{"questionid":questionid},
            success:function(result){
                location.href="<%=request.getContextPath()%>/kcmuser/tohuifu?questionid="+questionid;
            }
        })

    }

    function zan(resultid){
        alert(resultid);
        $.ajax({
            url:"<%=request.getContextPath()%>/kcmuser/updatezan",//请求地址
            data:{"resultid":resultid},
            type:"post",//设置请求方式
            dataType:"text",//返回数据的类型
            success:function (data){
              var a= $("#zan1").val(1);
              alert(a)
               alert("点赞成功");
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

