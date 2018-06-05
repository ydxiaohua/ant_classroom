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
import javax.servlet.http.HttpSession;
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



    //轮播图所有操作
    @RequestMapping("/queryImg")
    @ResponseBody
    public List<Img> queryImg(){
        List<Img> list = indexService.queryImg();
        return list;
    }


    @RequestMapping("/addImg")
    @ResponseBody
    public String addImg(Img img){

        img.setImgdate(sdf.format(new Date()));
        img.setImgstate("1");
        indexService.addImg(img);
        return "1";
    }

    @RequestMapping("/deleteImg")
    @ResponseBody
    public String deleteImg(Integer imgid){

        indexService.deleteImg(imgid);
        return "1";
    }

    //7.查找一条数据
    @RequestMapping("/huixianImg")
    public  String huixianImg(Integer imgid,HttpSession session){

        Img img =   indexService.huixianImg(imgid);
        session.setAttribute("img",img);
        return "sl/updateimg.jsp";

    }
    //修改的方法
    @RequestMapping("/updateImg")
    @ResponseBody
    public  String updateImg(Img img){
        img.setImgdate(sdf.format(new Date()));
        indexService.updateImg(img);
        return "1";

    }
    @RequestMapping("/ShowLunBoImg")
    @ResponseBody
    public  String ShowLunBoImg(Integer imgid){
        Integer imgcount=indexService.queryShowImgNum();
        if(imgcount>=5){
            return "2";

        }else{
            indexService.ShowLunBoImg(imgid);
            return "1";
        }
    }
    @RequestMapping("/HideLunBoImg")
    @ResponseBody
    public  String HideLunBoImg(Integer imgid){
        Integer imgcount=indexService.queryShowImgNum();

        if(imgcount<=1){
            return "2";
        }else {
            indexService.HideLunBoImg(imgid);
            return "1";

        }
    }

    @RequestMapping("/queryIndexImg")
    @ResponseBody
    public List<Img> queryIndexImg(HttpSession session){

        List<Img> list = indexService.queryIndexImg();

           for(int i=0;i<list.size();i++){

            session.setAttribute("ee",list.get(0).getImg());

            session.setAttribute("qq",list.get(1).getImg());

            session.setAttribute("ww",list.get(2).getImg());
        }

        return list;
    }



}
