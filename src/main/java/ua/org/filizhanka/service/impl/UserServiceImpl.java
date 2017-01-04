package ua.org.filizhanka.service.impl;


import ua.org.filizhanka.entity.CustomUser;
import ua.org.filizhanka.repository.UserRepository;
import ua.org.filizhanka.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by vkekukh on 15.12.2016.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional
    public void addUser(CustomUser customUser) {
        userRepository.saveAndFlush(customUser);
    }

    @Override
    @Transactional
    public void saveUser(CustomUser customUser) {
        userRepository.save(customUser);
    }

    @Override
    @Transactional
    public void deleteUser(CustomUser customUser) {
        userRepository.delete(customUser);
    }

    @Override
    @Transactional(readOnly = true)
    public CustomUser getUserByLogin(String login) {
        return userRepository.getUserByLogin(login);
    }

    @Override
    @Transactional(readOnly = true)
    public boolean existsByLogin(String login) {
        if (userRepository.existsByLogin(login)){
            return true;
        }
        return false;
    }

    @Override
    public List<CustomUser> getUsers() {
        List<CustomUser>  users = new ArrayList<>();
        users = userRepository.getUsers();
        return users;
    }
}
