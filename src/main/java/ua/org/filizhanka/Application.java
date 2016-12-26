package ua.org.filizhanka;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import ua.org.filizhanka.entity.CustomUser;
import ua.org.filizhanka.entity.UserRole;
import ua.org.filizhanka.service.UserService;

import java.util.Locale;

/**
 * Created by vkekukh on 15.12.2016.
 */
@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        Locale.setDefault(Locale.ENGLISH);
        SpringApplication.run(Application.class, args);
    }
}
