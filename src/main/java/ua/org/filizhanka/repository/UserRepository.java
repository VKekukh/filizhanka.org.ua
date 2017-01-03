package ua.org.filizhanka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.org.filizhanka.entity.CustomUser;

import java.util.List;

/**
 * Created by vkekukh on 15.12.2016.
 */
public interface UserRepository extends JpaRepository<CustomUser, Integer> {
    @Query("SELECT u FROM CustomUser u where u.login = :login")
    CustomUser getUserByLogin(@Param("login") String login);

    @Query("SELECT CASE WHEN COUNT(u) > 0 THEN true ELSE false END FROM CustomUser u WHERE u.login = :login")
    boolean existsByLogin(@Param("login") String login);

    @Query("select u from CustomUser u order by u.id")
    List<CustomUser> getUsers();
}
