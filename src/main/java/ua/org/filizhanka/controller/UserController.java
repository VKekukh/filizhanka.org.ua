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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.org.filizhanka.entity.CustomUser;
import ua.org.filizhanka.entity.UserRole;
import ua.org.filizhanka.service.UserService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by vkekukh on 27.12.2016.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    protected AuthenticationManager authenticationManager;

    @RequestMapping("/")
    public String root(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();

        CustomUser customUser = userService.getUserByLogin(login);
        model.addAttribute("login", customUser.getLogin());
        return "success";
    }

    @RequestMapping("/success")
    public String success() {
        return "success";
    }

    @RequestMapping("/login")
    public String loginPage() {
        return "login";
    }

    @RequestMapping("/registration")
    public String registration() {
        return "registration";
    }

    @RequestMapping("/unauthorized")
    public String unauthorized() {
        return "unauthorized";
    }

    @RequestMapping("/profile")
    public String update(Model model){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();

        CustomUser customUser = userService.getUserByLogin(login);
        model.addAttribute("login", customUser.getLogin());
        model.addAttribute("password", customUser.getPassword());
        model.addAttribute("email", customUser.getEmail());
        model.addAttribute("mobilephone",customUser.getMobilephone());
        model.addAttribute("fio",customUser.getName());
        return "profile";
    }

    @RequestMapping(value = "/newuser", method = RequestMethod.POST)
    public String update(@RequestParam String login,
                         @RequestParam String password,
                         @RequestParam(required = false) String fio,
                         @RequestParam(required = false) String email,
                         @RequestParam(required = false) String mobilephone,
                         HttpServletRequest request,
                         Model model) {

        if (login.equals("")||password.equals("")) {
            model.addAttribute("emptyLoginOrPassword", true);
            return "registration";
        }

        ShaPasswordEncoder encoder = new ShaPasswordEncoder();
        String passHash = encoder.encodePassword(password, null);

        CustomUser dbUser = new CustomUser(fio,login,passHash,email,mobilephone,UserRole.ADMIN,true);
        userService.addUser(dbUser);

        authenticateUserAndSetSession(login,password,request);
        return "redirect:/";
    }

    private void authenticateUserAndSetSession(String login, String password,  HttpServletRequest request) {
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(login, password);

        // generate session if one doesn't exist
        request.getSession();

        token.setDetails(new WebAuthenticationDetails(request));
        Authentication authenticatedUser = authenticationManager.authenticate(token);

        SecurityContextHolder.getContext().setAuthentication(authenticatedUser);
    }
}

