package dao;

import entity.User;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025 All rights reserved.
 */
public interface UserDao {

    public int selUserByAccount(String account) throws  Exception;

    public User Login(String account,String password) throws Exception;

    public int register(User user)throws Exception;

    public User findPassword(User user) throws Exception;

    public String findProblem(String account) throws Exception;

    public int updUser(User user) throws  Exception;



    public int updPassword(String account,String password,String newPassword) throws  Exception;
}
