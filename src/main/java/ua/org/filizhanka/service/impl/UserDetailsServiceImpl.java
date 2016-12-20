package ua.org.filizhanka.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import ua.org.filizhanka.entity.CustomUser;
import ua.org.filizhanka.service.UserService;
import org.springframework.security.core.userdetails.User;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Dalvik on 20.12.2016.
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {

        CustomUser customUser = userService.getUserByLogin(login);
        if (customUser == null) {
            throw new UsernameNotFoundException(login + " not found");
        }

        Set<GrantedAuthority> roles = new HashSet<>();
        roles.add(new SimpleGrantedAuthority(customUser.getRole().toString()));
        return new User(customUser.getLogin(), customUser.getPassword(), roles);
    }
}
