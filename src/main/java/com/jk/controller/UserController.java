package com.jk.controller;


import com.jk.model.Menu;
import com.jk.model.People;
import com.jk.model.Role;
import com.jk.model.User;
import com.jk.service.UserService;
import com.sun.mail.util.MailSSLSocketFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.security.GeneralSecurityException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Controller
@RequestMapping("/user")
@Component
public class UserController {


    @Autowired
    private MongoTemplate mongoTemplate;

    /**
     * 开启多线程
     */
    public static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    @Autowired
    private org.springframework.data.redis.core.StringRedisTemplate StringRedisTemplate;


    @Resource
    private UserService userService;

    //用户登陆
    @ResponseBody
    @RequestMapping("/loginUser")
    public String loginUser(User user,HttpSession session){
        List<User> list1=userService.queryUserName(user);
        if(list1.size()==1){
            List<User> list2=userService.queryUserPass(user);
            if(list2.size()==1){
                session.setAttribute("dbuser",list2.get(0));
                return "OK";
            }else{
                return "passNo";
            }
        }else{
            return "nameNo";
        }
    }
    //查询树
    @ResponseBody
    @RequestMapping("/queryMenu")
    public List queryMenu(HttpSession session){
        User user= (User) session.getAttribute("dbuser");
        System.out.println(user);
        if(user!=null){

            Integer userid =  user.getUserid();

            List<Menu> list=userService.queryMenu(userid);
            return list;
        }
            return null;

    }
    //查询所有用户
    @ResponseBody
    @RequestMapping("/queryUser")
    public List<User> queryUser(){
        List<User> list=userService.queryUser();


        System.out.println("AAA"+list);

        return list;
    }
    //查询所有角色
    @ResponseBody
    @RequestMapping("/queryRole")
    public List<Role> queryRole(){
        List<Role> list=userService.queryRole();
        return list;
    }
    //5.删除用户
    @RequestMapping("/deleteUser")
    @ResponseBody
    public  String deleteUser(Integer userid){

        userService.deleteUser(userid);

        return "1";

    }
    //6.添加用户
    @RequestMapping("/addUser")
    @ResponseBody
    public  String addUser(User user){

        userService.addUser(user);

        return "1";

    }

    //7.查找一条数据
    @RequestMapping("/huixianUser")
    public  String huixianUser(Integer userid,HttpSession session){
        //ValueOperations opsForValue = redisTemplate.opsForValue();
        User dbuser =   userService.huixianUser(userid);
        session.setAttribute("dbuser",dbuser);
        return "sl/updateuser.jsp";

    }
    //修改的方法
    @RequestMapping("/updateUser")
    @ResponseBody
    public  String updateUser(User user){

        userService.updateUser(user);
        return "1";

    }
    //跳页面
    @RequestMapping("/tiaouserrole")
    public String tiaouserrole(Integer userid,HttpSession session){
        session.setAttribute("userrole",userid);
        return "sl/userrole.jsp";
    }
    //用户角色回显
    @RequestMapping("/selectUserRole")
    @ResponseBody
    public  List selectUserRole(Integer userid,HttpSession session){
        //ValueOperations opsForValue = redisTemplate.opsForValue();
        List list=   userService.selectUserRole(userid);

        return list;

    }
    //设置角色
    @RequestMapping("/SetupRole")
    @ResponseBody
    public  String SetupRole(String ids,Integer userid){

        userService.SetupRole(ids,userid);

        return "1";

    }
    //5.删除用户
    @RequestMapping("/deleteRole")
    @ResponseBody
    public  String deleteRole(Integer roleid){

        userService.deleteRole(roleid);

        return "1";

    }
    //6.添加用户
    @RequestMapping("/addRole")
    @ResponseBody
    public  String addRole(Role role){

        userService.addRole(role);

        return "1";

    }

    //7.查找一条数据
    @RequestMapping("/huixianRole")
    public  String huixianRole(Integer roleid,HttpSession session){
        //ValueOperations opsForValue = redisTemplate.opsForValue();
        Role dbrole =   userService.huixianRole(roleid);
        session.setAttribute("dbrole",dbrole);
        return "sl/updaterole.jsp";

    }
    //修改的方法
    @RequestMapping("/updateRole")
    @ResponseBody
    public  String updateRole(Role role){

        userService.updateRole(role);
        return "1";

    }
    //设置权限
    @RequestMapping("/tiaorolemenu")
    public String tiaorolemenu(Integer roleid, HttpSession session){
        session.setAttribute("roleid",roleid);
        return "sl/rolemenu.jsp";

    }
    @RequestMapping("/selectRoleMenu")
    @ResponseBody
    public List selectRoleMenu(Integer rid){
        List list=userService.selectRoleMenu(rid);
        return list;
    }
    //保存权限
    @RequestMapping("/addRoleMenu")
    @ResponseBody
    public String addRoleMenu(String idsStr,Integer roleid){
        userService.addRoleMenu(roleid,idsStr);
        return "1";
    }


    //    每分钟启动
    /*每天0点执行  ：0 0 0 1-2 * ? */
    /*@Scheduled(cron = "0 5 0 0 0 0 ")*/
    /*@Scheduled(cron = "0 0/1 * * * ?")*/
    /*@Scheduled(initialDelay=10000, fixedDelay=20000)*/
    @Scheduled(cron = "0 0 0 1-2 * ?")
    public void timerToNow() throws ParseException, GeneralSecurityException {
       /* SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date a;
        Date b=new Date();
        int c=0;

        //提交时间
        a = sdf.parse("2015-10-11");

        c= (int) ((b.getTime()-a.getTime())/(1000*3600*24));

        System.out.println(c);*/


        System.out.println("定时器开启");
        SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd");
        Date date=new Date();
        Date nowdate=new Date();
        List<People> list= userService.queryPeople();
        for(int i=0;i<=list.size();i++){
            int time = (int) ((sim.parse(list.get(i).getVipendtime()).getTime()-nowdate.getTime())/(1000*3600*24));
            System.out.println(time);
            if(time<=30){
                String emilname=list.get(i).getEmail();
                System.out.println(emilname);
                // 收件人电子邮箱
                String to = emilname;

                // 发件人电子邮箱
                String from = "1362466746@qq.com";

                // 指定发送邮件的主机为 smtp.qq.com
                String host = "smtp.qq.com";  //QQ 邮件服务器

                // 获取系统属性
                Properties properties = System.getProperties();

                // 设置邮件服务器
                properties.setProperty("mail.smtp.host", host);

                properties.put("mail.smtp.auth", "true");
                MailSSLSocketFactory sf = new MailSSLSocketFactory();
                sf.setTrustAllHosts(true);
                properties.put("mail.smtp.ssl.enable", "true");
                properties.put("mail.smtp.ssl.socketFactory", sf);
                // 获取默认session对象
                javax.mail.Session session = javax.mail.Session.getDefaultInstance(properties,new javax.mail.Authenticator(){
                    public javax.mail.PasswordAuthentication getPasswordAuthentication()
                    {
                        return new javax.mail.PasswordAuthentication("1362466746@qq.com", "ycmakhyuklbuiajh"); //发件人邮件用户名、密码
                    }
                });

                try{
                    // 创建默认的 MimeMessage 对象
                    MimeMessage message = new MimeMessage(session);
                    // Set From: 头部头字段
                    message.setFrom(new InternetAddress(from));
                    // Set To: 头部头字段
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                    // Set Subject: 头部头字段
                    message.setSubject("尊敬的用户你好");
                    // 设置消息体
                    message.setText("你的会员离过期时间还有一个月！");
                    // 发送消息
                    javax.mail.Transport.send(message);
                    System.out.println("Sent message successfully....from runoob.com");
                }catch (MessagingException mex) {
                    mex.printStackTrace();
                }
            }

        }
    }


}
