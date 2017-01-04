package ua.org.filizhanka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.org.filizhanka.entity.CustomUser;
import ua.org.filizhanka.entity.UserRole;
import ua.org.filizhanka.entity.Users;
import ua.org.filizhanka.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by vkekukh on 27.12.2016.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;


    @RequestMapping("/success")
    public String success() {
        return "success";
    }


    @RequestMapping("/unauthorized")
    public String unauthorized() {
        return "unauthorized";
    }
}

