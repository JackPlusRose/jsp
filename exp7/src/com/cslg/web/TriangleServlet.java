package com.cslg.web;

import com.cslg.model.Triangle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/triangle")
public class TriangleServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int a=Integer.parseInt(request.getParameter("a"));
        int b=Integer.parseInt(request.getParameter("b"));
        int c=Integer.parseInt(request.getParameter("c"));
        Triangle triangle = new Triangle(a, b, c);
        double ss=triangle.mj();
        System.out.println(ss);
        request.setAttribute("mj",String.valueOf(ss));
        request.getRequestDispatcher("show.jsp").forward(request,response);
    }
}
