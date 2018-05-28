package com.jk.controller;


import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

@Component
@RabbitListener(queues = "xx")
public class    RabbitMqProvider {
    @RabbitHandler

    public void process(String msg){
                System.out.println(msg+"----ffff----");
    }
}
