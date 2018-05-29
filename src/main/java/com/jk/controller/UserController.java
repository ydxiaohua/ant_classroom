package com.jk.controller;


import com.jk.model.Menu;
import com.jk.model.Role;
import com.jk.model.User;
import com.jk.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Controller
@RequestMapping("/user")

public class UserController {


    @Autowired
    private MongoTemplate mongoTemplate;

    /**
     * 开启多线程
     */
    public static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    @Autowired
    private org.springframework.data.redis.core.StringRedisTemplate StringRedisTemplate;


    @Resource
    private UserService userService;

    //用户登陆
    @ResponseBody
    @RequestMapping("/loginUser")
    public String loginUser(User user,HttpSession session){

        List<User> list1=userService.queryUserName(user);

        if(list1.size()==1){
            List<User> list2=userService.queryUserPass(user);
            if(list2.size()==1){
                session.setAttribute("dbuser",list2.get(0));
                return "OK";
            }else{
                return "passNo";
            }
        }else{
            return "nameNo";
        }
    }
    //查询树
    @ResponseBody
    @RequestMapping("/queryMenu")
    public List queryMenu(HttpSession session){


        User user= (User) session.getAttribute("dbuser");

        System.out.println("测试"+user);

        if(user!=null){

            Integer userid =  user.getUserid();

            List<Menu> list=userService.queryMenu(userid);

            return list;

        }
            return null;

    }
    //查询所有用户
    @ResponseBody
    @RequestMapping("/queryUser")
    public List<User> queryUser(){
        List<User> list=userService.queryUser();
        return list;
    }
    //查询所有角色
    @ResponseBody
    @RequestMapping("/queryRole")
    public List<Role> queryRole(){
        List<Role> list=userService.queryRole();
        return list;
    }
    //5.删除用户
    @RequestMapping("/deleteUser")
    @ResponseBody
    public  String deleteUser(Integer userid){

        userService.deleteUser(userid);

        return "1";

    }
    //6.添加用户
    @RequestMapping("/addUser")
    @ResponseBody
    public  String addUser(User user){

        userService.addUser(user);

        return "1";

    }

    //7.查找一条数据
    @RequestMapping("/huixianUser")
    public  String huixianUser(Integer userid,HttpSession session){
        //ValueOperations opsForValue = redisTemplate.opsForValue();
        User dbuser =   userService.huixianUser(userid);
        session.setAttribute("dbuser",dbuser);
        return "sl/updateuser";

    }
    //修改的方法
    @RequestMapping("/updateUser")
    @ResponseBody
    public  String updateUser(User user){

        userService.updateUser(user);
        return "1";

    }


    //跳页面
    @RequestMapping("/tiaouserrole")
    public String tiaouserrole(Integer userid,HttpSession session){

        session.setAttribute("userrole",userid);

        return "sl/userrole";
    }
    //用户角色回显
    @RequestMapping("/selectUserRole")
    @ResponseBody
    public  List selectUserRole(Integer userid,HttpSession session){
        //ValueOperations opsForValue = redisTemplate.opsForValue();
        List list=   userService.selectUserRole(userid);

        return list;

    }
    //设置角色
    @RequestMapping("/SetupRole")
    @ResponseBody
    public  String SetupRole(String ids,Integer userid){

        userService.SetupRole(ids,userid);

        return "1";

    }
    //5.删除用户
    @RequestMapping("/deleteRole")
    @ResponseBody
    public  String deleteRole(Integer roleid){

        userService.deleteRole(roleid);

        return "1";

    }
    //6.添加用户
    @RequestMapping("/addRole")
    @ResponseBody
    public  String addRole(Role role){

        userService.addRole(role);

        return "1";

    }

    //7.查找一条数据
    @RequestMapping("/huixianRole")
    public  String huixianRole(Integer roleid,HttpSession session){
        //ValueOperations opsForValue = redisTemplate.opsForValue();
        Role dbrole =   userService.huixianRole(roleid);
        session.setAttribute("dbrole",dbrole);
        return "sl/updaterole";

    }
    //修改的方法
    @RequestMapping("/updateRole")
    @ResponseBody
    public  String updateRole(Role role){

        userService.updateRole(role);
        return "1";

    }
    //设置权限
    @RequestMapping("/tiaorolemenu")
    public String tiaorolemenu(Integer roleid, HttpSession session){
        session.setAttribute("roleid",roleid);
        return "sl/rolemenu";

    }
    @RequestMapping("/selectRoleMenu")
    @ResponseBody
    public List selectRoleMenu(Integer rid){
        List list=userService.selectRoleMenu(rid);
        return list;
    }
    //保存权限
    @RequestMapping("/addRoleMenu")
    @ResponseBody
    public String addRoleMenu(String idsStr,Integer roleid){
        userService.addRoleMenu(roleid,idsStr);
        return "1";
    }



















}
