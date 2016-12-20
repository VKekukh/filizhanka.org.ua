--Create table for users
drop table customUser;
CREATE TABLE customUser (
  id          NUMBER,
  name        VARCHAR2(256),
  login       VARCHAR2(40),
  password    VARCHAR2(4000),
  email       VARCHAR2(256),
  mobilephone VARCHAR2(256),
  role        VARCHAR2(40),
  CONSTRAINT customuser_id PRIMARY KEY (id),
  CONSTRAINT customuser_login_uk UNIQUE (login)
);
--create sequence for customUser
Drop SEQUENCE customUser_seq;
CREATE SEQUENCE customUser_seq
MINVALUE 1
START WITH 1
INCREMENT BY 1;

