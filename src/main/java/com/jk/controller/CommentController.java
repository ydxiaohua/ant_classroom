package com.jk.controller;

import com.jk.model.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



import org.springframework.data.mongodb.core.query.Query;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "comm")
public class CommentController {

    @Autowired
    private MongoTemplate mongoTemplate;

    //查询
    @ResponseBody
    @RequestMapping("queryComment")
    public List queryList(){
        List<Comment> com = mongoTemplate.findAll(Comment.class);
        return com;
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


        Query q=new Query(new Criteria("comcontent").is(comcontent));

        mongoTemplate.remove(q,Comment.class);



        return "删除成功";
    }

}
