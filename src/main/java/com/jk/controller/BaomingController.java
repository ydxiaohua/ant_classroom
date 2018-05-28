package com.jk.controller;

import com.jk.model.People;
import com.jk.model.Registrationcentre;
import com.jk.service.BaomingService;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@EnableAutoConfiguration
@RequestMapping(value = "/baoming")
public class BaomingController {
    @Autowired
    private BaomingService baomingService;

    //新增信息
    @RequestMapping(value="/queryBaoUser")
    @ResponseBody
    public void addBaoUser(){
        baomingService.addBaoUser();
    }

    //查询信息
    @RequestMapping(value="/querybaolist")
    @ResponseBody
    public List<Registrationcentre> querybaolist(){
        List<Registrationcentre> list = baomingService.querybaolist();
        return list;
    }

    //删除信息
    @RequestMapping(value="/deletebaoming")
    @ResponseBody
    public String deletebaoming(String baouserid){
        baomingService.deletebaoming(baouserid);
        return   "删除成功";
    }

    //回显信息
    @RequestMapping(value="/selectid")
    public String selectid(String baouserid,HttpServletRequest request){
        Registrationcentre reg = baomingService.selectid(baouserid);
        request.getSession().setAttribute("reg",reg);
        return "twl/updatebao.jsp";
    }

    //修改
    @RequestMapping(value="/updatebaoming")
    @ResponseBody
    public String updatebaoming(Registrationcentre registrationcentre){
        System.out.println(registrationcentre);
        baomingService.updatebaoming(registrationcentre);
        return "修改成功";
    }

    //添加
    @RequestMapping(value="/addbaoming")
    @ResponseBody
    public String addbaoming(Registrationcentre registrationcentre){
        System.out.println(registrationcentre);
        baomingService.addbaoming(registrationcentre);
        return "添加成功";
    }


    //查询vip用户
    @RequestMapping(value="/queryvipuserlist")
    @ResponseBody
    public List<People> queryvipuserlist(Integer phone,String peoplenickname,Integer minage,Integer maxage){
        System.out.println(minage);
        System.out.println(maxage);
        List<People> list = baomingService.queryvipuserlist(phone,peoplenickname,minage,maxage);
        return list;
    }

    //删除vip用户
    @RequestMapping(value="/deletevipuser")
    @ResponseBody
    public String deletevipuser(String peopleid){
        baomingService.deletevipuser(peopleid);
        return "删除成功";
    }



    /*前台==============================================================*/



    //新增用户
    @RequestMapping(value="/addpeople")
    @ResponseBody
    public void addpeople(Registrationcentre registrationcentre){
        baomingService.addpeople(registrationcentre);
    }


    //充值VIP
    @RequestMapping(value="/updateVIP")
    @ResponseBody
    public void updateVIP(Integer peopleid){
        baomingService.updateVIP(peopleid);
    }

}
