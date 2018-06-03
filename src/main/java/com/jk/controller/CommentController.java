package com.jk.controller;

import com.alibaba.dubbo.common.json.JSONObject;
import com.jk.model.Comment;
import com.mongodb.BasicDBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCursor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.data.mongodb.core.query.Query;
import java.util.List;
import java.util.regex.Pattern;

@Controller
@RequestMapping(value = "/comm")
public class CommentController {

    @Autowired
    private MongoTemplate mongoTemplate;

    //查询
    @ResponseBody
    @RequestMapping("queryComment")
    public List queryList(Comment comment, int page, int rows){
        /*if(comment.getComcontent()=="" & comment.getStartcomdate()=="" & comment.getEndcomdate()=="" & comment.getCourseid()==null){
            JSONObject com = mongoTemplate.findAll(Comment.class);
            return com;
        }else{*/
        System.out.println(comment);

        Query query= new Query();
        if(comment.getComcontent()!=""){

            query= new Query(Criteria.where("comcontent").regex(comment.getComcontent()));
        }
        if(comment.getStartcomdate()!=""){

            query= new Query(Criteria.where("comdate").gte(comment.getStartcomdate()));
        }
        if(comment.getEndcomdate()!=""){

            query= new Query(Criteria.where("comdate").lte(comment.getEndcomdate()));
        }
        if(comment.getCourseid()!=null){

            query= new Query(Criteria.where("courseid").is(comment.getCourseid()));
        }

        /*long count = mongoTemplate.count(query,Comment.class);

        //数据库的字段            传过来的值
        query.skip((page-1)*rows).limit(rows);*/
        List<Comment>  find = mongoTemplate.find(query, Comment.class);
       /* JSONObject json=new JSONObject();
        json.put("rows", find);
        json.put("total", count);*/
        return find;

    }

    //新增
    @ResponseBody
    @RequestMapping("addComment")
    public void loginuser(Comment comment){
        mongoTemplate.save(comment);
    }

    //删除
    @ResponseBody
    @RequestMapping("deletecommon")
    public String deletecommon(String comcontent){
        System.out.println(comcontent);
        Query q=new Query(new Criteria("comcontent").is(comcontent));
        mongoTemplate.remove(q,Comment.class);
        return "删除成功";
    }

    //条件查询
    @ResponseBody
    @RequestMapping("querytiaojian")
    public List querytiaojian(String comcontent,String startcomdate,String endcomdate,Integer courseid){
        Query query = new Query(Criteria.where("comcontent").regex(comcontent));
        List<Comment>  find = mongoTemplate.find(query, Comment.class);
        return find;
    }

}
