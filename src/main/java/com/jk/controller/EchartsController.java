package com.jk.controller;

import com.jk.model.Liu;
import com.jk.service.EchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/17.
 */

@Controller
@RequestMapping("raaac")
public class EchartsController {
    @Autowired
    private MongoTemplate mongoTemplate;

    @Resource
    private EchartsService echartsService;

    @ResponseBody
    @RequestMapping("echarts")
    private Map<String, Object> echarts(){

        Map<String, Object> map=echartsService.echarts();
        return  map;
    }
    @ResponseBody
    @RequestMapping("xiaz")
    public void loginuser(){
        Liu liu  =new Liu();
        //我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //获取String类型的时间
        String createdate = sdf.format(date);  //mongodb查询条件
        //查询mongodb是否有这一天数据访问
        Query query = new Query(Criteria.where("syllabusid").is(createdate));
        List<Liu> liu2= mongoTemplate.find(query, Liu.class);
        if (liu2.size()==0){
            liu.setSyllabusid(createdate);
            liu.setShulian(1);
            liu.setType(0);
            mongoTemplate.save(liu);
        }else{
            Integer  shulian=0;
         for (int i = 0; i < liu2.size(); i++){
             shulian=liu2.get(0).getShulian();
             shulian++;
            }
            Query query2 = new Query(Criteria.where("syllabusid").is(createdate));
            Update update = new Update().set("shulian",shulian);
            mongoTemplate.updateFirst(query2,update,Liu.class);
        }
    }
    @ResponseBody
    @RequestMapping("xiaz2")
    public void loginuser2(){
        Liu liu  =new Liu();
            liu.setSyllabusid("2018-05-20");
            liu.setShulian(1);
            liu.setType(0);
            mongoTemplate.save(liu);
    }
    /**
     * @return
     * mongodb 查询数据到mysql中
     */
    @Scheduled(cron ="0 0 3 * * ?")
    public   void   mongodblist(){
        Liu liu  =new Liu();
        Query query = new Query();
        List<Liu> liu2= mongoTemplate.find(query, Liu.class);
        for (int i = 0; i < liu2.size(); i++){
            if (liu2.get(i).getType()==0){
                liu.setShulian(liu2.get(i).getShulian());
                liu.setSyllabusid(liu2.get(i).getSyllabusid());
                echartsService.addliulist(liu);
            }
        }
        Query query2 = new Query(Criteria.where("type").is(0));
        Update update = new Update().set("type",1);
        mongoTemplate.updateFirst(query2,update,Liu.class);
    }
/*    @Scheduled(fixedRate = 6000)
    public void autosync() {
        System.out.print(".");
    }*/
    @ResponseBody
    @RequestMapping("chaxxia")
    public  Map<String , Object>  chaxliu(){
        Map<String , Object> map=new HashMap<String, Object>();
        List<Liu> liu=echartsService.chaxliu();
        Integer  ind=liu.size();
        String[]    setarr=new   String[ind];
        Integer[]   intarr=new   Integer[ind];
        for(int i=0;i<liu.size();i++){
            Liu x=liu.get(i);
            String  a=x.getSyllabusid();
            System.out.println(a);
            setarr[i]=a;
            Integer  b=x.getShulian();
            intarr[i]=b;
        }
        map.put("succ", true);
        map.put("leg", "['销量']");
        map.put("xax", setarr);
        map.put("ser", intarr);
        return   map;
    }
    @ResponseBody
    @RequestMapping("zhexian")
    public  Map<String , Object>  zhexian(String  name){
        Map<String , Object> map=new HashMap<String, Object>();
        List<Liu> liu=echartsService.chaxliuyue(name);
            Integer  ind=liu.size();
            String[]    setarr=new   String[ind];
            Integer[]   intarr=new   Integer[ind];
            for (int i = 0; i < liu.size(); i++) {
                Liu x=liu.get(i);
                String  a=x.getSyllabusid();
                setarr[i]=a;
                Integer  b=x.getShulian();
                intarr[i]=b;
              }
            map.put("succ", true);
            map.put("leg", "['销量']");
            map.put("xax", setarr);
            map.put("ser", intarr);
        System.out.println(map);
        System.out.println(liu);
        return map;
    }
}
