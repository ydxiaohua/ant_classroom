package com.jk.controller;



import com.google.gson.Gson;
import com.jk.model.Aop;


import com.jk.model.Error;
import com.jk.model.Te;
import com.jk.model.User;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;

import org.aspectj.lang.reflect.CodeSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Field;
import java.util.*;

@Aspect
@Component
public class LogAspect {

    private  static  String url="";


    @Autowired
    private MongoTemplate mongoTemplate;

    User use  =new User();

    Aop mt=new Aop();


    /**
     * @Before 前置通知在方法执行之前执行
     * */
    @Pointcut("execution(public * com.jk.controller.*.*(..))")
    public void webLog(){

    }
    @Before("webLog()")
    public void deBefore(JoinPoint joinPoint) throws Throwable {

        // 接收到请求，记录请求内容
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();

        HttpServletRequest request = attributes.getRequest();

        // 记录下请求内容
        url= request.getRequestURL().toString();
/*

        System.out.println("URL : " + request.getRequestURL().toString());
        System.out.println("HTTP_METHOD : " + request.getMethod());
        System.out.println("IP : " + request.getRemoteAddr());
        System.out.println("CLASS_METHOD : " + joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
        System.out.println("ARGS : " + Arrays.toString(joinPoint.getArgs()));;
*/


        User user2=(User)request.getSession().getAttribute("user");


      /*  System.err.println("user"+user2);*/

        use.setZtid(Arrays.toString(joinPoint.getArgs()));


        String aaa = use.getZtid();

    /*    System.err.println("aaa"+aaa);*/

        if(request.getSession().getAttribute("user")!=null){

            mt.setUserurl("操作人"+user2.getUsername()+"-"+joinPoint.getSignature().getName());
        }

        mt.setUserpmam(Arrays.toString(joinPoint.getArgs()));

    }



    @AfterReturning(returning = "ret", pointcut = "webLog()")
    public void doAfterReturning(Object ret) throws Throwable {

     HttpServletRequest request= ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();

       // System.err.println("haha"+request.getQueryString());
       // System.err.println(request.getSession().getServletContext().getRealPath("/"));

       String servletPath=request.getServletPath();
 /*       System.err.println(servletPath);*/

       User u= (User) request.getSession().getAttribute("dbuser");



    if(servletPath.equals("/user/loginUser") || servletPath=="/user/loginuser"){

        /*if(servletPath.equals("/user/loginUser")){*/

                System.err.println("我是登陆调用");

                Te user=new Te();

                System.err.println(u);

               user.setName(u.getUsername());

               user.setZtid("登录人"+u.getUsername());

               request.getSession().setAttribute("k",user.getName());


               mongoTemplate.save(user);
        }else{

                System.err.println("我是访问调用");

              //mt.setUser(use.getZtid());

                mongoTemplate.save(mt);
        }
    }

    //后置异常通知
    @AfterThrowing("webLog()")
    public void throwss(JoinPoint jp){

/*        System.err.println(jp);

        System.out.println("方法异常时执行.....");*/

        Error err = new Error();

        HttpServletRequest request= ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();

 /*       err.setErrorvalue(jp.toString());*/

        mongoTemplate.save(err);



    }

}
