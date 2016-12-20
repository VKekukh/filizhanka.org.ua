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

    @Bean
    public CommandLineRunner demo(final UserDetailsService userService) {
        return new CommandLineRunner() {
            @Override
            public void run(String... strings) throws Exception {
                /*userService.addUser(new CustomUser("admin", "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8", UserRole.ADMIN));
                userService.addUser(new CustomUser("user", "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8", UserRole.OPERATOR));*/
                UserDetails user = userService.loadUserByUsername("admin");
                System.out.println(user.toString());

            }
        };
    }
}
