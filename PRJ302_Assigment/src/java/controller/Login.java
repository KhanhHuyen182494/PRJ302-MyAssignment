/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UsersDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Users;

/**
 *
 * @author admin
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        for (Cookie cooky : cookies) {
            System.out.println(cooky.getName() + " " + cooky.getValue());
        }
        if (cookies != null) {

            for (Cookie cooki : cookies) {
                if (cooki.getName().equals("rememberC")) {

                    request.setAttribute("remember", cooki.getValue());
                } else if (cooki.getName().equals("userC")) {

                    request.setAttribute("user", cooki.getValue());
                } else if (cooki.getName().equals("passC")) {

                    request.setAttribute("pass", cooki.getValue());
                }
            }
        }
        request.getRequestDispatcher("root/authen/login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("user");

        String password = request.getParameter("password");

        String remember = request.getParameter("rememberMe");

        UsersDao usersDao = new UsersDao();
        Users user = usersDao.getUserByUserNameAndPassword(userName, password);
        if (user != null) {
            if (remember != null) {

                Cookie remember_cookie = new Cookie("rememberC", remember);
                Cookie user_cookie = new Cookie("userC", userName);
                Cookie pass_cookie = new Cookie("passC", password);

                remember_cookie.setMaxAge(60 * 60 * 24 * 7);
                user_cookie.setMaxAge(60 * 60 * 24 * 7);
                pass_cookie.setMaxAge(60 * 60 * 24 * 7);

                response.addCookie(remember_cookie);
                response.addCookie(user_cookie);
                response.addCookie(pass_cookie);
            }

            int role = user.getRoleId();
            request.setAttribute("name", user.getName());
            switch (role) {
                case 1 ->
                    request.getRequestDispatcher("root/display/employee/home.jsp").forward(request, response);
                case 2 -> {
                    request.getRequestDispatcher("root/display/management/home.jsp").forward(request, response);

                }
                case 3 -> {
                    request.getRequestDispatcher("root/display/director/home.jsp").forward(request, response);
                }
            }
        } else {
            request.setAttribute("ErrorLogin", "User or Password is not correct");
            request.getRequestDispatcher("root/authen/login.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
