package fr.insa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class WelcomeController {


	@RequestMapping("/hello")
	public String welcome(Map<String, Object> model) {
		model.put("message","bonjour timo");
		return "welcome";
	}

}