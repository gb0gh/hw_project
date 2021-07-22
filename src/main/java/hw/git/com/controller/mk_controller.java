package hw.git.com.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mk_controller {
	private static final Logger logger = LoggerFactory.getLogger(mk_controller.class);


	@RequestMapping(value = "/api_test")
	public String home() {
		return "api_test";
	}
}
