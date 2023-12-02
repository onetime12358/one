package com.text.dao;

import com.text.bean.User;
public interface UserDao {
    //注册
    //1. 验证用户名是否存在
    /**
     * 功能：根据用户名查找User对象
     * @param username
     * @return
     */
    User findUserByUsername(String username);

    //2. 添加数据

    /**
     * 功能：添加user信息到数据库
     * @param user
     * @return
     */
    boolean addUser(User user);


}
