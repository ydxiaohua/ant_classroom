package com.jk;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.amqp.core.Queue;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

import javax.servlet.MultipartConfigElement;

@SpringBootApplication
@ImportResource(value = {"classpath:dubbo-consumer.xml"})
@Configuration
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

	/**
	 * 文件上传配置
	 *
	 * @return
	 */
	@Bean
	public MultipartConfigElement multipartConfigElement() {
		MultipartConfigFactory factory = new MultipartConfigFactory();
		//  单个数据大小
		factory.setMaxFileSize("10240KB"); // KB,MB
		/// 总上传数据大小
		factory.setMaxRequestSize("102400KB");
		return factory.createMultipartConfig();
	}


}
