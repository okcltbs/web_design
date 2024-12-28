package com.example.spring_web_design.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserInfo {
    private int userId;     //自增主键
    private String username;    //用户名
    private String password;    //密码
    private int userType;   //用户类型，0是管理员，1是普通用户
    private String realName;    //真实姓名
    private int idType; //证件类型，0是身份证，1是其他
    private String idNum;  //证件号码
    private String phone;   //手机号
    private String userInfo;    //用户简介

    private LocalDateTime createdTime;  //注册时间
    private LocalDateTime modifiedTime; //修改时间
}
