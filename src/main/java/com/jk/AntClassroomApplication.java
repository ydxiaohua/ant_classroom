package com.jk;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.amqp.core.Queue;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource(value = {"classpath:dubbo-consumer.xml"})
public class AntClassroomApplication {

	public static void main(String[] args) {
		SpringApplication.run(AntClassroomApplication.class, args);
	}
	/**
	 * 定义一个队列
	 * @return
	 */
	/*@Bean
	public Queue getQueue(){
		return new Queue("jj");
	}*/




}
