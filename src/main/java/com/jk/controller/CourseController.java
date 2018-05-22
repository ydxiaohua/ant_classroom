package com.jk.controller;

import com.jk.model.Course;
import com.jk.model.DaGang;
import com.jk.model.Teacher;
import com.jk.model.Class;
import com.jk.service.CourseService;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by wfyf.zx1520 on 2018/5/15.
 */
@Controller
@EnableAutoConfiguration
@RequestMapping("/CourseController")
public class CourseController {


   @Autowired
  CourseService  courseService;

    @Autowired
    private MongoTemplate mongoTemplate;


    //讲师查询
    @RequestMapping(value = "/queryteacher")
    @ResponseBody
    public List<Teacher> queryteacher() {
        List<Teacher> list= courseService.queryteacher();

        return list;
    }

   //新增讲师
    @RequestMapping("/addTeacher")
    @ResponseBody
    public  String addTeacher(Teacher teacher){

        courseService.addTeacher(teacher);

        return "addsuccess";
    }

    //删除讲师
    @RequestMapping("/deleteteacher")
    @ResponseBody
    public  String deleteteacher(String teacherid){

        courseService.deleteteacher(teacherid);

        return "deletesuccess";
    }


    //回显
    @RequestMapping("/queryteacherid")
    public  String   queryteacherid(String teacherid,HttpServletRequest request){

        Teacher  list = courseService.queryteacherid(teacherid);

        request.getSession().setAttribute("list",list);

        return  "updatecourse.jsp";

    }





    //修改讲师
    @RequestMapping("/updateteacher")
    @ResponseBody
    public  String updateteacher(Teacher teacher){

        courseService.updateteacher(teacher);

        return "1";
    }





    //大纲查询
    @RequestMapping(value = "/querydagang")
    @ResponseBody
    public List<Teacher> querydagang() {
        List<Teacher> list= courseService.querydagang();

        return list;
    }



    /**/

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

   /* */

    //大纲回显
    @RequestMapping("/querydgid")
    public  String   querydgid(String dgid,HttpServletRequest request){

        DaGang  list = courseService.querydgid(dgid);

        request.getSession().setAttribute("list",list);

        return  "updatedagang.jsp";

    }

    /**/


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
    public List<Course> querycourse() {

        List<Course> list= courseService.querycourse();

        return list;
    }
    //
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

        courseService.addcourse(course);

    }



    /*@RequestMapping(value = "/addPicture", method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
    public  Object addPicture(@RequestParam("file") MultipartFile[] files){
        String greatBeauty = AliyunOSSClientUtil.GreatBeauty(files[0], files[0].getOriginalFilename());
        Map map = new HashMap(1);
        map.put("a",greatBeauty);
        return map;
    }*/
}
