package com.jk.controller;

import com.jk.model.*;
import com.jk.service.IndexService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 世龙同学 on 2018/5/24.
 */
@Controller
@RequestMapping("/index")
public class IndexController {

    @Resource
    private IndexService indexService;
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //推荐课程

    @RequestMapping("/TuiJianCourse")
    @ResponseBody
    public List<Course> TuiJianCourse(){
        List<Course> list = indexService.TuiJianCourse();
        return list;
    }

    @RequestMapping("/JingXuanCourse")
    @ResponseBody
    public List<Course> JingXuanCourse(){
        List<Course> list = indexService.JingXuanCourse();
        return list;
    }

    @RequestMapping("/NewCourse")
    @ResponseBody
    public List<Course> NewCourse(){
        List<Course> list = indexService.NewCourse();
        return list;
    }

    @RequestMapping("/AllCourse")
    @ResponseBody
    public List<Course> AllCourse(){
        List<Course> list = indexService.AllCourse();
        return list;
    }

    @RequestMapping("/queryImg")
    @ResponseBody
    public List<Img> queryImg(){
        List<Img> list = indexService.queryImg();
        return list;
    }

    @RequestMapping("/addphoto")
    @ResponseBody
    public String addpetphoto(@RequestParam("uploadFile") CommonsMultipartFile petPhoto, HttpServletRequest request) {
        // 改名 转存 获得新的文件名
        System.out.println(123);
        String newFileName = MyUtil.upload(request, petPhoto);

        return newFileName;
    }

    @RequestMapping("/addImg")
    @ResponseBody
    public String addImg(Img img){

        img.setImgdate(String.valueOf(new Date()));
        indexService.addImg(img);
        return "1";
    }

    //查找一条数据
    @ResponseBody
    @RequestMapping("/queryCourseAllOrId")
    public  String queryCourseAllOrId(Integer courseid) throws IOException, TemplateException {

        indexService.updateLookcode(courseid);
        Course course =   indexService.queryCourseAllOrId(courseid);
        System.out.println(course);
        if(course.getDgids()!=null){
            Configuration configuration = new Configuration();
            configuration.setDirectoryForTemplateLoading(new File("E:\\idea\\ant_classroom\\src\\main\\webapp\\courseInfo"));
            configuration.setDefaultEncoding("utf-8");
            Template template = configuration.getTemplate("course.ftl");
            Writer out=new FileWriter(new File("E:\\idea\\ant_classroom\\src\\main\\webapp\\courseInfo\\course"+courseid+".html"));
            Map root=new HashMap();
            root.put("courseinfo", course);
            template.process(root, out);
            out.flush();
            out.close();
            return "Yes";
        }else{
            return "No";
        }

    }

    @RequestMapping("/queryDagang")
    @ResponseBody
    public List<DaGang> queryDagang(Integer courseid){
        List<DaGang>  list = indexService.queryDagang(courseid);
        if(list.size()<1){
            return null;
        }
        return list;
    }

    @RequestMapping("/queryDgidOrVideo")
    @ResponseBody
    public String queryDgidOrVideo(Integer dgid){

        String flag= indexService.queryDgidOrVideo(dgid);
        return  flag;
    }

    @RequestMapping("/queryCoursePing")
    @ResponseBody
    public Map<String, Object> queryCoursePing(int page ,int rows,int courseid){
        Map<String, Object>  map = indexService.queryCoursePing(page,rows,courseid);
        return map;
    }

    @RequestMapping("/addHuiFuPing")
    @ResponseBody
    public String addHuiFuPing(String comcontent,Integer courseid){
        Comment comment=new Comment();
        comment.setComcontent(comcontent);
        comment.setComcode(0);
        comment.setCourseid(courseid);
        comment.setPeopleid(1);
        sdf.format(new Date());
        comment.setComdate(sdf.format(new Date()));
        indexService.addHuiFuPing(comment);
        return "1";
    }

    @RequestMapping("/PingLunDianZan")
    @ResponseBody
    public String PingLunDianZan(Integer comid){

        PingZan pingzan=indexService.queryNoOrYesPing(comid,1);
        System.out.println(pingzan);
        if(pingzan==null){

            indexService.PingLunDianZan(comid);
            indexService.addPingZan(comid,1);

            return "1";
        }else{
            return "0";
        }
    }

    //查找一条数据
    @RequestMapping("/queryDGinfo")
    public  String queryDGinfo(Integer courseid,Integer dgid) throws IOException, TemplateException {

        indexService.updateLookcode(courseid);
        Course course =   indexService.queryDGinfo(courseid,dgid);

        Configuration configuration = new Configuration();
        configuration.setDirectoryForTemplateLoading(new File("E:\\idea\\ant_classroom\\src\\main\\webapp\\courseInfo"));
        configuration.setDefaultEncoding("utf-8");
        Template template = configuration.getTemplate("dagang.ftl");
        Writer out=new FileWriter(new File("E:\\idea\\ant_classroom\\src\\main\\webapp\\courseInfo\\dg"+dgid+".html"));
        Map root=new HashMap();
        root.put("dginfo", course);
        template.process(root, out);
        out.flush();
        out.close();
        return "courseInfo/dg"+dgid+".html";
    }
    /*@RequestMapping("/queryDGinfo")
    @ResponseBody
    public List queryDGinfo(Integer dgid){
        List<DaGang>  list = indexService.queryDagang(dgid);
        return list;
    }*/



}
