/*
package com.jk.controller;


import com.jk.model.Quan;
import com.jk.model.User;
import com.jk.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Controller
@RequestMapping("/user")
public class UserController {
  //  @Autowired
   // private MongoTemplate mongoTemplate;

*/
/**
     * 开启多线程*//*



    public static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    @Autowired
    private org.springframework.data.redis.core.StringRedisTemplate StringRedisTemplate;

    @Resource
    private UserService userService;

    @ResponseBody
    @RequestMapping("/listuser")
    private List listclothtype(){

        List<User> list  = userService.listuser();

        return list;

    }



*/
/*用户登录*//*


    @RequestMapping("/loginuser")
    @ResponseBody
    public String loginuser(User user,HttpSession session){

        Map<String, Object> map = userService.loginUser(user);

        User users = (User) map.get("user");

        if(users != null){

            session.setAttribute("userid",users.getUserid());

         session.setAttribute("username",users.getUsername());

            session.setAttribute("user",users);
           // request.getSession().setAttribute("user",users);

        }
        return (String) map.get("flag");
    }

*/
/*查询权限*//*


    @RequestMapping("/queryTree")
    @ResponseBody
    public List<Quan> queryTree(HttpSession session){
        Integer userid =(Integer) session.getAttribute("userid");
        List<Quan> quan =userService.queryTree(userid);
        return quan;
    }





}
*/
