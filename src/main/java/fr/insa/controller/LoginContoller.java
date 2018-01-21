package fr.insa.controller;

import fr.insa.model.Users;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@RestController
@Controller
public class LoginContoller {
    private final RestTemplate restTemplate;
    private String url = "http://integratordatabase.herokuapp.com/";
    @RequestMapping("/login")
    
    public ModelAndView login(@RequestParam(value="login") String login, @RequestParam(value="password") String password, Model model) {
        Users user = this.restTemplate.getForObject(url+"login?login="+login+"&password="+password, Users.class);
        System.out.println("----------------------------------------------");

        ModelAndView mv = new ModelAndView();

        if(user.getLogin() != null) {
        	model.addAttribute("login", user.getLogin());
            mv.setViewName("dashboard");
        } else {
        	model.addAttribute("error", 1);
            mv.setViewName("login");
        }

        return mv;
    }

    @RequestMapping("/register")
    public ModelAndView inscription(@RequestParam(value="login") String login, @RequestParam(value="password") String password,@RequestParam(value="first_name") String first_name,
        @RequestParam(value="last_name") String last_name,@RequestParam(value="email") String email) {

        System.out.println(url+"insertUser?login="+login+"&password="+password+"&email="+email+
                "&first_name="+first_name+"&last_name="+last_name+"&email="+email);

        Users user = this.restTemplate.getForObject(url+"insertUser?login="+login+"&password="+password+"&email="+email+
                "&first_name="+first_name+"&last_name="+last_name+"&email="+email, Users.class);
        System.out.println("----------------------------------------------");


        ModelAndView mv = new ModelAndView();
        mv.setViewName("login");

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
