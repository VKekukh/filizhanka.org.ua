package ua.org.filizhanka.service;

import ua.org.filizhanka.entity.CustomUser;

/**
 * Created by vkekukh on 15.12.2016.
 */
public interface UserService {
    void addUser(CustomUser customUser);

    CustomUser getUserByLogin(String login);
}
