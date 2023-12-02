package com.text.servlet.user;

import com.text.bean.User;
import com.text.dao.UserDao;
import com.text.dao.impl.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 获得请求参数

        request.setCharacterEncoding("utf-8");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        //2. 处理业务   3. 给出响应(页面跳转)
        UserDao userDao=new UserDaoImpl();
        User userByUsername = userDao.findUserByUsername(username);
        if(userByUsername!=null){
            //说明用户名是对的，接下来验证密码
            if(userByUsername.getPassword().equals(password)){
                request.getRequestDispatcher("login_success.html").forward(request,response);
            }else{
                //说明密码不对
                request.getRequestDispatcher("login_error.html").forward(request,response);
            }
        }else{
            //说明用户名不对
            request.getRequestDispatcher("login_error.html").forward(request,response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
