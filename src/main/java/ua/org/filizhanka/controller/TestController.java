package ua.org.filizhanka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by vkekukh on 27.12.2016.
 */
@Controller
public class TestController {

    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/operator")
    public String operatorPage(){
        return "operator";
    }

    @RequestMapping("/redirect")
    public String redirect(){
        return "redirect:/admin";
    }
}
