package ua.org.filizhanka.entity;

import org.springframework.security.authentication.encoding.ShaPasswordEncoder;

import javax.persistence.*;

/**
 * Created by vkekukh on 15.12.2016.
 */
@Entity
public class CustomUser {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator = "customUser_seq")
    @SequenceGenerator(name = "customUser_seq",
            sequenceName = "customUser_seq", allocationSize = 1, initialValue = 1)
    private int id;
    private String name;
    private String login;
    private String password;
    private String email;
    private String mobilephone;
    @Enumerated(EnumType.STRING)
    private UserRole role;
    private Boolean active;

    public CustomUser() {
    }


    public CustomUser(String login, String password, UserRole role) {
        this.login = login;
        this.password = password;
        this.role = role;
    }

    public CustomUser(String name, String login, String password, String email, String mobilephone, UserRole role, Boolean active) {
        this.name = name;
        this.login = login;
        this.password = password;
        this.email = email;
        this.mobilephone = mobilephone;
        this.role = role;
        this.active = active;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {

        this.password = password;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }

    public String getMobilephone() {
        return mobilephone;
    }

    public void setMobilephone(String mobilephone) {
        this.mobilephone = mobilephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "CustomUser{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", mobilephone='" + mobilephone + '\'' +
                ", role=" + role +
                ", active=" + active +
                '}';
    }
}
