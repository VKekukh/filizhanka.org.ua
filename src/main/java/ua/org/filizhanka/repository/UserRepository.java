package ua.org.filizhanka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.org.filizhanka.entity.CustomUser;

/**
 * Created by vkekukh on 15.12.2016.
 */
public interface UserRepository extends JpaRepository<CustomUser, Integer> {
    @Query("SELECT u FROM CustomUser u where u.login = :login")
    CustomUser getUserByLogin(@Param("login") String login);
}
