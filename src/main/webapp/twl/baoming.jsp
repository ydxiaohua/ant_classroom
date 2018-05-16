<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <blockquote>
                姓名：<input class="span12" type="text" name="baousername" placeholder="姓名" />
            </blockquote>
            <blockquote>
                性别：<input class="span12" type="radio" name="baousersex" value="1"/>男
                        <input class="span12" type="radio" name="baousersex" value="2"/>女
            </blockquote>
            <blockquote>
                手机号：<input class="span12" type="text" name="baouserphone"  placeholder="手机号" />
            </blockquote>
            <blockquote>
                QQ号：<input class="span12" type="text" name="baouserqq"  placeholder="QQ号" />
            </blockquote>
            <blockquote>
                微信号：<input class="span12" type="text" name="baouserweixin"  placeholder="微信号" />
            </blockquote>
            <blockquote>
                最高学历：
                <select name="baousermaxxl">
                    <option>小学</option>
                    <option>初中</option>
                    <option>高中</option>
                    <option>本科</option>
                    <option>研究生</option>
                    <option>博士</option>
                    <option>海外留学</option>
                    <option>无业游民</option>
                    <option>其他</option>
                </select>
            </blockquote>
            <blockquote>
                毕业时间：<input class="span12" type="text" name="baousergraduatedate"  placeholder="毕业时间" />
            </blockquote>
            <blockquote>
                当前薪资：<input class="span12" type="text" name="presentpay"  placeholder="当前薪资" />
            </blockquote>
            <blockquote>
                当前状态：
                <select name="presentstatus">
                    <option>在读</option>
                    <option>在实习</option>
                    <option>刚毕业</option>
                    <option>有一年以内工作经验</option>
                    <option>有两年以内工作经验</option>
                    <option>有三年以内工作经验</option>
                    <option>其他</option>
                </select>
            </blockquote>
            <%--<blockquote>
                是否联系：<input class="span12" type="text" name="userpass"  placeholder="是否联系" />
            </blockquote>--%>
        </div>
    </div>
</div>
</body>
</html>