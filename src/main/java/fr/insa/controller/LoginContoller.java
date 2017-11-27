package fr.insa.controller;

import fr.insa.model.Users;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.constraints.Null;

@RestController
@Controller
public class LoginContoller {
    private final RestTemplate restTemplate;

    @RequestMapping("/login")
    public ModelAndView login(@RequestParam(value="login") String login, @RequestParam(value="password") String password) {
        Users user = this.restTemplate.getForObject("http://localhost:9090/login?login="+login+"&password="+password, Users.class);
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
        Users user = this.restTemplate.getForObject("http://localhost:9090/insert?login="+login+"&password="+password, Users.class);
        System.out.println("----------------------------------------------");

        ModelAndView mv = new ModelAndView();

        mv.setViewName("index.html");

        return mv;
    }

    public LoginContoller(RestTemplateBuilder restTemplateBuilder){
        this.restTemplate = restTemplateBuilder.build();
    }
    @Bean
    public RestTemplate restTemplate(RestTemplateBuilder builder) {
        return builder.build();
    }
}
