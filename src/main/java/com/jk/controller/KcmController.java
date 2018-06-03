package com.jk.controller;


import com.jk.model.*;
import com.jk.service.KcmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Controller
@RequestMapping("/kcmuser")
public class KcmController {

    @Autowired
    private KcmService kcmService;

    /*用户登录*/
    @RequestMapping("/loginuser")
    @ResponseBody
    public String loginuser(User user, HttpSession session){

        Map<String, Object> map = kcmService.loginUser(user);
        User users = (User) map.get("user");
        if(users != null){
            session.setAttribute("userid",users.getUserid());

            session.setAttribute("username",users.getUsername());

        }
        return (String) map.get("flag");
    }

    /*查询权限*/
    @RequestMapping("/queryTree")
    @ResponseBody
    public List<Quan> queryTree(HttpSession session){
        Integer userid =(Integer) session.getAttribute("userid");
        List<Quan> quan =kcmService.queryTree(userid);
        return quan;
    }

    /*查询课程问题*/
    @ResponseBody
    @RequestMapping("/queryWenList")
    public List queryWenList(){
        List<Courseproblem> list  = kcmService.queryWenList();
        return list;

    }
    /*查询页面热门回答推荐*/
    @ResponseBody
    @RequestMapping("/querypagewen")
    public List querypagewen(){
        List<Courseproblem> list  = kcmService.querypagewen();
        return list;
    }
    /*查询页面全部问题*/
    @ResponseBody
    @RequestMapping("/querywenshow")
    public List querywenshow(){
        List<Courseproblem> list  = kcmService.querywenshow();
        return list;
    }
    /*查询页面最新*/
    @ResponseBody
    @RequestMapping("/querynew")
    public List querynew(){
        List<Courseproblem> list  = kcmService.querynew();
        return list;
    }
    /*查询页面最新*/
    @ResponseBody
    @RequestMapping("/queryhot")
    public List queryhot(){
        List<Courseproblem> list  = kcmService.queryhot();
        return list;
    }
    /*查询课程问答列表*/
    @ResponseBody
    @RequestMapping("/querywenshow1")
    public List querywenshow1(Integer typeid){

        List<Courseproblem> list  = kcmService.querywenshow1(typeid);

        return list;
    }


    /*查询我的提问*/
    @ResponseBody
    @RequestMapping("/querytiwen")
    public List querytiwen(HttpSession session){

        Integer peopleid = (Integer) session.getAttribute("pid");

        System.out.println(peopleid);
        List<Courseproblem> list  = kcmService.querytiwen(peopleid);

        System.out.println(list);
        return list;
    }


    /*查询我的回答*/
    @ResponseBody
    @RequestMapping("/querymyhuida")
    public List querymyhuida(HttpSession session){

        Integer peopleid = (Integer) session.getAttribute("pid");

        List<Courseproblem> list  = kcmService.querymyhuida(peopleid);

        return list;
    }




    /*查询问题类型*/
    @ResponseBody
    @RequestMapping("/querybywenid")
    public List querybywenid(Integer questionid){
        List<Courseproblem> list  = kcmService.querybywenid(questionid);
        return list;
    }

    /*查询页面热门回答推荐*/
    @ResponseBody
    @RequestMapping("/querypagewen2")
    public List querypagewen2(){
        List<Courseproblem> list  = kcmService.querypagewen();
        return list;
    }

    //查询答案列表
    @ResponseBody
    @RequestMapping("/querydaanList")
    public List querydaanList(){
        List<Answer> list  = kcmService.querydaanList();
        return list;
    }

    /*新增问题*/
    @ResponseBody
    @RequestMapping("/addWenti")
    public String addWenti(Courseproblem courseproblem){
        HttpServletRequest request =((ServletRequestAttributes) RequestContextHolder. getRequestAttributes()).getRequest();
        HttpSession session=request.getSession();//创建session对象
        //我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat();
        //获取String类型的时间
        String createdate = sdf.format(date);
        courseproblem.setQuestiondate(createdate);
        courseproblem.setLooknum(0);
        // courseproblem.setPeopleid( (Integer) session.getAttribute("userid"));

        //mongodb存储
        // courseproblem.setQuestionid(1);
        //mongoTemplate.save(courseproblem);

        kcmService.addWenti(courseproblem);
        return "addSuccess";
    }
    /*新增答案*/
    @ResponseBody
    @RequestMapping("/adddaan")
    public String adddaan(Answer answer){
        HttpServletRequest request =((ServletRequestAttributes) RequestContextHolder. getRequestAttributes()).getRequest();
        HttpSession session=request.getSession();//创建session对象
        //我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat();
        //获取String类型的时间
        String createdate = sdf.format(date);
        answer.setResultdate(createdate);
        answer.setUserid(1);
        kcmService.adddaan(answer);
        return "addSuccess";
    }

    /*新增问题类型*/
    @ResponseBody
    @RequestMapping("/addWentype")
    public String addWentype(ProblemType problemType){
        kcmService.addWentype(problemType);
        return "addSuccess";
    }

    /*查询问题类型*/
    @ResponseBody
    @RequestMapping("/queryWenType")
    public List queryWenType(){
        List<ProblemType> list  = kcmService.queryWenType();
        return list;
    }


    //回显信息
    @RequestMapping(value="/huixianwen")
    public String huixianwen(Integer wenid,Model model){
        Courseproblem courseproblem = kcmService.huixianwen(wenid);
        System.out.println(courseproblem);
        model.addAttribute("cp",courseproblem);
        return "kcm/updatewen.jsp";
    }

    //回显问题类型信息
    @RequestMapping(value="/huixianwentype")
    public String huixianwentype(Integer id,HttpServletRequest request){
        ProblemType problemType = kcmService.huixianwentype(id);
        System.out.println(problemType);
        request.getSession().setAttribute("pt",problemType);
        return "kcm/updatewentype.jsp";
    }

    //回显答案
    @RequestMapping(value="/huixiandaan")
    public String huixiandaan(Integer id,HttpServletRequest request){
        Answer answer = kcmService.huixiandaan(id);
        System.out.println(answer);
        request.getSession().setAttribute("answer",answer);
        return "kcm/updatedaan.jsp";
    }

    //修改问题列表
    @RequestMapping(value="/updatewen")
    @ResponseBody
    public String updatewen(Courseproblem courseproblem){
        //我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat();
        //获取String类型的时间
        String createdate = sdf.format(date);
        courseproblem.setQuestiondate(createdate);
        kcmService.updatewen(courseproblem);
        return "修改成功";
    }


    //修改问题类型
    @RequestMapping(value="/updatewentype")
    @ResponseBody
    public String updatewentype(ProblemType problemType){
        kcmService.updatewentype(problemType);
        return "修改成功";
    }
    //修改问题类型
    @RequestMapping(value="/updatedaan")
    @ResponseBody
    public String updatedaan(Answer answer){
        kcmService.updatedaan(answer);
        return "修改成功";
    }

    //修改答案点赞数
    @RequestMapping(value="/updatezan")
    @ResponseBody
    public String updatezan(Integer resultid ,Integer peopleid){
        String flag= kcmService.updatezan(resultid,peopleid);
        return flag;
    }


    /*删除问题*/
    @RequestMapping(value="/deletewen")
    @ResponseBody
    public String deletewen(Integer id){
        kcmService.deletewen(id);
        return "删除成功";
    }

    /*删除问题类型*/
    @RequestMapping(value="/deletewentype")
    @ResponseBody
    public String deletewentype(Integer id){
        kcmService.deletewentype(id);
        return "删除成功";
    }

    /*删除答案*/
    @RequestMapping(value="/deletedaan")
    @ResponseBody
    public String deletedaan(Integer id){
        kcmService.deletedaan(id);
        return "删除成功";
    }


    //修改问题类型
    @RequestMapping(value="/updatenum")
    @ResponseBody
    public String updatenum(Integer questionid){
        kcmService.updatenum(questionid);
        return "修改成功";
    }

    /*点击跳到回复页面*/
    @RequestMapping(value="/tohuifu")
    public String tohuifu(Integer questionid,HttpServletRequest request){
        Courseproblem courseproblem=kcmService.tohuifu(questionid);
        request.getSession().setAttribute("co",courseproblem);
        return "jsp/tohuifu.jsp";
    }



    /*查询问题对应的答案*/
    @ResponseBody
    @RequestMapping(value="/queryhuifu")
    public List queryhuifu(Integer questionid,HttpServletRequest request){
        List answerList=kcmService.queryhuifu(questionid);
        //request.getSession().setAttribute("co",courseproblem);
        return answerList;
    }


}
