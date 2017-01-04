package ua.org.filizhanka.entity;

import java.util.List;

/**
 * Created by Dalvik on 03.01.2017.
 */
public class Users {

    private List<CustomUser> users;

    public Users() {
    }


    public List<CustomUser> getUsers() {
        return users;
    }

    public void setUsers(List<CustomUser> users) {
        this.users = users;
    }
}
