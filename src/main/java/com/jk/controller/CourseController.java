


package com.jk.controller;

import com.google.gson.JsonObject;
import com.jk.model.*;
import com.jk.model.Class;
import com.jk.service.CourseService;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.params.MapSolrParams;
import org.apache.solr.common.params.SolrParams;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.apache.solr.common.SolrDocument;
import org.springframework.web.multipart.MultipartFile;


import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
@RequestMapping("/CourseController")
public class CourseController {

    @Autowired
    CourseService courseService;

   /*@Autowired
    private AmqpTemplate amqpTemplate;*/

    @Autowired
    private MongoTemplate mongoTemplate;


    @Autowired
    private SolrClient client;

    //讲师查询
    @RequestMapping(value = "/queryteacher")
    @ResponseBody
    public List<Teacher> queryteacher() {
        List<Teacher> list = courseService.queryteacher();

        return list;
    }

    //新增讲师
    @RequestMapping("/addTeacher")
    @ResponseBody
    public String addTeacher(Teacher teacher) {

        teacher.setTeacherstate(1);
        courseService.addTeacher(teacher);

        return "addsuccess";
    }

    //删除讲师
    @RequestMapping("/deleteteacher")
    @ResponseBody
    public String deleteteacher(String teacherid) {

        courseService.deleteteacher(teacherid);

        return "deletesuccess";
    }


    //回显
    @RequestMapping("/queryteacherid")
    public String queryteacherid(String teacherid, HttpServletRequest request) {

        Teacher list = courseService.queryteacherid(teacherid);

        request.getSession().setAttribute("list", list);

        return "/zx/updatecourse.jsp";

    }


    //修改讲师
    @RequestMapping("/updateteacher")
    @ResponseBody
    public String updateteacher(Teacher teacher) {

        courseService.updateteacher(teacher);

        return "1";
    }


    //大纲查询
    @RequestMapping(value = "/querydagang")
    @ResponseBody
    public List<Teacher> querydagang() {
        List<Teacher> list = courseService.querydagang();

        return list;
    }



    //新增大纲
    @RequestMapping("/adddagang")
    @ResponseBody
    public  String adddagang(DaGang dagang){
        dagang.setUid(1);
        courseService.adddagang(dagang);

        return "addsuccess";
    }

    //删除大纲
    @RequestMapping("/deletedagang")
    @ResponseBody
    public  String deletedagang(String dgid){

        courseService.deletedagang(dgid);

        return "deletesuccess";
    }



    //大纲回显
    @RequestMapping("/querydgid")
    public  String   querydgid(String dgid,HttpServletRequest request,String coursename,String classid,String minprice,String maxprice,String ynvip){

        DaGang  list = courseService.querydgid(dgid);
        List<Course> course= courseService.querycourse(coursename,classid,minprice,maxprice,ynvip);
        request.getSession().setAttribute("list",list);
        request.getSession().setAttribute("course",course);

        return  "/zx/updatedagang.jsp";

    }

    //修改大纲
    @RequestMapping("/updatedagang")
    @ResponseBody
    public  String updatedagang(DaGang dagang){

        courseService.updatedagang(dagang);

        return "1";
    }






    //课程表查询
    @RequestMapping(value = "/querycourse")
    @ResponseBody
    public List<Course> querycourse(String coursename,String classid,String minprice,String maxprice,String ynvip) {

        List<Course> list= courseService.querycourse(coursename,classid,minprice,maxprice,ynvip);

        return list;
    }


    @RequestMapping(value = "/queryteachertj")
    @ResponseBody
    public List<Course> queryteachertj(String teacherid) {

        List<Course> list= courseService.queryteachertj(teacherid);

        return list;
    }


    @RequestMapping(value = "/querybanxing")
    @ResponseBody
    public List<Course> querybanxing(String classid) {

        List<Course> list= courseService.querybanxing(classid);

        return list;
    }

    @RequestMapping(value = "/mianfei")
    @ResponseBody
    public List<Course> mianfei() {

        List<Course> list= courseService.mianfei();

        return list;
    }
    @RequestMapping(value = "/huiyuan")
    @ResponseBody
    public List<Course> huiyuan() {

        List<Course> list= courseService.huiyuan();

        return list;
    }
    @RequestMapping(value = "/querycoursezuixing")
    @ResponseBody
    public List<Course> querycoursezuixing() {

        List<Course> list= courseService.querycoursezuixing();

        return list;
    }
    @RequestMapping(value = "/querycourseguanzhudu")
    @ResponseBody
    public List<Course> querycourseguanzhudu() {

        List<Course> list= courseService.querycourseguanzhudu();

        return list;
    }


    @RequestMapping(value = "/queryclass")
    @ResponseBody
    public List<Class> queryclass() {

        List<Class> list= courseService.queryclass();

        return list;
    }

    public static void main(String[] args) {

    }

    //新增课程表
    @RequestMapping("/addcourse")
    @ResponseBody
    public  void addcourse(Course  course){

        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        course.setCoursedate(sdf.format(new Date()));

        courseService.addcourse(course);
    }


    //删除大纲
    @RequestMapping("/deletecourse")
    @ResponseBody
    public  String deletecourse(String courseid){

        courseService.deletecourse(courseid);

        return "deletesuccess";
    }
    @RequestMapping("/updatetuig")
    @ResponseBody
    public  String updatetuig(String courseid){

        courseService.updatetuig(courseid);

        return "success";
    }




    @RequestMapping("/querycourseid")
    public String querycourseid(String courseid, HttpServletRequest request) {

        Course list = courseService.querycourseid(courseid);

        List<Teacher> teacher = courseService.queryteacher();

        List<Class> clas = courseService.queryclass();

        request.getSession().setAttribute("list", list);

        request.getSession().setAttribute("teacher", teacher);

        request.getSession().setAttribute("clas", clas);

        return "/zx/courseupdate.jsp";

    }


    @RequestMapping("/updatecourse")
    @ResponseBody
    public String updatecourse(Course course) {

        courseService.updatecourse(course);

        return "1";
    }

    @RequestMapping(value = "/queryvideo")
    @ResponseBody
    public List<Video> queryvideo() {

        List<Video> list = courseService.queryvideo();

        return list;
    }





   /* queryshenhe*/

    @RequestMapping(value = "/queryshenhe")
    @ResponseBody
    public List<Teacher> queryshenhe() {

        List<Teacher> list = courseService.queryshenhe();

        return list;
    }

    /*updatetongguo*/

    @RequestMapping("/updatetongguo")
    @ResponseBody
    public String updatetongguo(String teacherid) throws MessagingException {

        courseService.updatetongguo(teacherid);

        List<Teacher> list = courseService.queryshenheteacherid(teacherid);

        /*amqpTemplate.convertAndSend("jj", list.get(0).getTeachernote());*/
        String youxian = list.get(0).getTeachernote();

        System.out.println(list.get(0).getTeachernote());

        String from = "hhhrongcheng@163.com";


        Properties prop = new Properties();

        prop.setProperty("mail.host", "smtp.163.com");

        prop.setProperty("mail.smtp.auth", "true");

        Authenticator auth = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("hhhrongcheng@163.com", "2528737260rong");
            }
        };
        Session session = Session.getInstance(prop, auth);

        MimeMessage msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(from));

        //如abc@163.com
        msg.addRecipients(Message.RecipientType.CC, InternetAddress.parse(from));//发送的内容给自己也发一封

        msg.addRecipients(Message.RecipientType.TO, InternetAddress.parse(youxian));

        msg.setSubject("通知邮件");

        msg.setContent("审批成功*-*", "text/html;charset=utf-8");

        Transport.send(msg);

        return "deletesuccess";
    }


    //新增视频
    @RequestMapping("/addvideo")
    @ResponseBody
    public String addvideo(Video video) {

        video.setUserid(1);

        courseService.addvideo(video);

        return "addsuccess";
    }


/*@RequestMapping(value = "/addPicture", method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
    public  Object addPicture(@RequestParam("file") MultipartFile[] files){
        String greatBeauty = AliyunOSSClientUtil.GreatBeauty(files[0], files[0].getOriginalFilename());
        Map map = new HashMap(1);
        map.put("a",greatBeauty);
        return map;
    }*/




    @RequestMapping("/search")
    @ResponseBody
    public List search(String name){
        try {

            SolrQuery sq = new SolrQuery();

            Map<String,String> map = new HashMap<String,String>();

            map.put("wt","json");

            SolrParams params1 = new MapSolrParams(map);

            sq.add(params1);
            //查询条件, 这里的 q 对应 下面图片标红的地方

            sq.set("q","classname:'"+name+"'and teachername:'"+name+"'and coursename:'"+name+"'" );

            //高亮
            //打开开关
            sq.setHighlight(true);

            //指定高亮域
            sq.addHighlightField("coursename");
            //设置前缀
            sq.setHighlightSimplePre("<span style='color:red'>");

            //设置后缀
            sq.setHighlightSimplePost("</span>");

            QueryResponse queryResponse = client.query(sq);

            SolrDocumentList results = queryResponse.getResults();

            long numFound = results.getNumFound();

            Map<String, Map<String, List<String>>> highlight = queryResponse.getHighlighting();

            List  list=new ArrayList<>();

            for (SolrDocument result : results) {

                 list.add(result);

            }
            System.out.println(list.toString());


            return list;
        } catch (Exception e) {

            e.printStackTrace();

        }
        return null;

    }


}







