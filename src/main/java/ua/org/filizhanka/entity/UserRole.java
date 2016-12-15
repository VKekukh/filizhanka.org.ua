package ua.org.filizhanka.entity;

/**
 * Created by vkekukh on 15.12.2016.
 */
public enum UserRole {
    ADMIN, OPERATOR, CLIENT;

    @Override
    public String toString() {
        return "ROLE_" + name();
    }
}