package ua.org.filizhanka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.org.filizhanka.entity.CustomUser;
import ua.org.filizhanka.entity.Users;
import ua.org.filizhanka.service.UserService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Dalvik on 03.01.2017.
 */
@Controller
public class ProfileController {

    @Autowired
    UserService userService;

    @RequestMapping("/profile")
    public String profile(Model model, CustomUser customUser, BindingResult result) {

        if (customUser.getName() == null) {
            User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            String login = user.getUsername();
            customUser = userService.getUserByLogin(login);
        }
        model.addAttribute("customUser", customUser);
        return "profile";
    }

    @RequestMapping(value = "/editProfile", method = RequestMethod.POST)
    public String editProfile(Model model, CustomUser customUser, BindingResult result) {
        model.addAttribute("customUser", customUser);
        model.addAttribute("btnEdit", true);
        return "redirect:/profile";
    }

    @RequestMapping(value = "/saveProfile", method = RequestMethod.POST)
    public String saveUser(Model model,
                           CustomUser customUser,
                           BindingResult result) {
        model.addAttribute(customUser);
        userService.saveUser(customUser);
        return "redirect:/profile";
    }

    @RequestMapping(value = "/users")
    public String users(Model model){
        Users users = new Users();
        users.setUsers(userService.getUsers());
        model.addAttribute("users", users);
        return "users";
    }

    @RequestMapping(value = "/saveUsers", method = RequestMethod.POST)
    public String saveUsers(@RequestParam("action") String action, Model model, Users users, BindingResult result){
        System.out.println(action);
        if (action.equals("Save")){
            List<CustomUser> listUsers = new ArrayList<>();
            listUsers.addAll(users.getUsers());
            for (CustomUser user : listUsers) {
                userService.saveUser(user);
            }
        }else if(action.equals("delete")){
            System.out.println("delete");
        }

        List<CustomUser> listUsers = users.getUsers();
        return  "redirect:/users";
    }
}
