package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.User;
import service.UserService;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class UserServiceImpl implements UserService {

    UserDao userDao=new UserDaoImpl();

    @Override
    public int selUserByAccount(String account) throws Exception {
        return userDao.selUserByAccount(account);
    }

    @Override
    public User Login(String account, String password) throws Exception {
        return userDao.Login(account,password);
    }

    @Override
    public int register(User user) throws Exception {
        return userDao.register(user);
    }

    @Override
    public User findPassword(User user) throws Exception {
        return userDao.findPassword(user);
    }

    @Override
    public String findProblem(String account) throws Exception {
        return userDao.findProblem(account);
    }

    @Override
    public int updUser(User user) throws Exception {
        return userDao.updUser(user);
    }

    @Override
    public int updPassword(String account, String password, String newPassword) throws Exception {
        return userDao.updPassword(account,password,newPassword);
    }


}
