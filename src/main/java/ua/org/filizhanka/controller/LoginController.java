package ua.org.filizhanka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Dalvik on 20.12.2016.
 */

@Controller

public class LoginController {

    @RequestMapping("/")
    public String loginPage() {
        return "login";
    }
}
