package com.jk.controller;

import com.jk.model.Share;
import com.jk.model.User;
import com.jk.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2018/5/10.
 */
@Controller
@EnableAutoConfiguration
@RequestMapping("/user")
public class TestController {
    @Autowired
    private TestService testService;

    @RequestMapping("test2")
    @ResponseBody
    public List<User> query(){


        List<User>  list= testService.query();

        return list;
    }
    @RequestMapping("sharelist")
    @ResponseBody
    public List<Share> sharelist(String qiandata,String  hodata){


        List<Share>  list= testService.sharelist(qiandata,hodata);
        return list;
    }

}
