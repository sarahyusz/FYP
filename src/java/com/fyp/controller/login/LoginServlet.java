/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.fyp.controller.login;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.fyp.model.bean.login;
import com.fyp.model.Dao.login.LoginDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDAO loginDao;

    public void init() {
        loginDao = new LoginDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        login loginBean = new login();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                String category = loginBean.getCategory();
                if (category != null) {
                    switch (category) {
                        case "admin":
                            response.sendRedirect("admin.jsp");
                            break;
                        case "student":
                            response.sendRedirect("student.jsp");
                            break;
                        case "lecturer":
                            String loginId = loginBean.getLoginId();
                            if (loginId != null) {
                                String position = loginDao.getLecturerPosition(loginId);
                                if (position != null) {
                                    switch (position) {
                                        case "examiner":
                                            response.sendRedirect("examiner.jsp");
                                            break;
                                        case "supervisor":
                                            response.sendRedirect("supervisor.jsp");
                                            break;
                                        default:
                                            response.sendRedirect("generic.jsp");
                                            break;
                                    }
                                } else {
                                    response.sendRedirect("generic.jsp");
                                }
                            } else {
                                response.sendRedirect("generic.jsp");
                            }
                            break;
                        default:
                            response.sendRedirect("generic.jsp");
                            break;
                    }
                } else {
                    response.sendRedirect("generic.jsp");
                }
            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
