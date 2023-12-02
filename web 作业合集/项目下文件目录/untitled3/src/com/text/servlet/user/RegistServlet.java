package com.text.servlet.user;

import com.text.bean.User;
import com.text.dao.UserDao;
import com.text.dao.impl.UserDaoImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class RegistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        User user=new User(0,username,password,email);*/
        request.setCharacterEncoding("utf-8");
        Map<String, String[]> parameterMap = request.getParameterMap();//map集合中的key值是什么？表单的name属性值
        User user=new User();
        //BeanUtils的使用
        try {
            BeanUtils.populate(user,parameterMap);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        System.out.println("user = " + user);
        //2. 处理注册的业务
        UserDao userDao=new UserDaoImpl();
        User userByUsername = userDao.findUserByUsername(user.getUsername());
        if(userByUsername==null){
            //可以注册
            userDao.addUser(user);
            request.getRequestDispatcher("regist_success.html").forward(request,response);
        }else{
            request.getRequestDispatcher("regist_error.html").forward(request,response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
