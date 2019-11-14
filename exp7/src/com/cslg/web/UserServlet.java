package com.cslg.web;

import com.cslg.dao.LoginUser;
import com.cslg.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(value = "/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        User loginUser = new User(request.getParameter("name"), request.getParameter("password"));
        LoginUser loginUser1 = new LoginUser();
        User login = loginUser1.login(loginUser);
        if(login!=null){
            request.setAttribute("info",login);
            request.getRequestDispatcher("success1.jsp").forward(request,response);
        }
        else{
            request.setAttribute("info","输入信息有误！");
            request.getRequestDispatcher("error.jsp").forward(request,response);
        }
    }
}
