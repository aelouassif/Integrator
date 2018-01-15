package fr.insa.controller;

import fr.insa.model.Users;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.constraints.Null;
import java.util.Map;

@RestController
@Controller
public class LoginContoller {
    private final RestTemplate restTemplate;
    private String url = "http://integratordatabase.herokuapp.com/";
    @RequestMapping("/login")
    public ModelAndView login(@RequestParam(value="login") String login, @RequestParam(value="password") String password) {
        Users user = this.restTemplate.getForObject(url+"login?login="+login+"&password="+password, Users.class);
        System.out.println("----------------------------------------------");

        ModelAndView mv = new ModelAndView();

        if(user.getLogin() != null)
            mv.setViewName("ok.html");
        else
            mv.setViewName("notok.html");

        return mv;
    }

    @RequestMapping("/inscription")
    public ModelAndView inscription(@RequestParam(value="login") String login, @RequestParam(value="password") String password) {
        Users user = this.restTemplate.getForObject(url+"insert?login="+login+"&password="+password, Users.class);
        System.out.println("----------------------------------------------");

        ModelAndView mv = new ModelAndView();

        mv.setViewName("index.html");

        return mv;
    }
    @Value("${welcome.message:test}")
    private String message = "Hello World";

    @RequestMapping("/qlq")
    public String welcome(Map<String, Object> model) {
        model.put("message", this.message);
        return "welcome";
    }

    public LoginContoller(RestTemplateBuilder restTemplateBuilder){
        this.restTemplate = restTemplateBuilder.build();
    }
    @Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }
}
