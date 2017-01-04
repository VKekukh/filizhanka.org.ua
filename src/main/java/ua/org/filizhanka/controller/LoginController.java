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
 * Created by Dalvik on 03.01.2017.
 */
@Controller
public class LoginController {

    @Autowired
    UserService userService;

    @Autowired
    protected AuthenticationManager authenticationManager;

    //authenticate user after register
    private void authenticateUserAndSetSession(String login, String password, HttpServletRequest request) {
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(login, password);

        // generate session if one doesn't exist
        request.getSession();

        token.setDetails(new WebAuthenticationDetails(request));
        Authentication authenticatedUser = authenticationManager.authenticate(token);

        SecurityContextHolder.getContext().setAuthentication(authenticatedUser);
    }

    //If user has changed password then we must encrypt its
    public String encrypt(String password) {
        ShaPasswordEncoder encoder = new ShaPasswordEncoder();
        String passHash = encoder.encodePassword(password, null);

        return passHash;
    }

    @RequestMapping("/")
    public String root(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();

        CustomUser customUser = userService.getUserByLogin(login);
        model.addAttribute("customUser", customUser);

        return "success";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/registration")
    public String registration(Model model) {
        return "registration";
    }

    @RequestMapping(value = "/registrationUser", method = RequestMethod.POST)
    public String registrationUser(@RequestParam String login,
                                   @RequestParam String password,
                                   @RequestParam(required = false) String fio,
                                   @RequestParam(required = false) String email,
                                   @RequestParam(required = false) String mobilephone,
                                   HttpServletRequest request,
                                   Model model) {

        if (login.equals("") || password.equals("")) {
            model.addAttribute("emptyLoginOrPassword", true);
            return "registration";
        }

        if (userService.existsByLogin(login)) {
            model.addAttribute("exist", true);
            return "registration";
        }

        CustomUser dbUser = new CustomUser(fio, login, encrypt(password), email, mobilephone, UserRole.ADMIN, true);

        userService.addUser(dbUser);

        authenticateUserAndSetSession(login, password, request);
        return "redirect:/";
    }
}
