package com.jk.controller;

import com.jk.model.Registrationcentre;
import com.jk.service.BaomingService;
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

    @RequestMapping(value="/queryBaoUser")
    @ResponseBody
    public void addBaoUser(){
        baomingService.addBaoUser();
    }

    @RequestMapping(value="/querybaolist")
    @ResponseBody
    public List<Registrationcentre> querybaolist(){
        List<Registrationcentre> list = baomingService.querybaolist();
        return list;
    }
}
