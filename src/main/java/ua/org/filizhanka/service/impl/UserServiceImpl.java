package ua.org.filizhanka.service.impl;


import ua.org.filizhanka.entity.CustomUser;
import ua.org.filizhanka.repository.UserRepository;
import ua.org.filizhanka.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by vkekukh on 15.12.2016.
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional
    public void addUser(CustomUser customUser) {
        userRepository.saveAndFlush(customUser);
    }
}
