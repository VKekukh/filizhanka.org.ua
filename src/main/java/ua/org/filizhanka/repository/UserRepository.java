package ua.org.filizhanka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.org.filizhanka.entity.CustomUser;

/**
 * Created by vkekukh on 15.12.2016.
 */
public interface UserRepository extends JpaRepository<CustomUser,Integer> {
    
}
