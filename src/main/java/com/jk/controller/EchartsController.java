package com.jk.controller;

import com.jk.model.Liu;
import com.jk.model.People;
import com.jk.model.UpLoadUtil;
import com.jk.model.Xia;
import com.jk.service.EchartsService;
import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("raaac")
public class EchartsController {
    @Autowired
    private MongoTemplate mongoTemplate;

    @Resource
    private EchartsService echartsService;

    @ResponseBody
    @RequestMapping("echarts")
    private Map<String, Object> echarts(){

        Map<String, Object> map=echartsService.echarts();
        return  map;
    }
    @ResponseBody
    @RequestMapping("xiaz")
    public void loginuser(){
        Liu liu  =new Liu();
        //我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //获取String类型的时间
        String createdate = sdf.format(date);  //mongodb查询条件
        //查询mongodb是否有这一天数据访问
        Query query = new Query(Criteria.where("syllabusid").is(createdate));
        List<Liu> liu2= mongoTemplate.find(query, Liu.class);
        if (liu2.size()==0){
            liu.setSyllabusid(createdate);
            liu.setShulian(1);
            liu.setType(0);
            mongoTemplate.save(liu);
        }else{
            Integer  shulian=0;
         for (int i = 0; i < liu2.size(); i++){
             shulian=liu2.get(0).getShulian();
             shulian++;
            }
            Query query2 = new Query(Criteria.where("syllabusid").is(createdate));
            Update update = new Update().set("shulian",shulian);
            mongoTemplate.updateFirst(query2,update,Liu.class);
        }
    }
    @ResponseBody
    @RequestMapping("xiaz2")
    public void loginuser2(){
        Liu liu  =new Liu();
            liu.setSyllabusid("2018-05-20");
            liu.setShulian(1);
            liu.setType(0);
            mongoTemplate.save(liu);
    }

    @Scheduled(cron ="0 0 3 * * ?")
    public   void   mongodblist(){
        Liu liu  =new Liu();
        Query query = new Query();
        List<Liu> liu2= mongoTemplate.find(query, Liu.class);
        for (int i = 0; i < liu2.size(); i++){
            if (liu2.get(i).getType()==0){
                liu.setShulian(liu2.get(i).getShulian());
                liu.setSyllabusid(liu2.get(i).getSyllabusid());
                echartsService.addliulist(liu);
            }
        }
        Query query2 = new Query(Criteria.where("type").is(0));
        Update update = new Update().set("type",1);
        mongoTemplate.updateFirst(query2,update,Liu.class);
    }
    @Scheduled(fixedRate = 6000)
    public void autosync() {
        System.out.print(".");
    }

    @ResponseBody
    @RequestMapping("chaxxia")
    public  Map<String , Object>  chaxliu(){
        Map<String , Object> map=new HashMap<String, Object>();
        List<Liu> liu=echartsService.chaxliu();
        Integer  ind=liu.size();
        String[]    setarr=new   String[ind];
        Integer[]   intarr=new   Integer[ind];
        for(int i=0;i<liu.size();i++){
            Liu x=liu.get(i);
            String  a=x.getSyllabusid();
            System.out.println(a);
            setarr[i]=a;
            Integer  b=x.getShulian();
            intarr[i]=b;
        }
        map.put("succ", true);
        map.put("leg", "['销量']");
        map.put("xax", setarr);
        map.put("ser", intarr);
        return   map;
    }
    @ResponseBody
    @RequestMapping("zhexian")
    public  Map<String , Object>  zhexian(String  name){
        Map<String , Object> map=new HashMap<String, Object>();
        List<Liu> liu=echartsService.chaxliuyue(name);
            Integer  ind=liu.size();
            String[]    setarr=new   String[ind];
            Integer[]   intarr=new   Integer[ind];
            for (int i = 0; i < liu.size(); i++) {
                Liu x=liu.get(i);
                String  a=x.getSyllabusid();
                setarr[i]=a;
                Integer  b=x.getShulian();
                intarr[i]=b;
              }
            map.put("succ", true);
            map.put("leg", "['销量']");
            map.put("xax", setarr);
            map.put("ser", intarr);
        System.out.println(map);
        System.out.println(liu);
        return map;
    }
    @ResponseBody
    @RequestMapping("chaxxiaxia")
    public  Map<String , Object>  chaxxiaxia(){
        Map<String , Object> map=new HashMap<String, Object>();
        List<Xia> liu=echartsService.chaxxiaxia();
        Integer  ind=liu.size();
        String[]    setarr=new   String[ind];
        Integer[]   intarr=new   Integer[ind];
        for(int i=0;i<liu.size();i++){
            Xia x=liu.get(i);
            String  a=x.getXiadata();
            System.out.println(a);
            setarr[i]=a;
            Integer  b=x.getShulian();
            intarr[i]=b;
        }
        map.put("succ", true);
        map.put("leg", "['下载量']");
        map.put("xax", setarr);
        map.put("ser", intarr);
        return   map;
    }
    @ResponseBody
    @RequestMapping("zhexianxia")
    public  Map<String , Object>  zhexianxia(String  name){
        Map<String , Object> map=new HashMap<String, Object>();
        List<Xia> liu=echartsService.zhexianxia(name);
        Integer  ind=liu.size();
        String[]    setarr=new   String[ind];
        Integer[]   intarr=new   Integer[ind];
        for (int i = 0; i < liu.size(); i++) {
            Xia x=liu.get(i);
            String  a=x.getXiadata();
            setarr[i]=a;
            Integer  b=x.getShulian();
            intarr[i]=b;
        }
        map.put("succ", true);
        map.put("leg", "['下载量']");
        map.put("xax", setarr);
        map.put("ser", intarr);
        return map;
    }
    @ResponseBody
    @RequestMapping("querylogin")
    public  Map<String, Object>  querylogin(String  username, String userpass, HttpSession session){

        Map<String, Object>    longin=echartsService.querylogin(username,userpass);
        Map<String, Object> map = new HashMap<String, Object>();

        String mas = (String) longin.get("login");
        String  admin="";
        if("success".equals(mas)){
            People user = (People) longin.get("user");
            session.setAttribute("pid",user.getPeopleid());
            admin =user.getPhone();
        }
        map.put("mas",mas);
        map.put("admin",admin);
        return   map;
    }
    @ResponseBody
    @RequestMapping("queryadd")
    public  void  querylogin( HttpSession session){

        System.out.println(session.getAttribute("pid"));
    }
    @ResponseBody
    @RequestMapping("register")
    public  String  register(String  username, String password,String phoe, HttpSession session){

        Map<String, Object>    longin=echartsService.register(username,password,phoe);
        String mas = (String) longin.get("login");
        if("success".equals(mas)){
            People user = (People) longin.get("user");
            session.setAttribute("pid",user.getPeopleid());
        }
        return   mas;
    }
    @ResponseBody
    @RequestMapping("listuser")
    public List<People> listuser(Integer  userid){

        List<People>   people=echartsService.listuser(userid);
        return  people;
    }
    @ResponseBody
    @RequestMapping("uolistuser")
    public String uolistuser(Integer  peopleid,String  peoplenickname,Integer  peoplesex,Integer   peopleage){

        String listid=echartsService.uolistuser(peopleid,peoplenickname,peoplesex,peopleage);
        return  listid;
    }
    @ResponseBody
    @RequestMapping("upuserpass")
    public String upuserpass(String   peoplepass ,Integer  peopleid){
         //修改密码
        echartsService.upuserpass(peoplepass,peopleid);
        return  "ok";
    }
    //上传图片（页面addEmpl.jsp）
    @RequestMapping("upImg")
    @ResponseBody
    public String upImg(MultipartFile artImg, HttpServletRequest req){
        String folderPath = req.getSession().getServletContext().getRealPath("/");
        String folderName = "/upload/";
        String str = UpLoadUtil.uploadImg(artImg, folderPath,folderName);
        return  str;
    }
}
