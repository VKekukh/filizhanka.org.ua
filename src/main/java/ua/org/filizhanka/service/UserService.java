package ua.org.filizhanka.service;

import ua.org.filizhanka.entity.CustomUser;
import ua.org.filizhanka.repository.UserRepository;

/**
 * Created by vkekukh on 15.12.2016.
 */
public interface UserService {
    void addUser(CustomUser customUser);
}
