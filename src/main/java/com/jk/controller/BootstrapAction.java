package com.jk.controller;

import com.jk.model.AliyunOSSClientUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

//@Namespace("/")
//@Action(value="/BootstrapAction")
@Controller
@RequestMapping("BootstrapAction")
public class BootstrapAction{

	@RequestMapping(value = "/addPicture", method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
	public  Object addPicture(@RequestParam("file") MultipartFile[] files){
		String greatBeauty = AliyunOSSClientUtil.GreatBeauty(files[0], files[0].getOriginalFilename());
		/*System.out.println(greatBeauty);*/

		Map map = new HashMap(1);
		map.put("a",greatBeauty);
		return map;
	}
	
	
	//从阿里云下载
	@RequestMapping("downLoadFile")
	public void downLoadFile(){
		
	}
}	
