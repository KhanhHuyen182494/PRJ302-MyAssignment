/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.employeeFunction;

import dao.RequisFormDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.RequisForm;
import model.Users;

/**
 *
 * @author admin
 */
public class CreateRequest extends HttpServlet {

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
            out.println("<title>Servlet CreateRequest</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateRequest at " + request.getContextPath() + "</h1>");
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
         request.getRequestDispatcher("root/display/employee/home.jsp").forward(request, response);
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
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {

            Date dateStart = dateFormat.parse(request.getParameter("dateStart"));
            Date dateEnd = dateFormat.parse(request.getParameter("dateEnd"));

            if (dateStart.after(dateEnd)) {
                request.setAttribute("ErrDate", "Date start must before date end");
                request.getRequestDispatcher("root/display/employee/home.jsp").forward(request, response);
            } else {
                String issue = request.getParameter("issue");
                HttpSession session = request.getSession();
                Users user = (Users) (session.getAttribute("user"));
                RequisFormDAO formDAO = new RequisFormDAO();
                RequisForm requestFom = new RequisForm();
                requestFom.setDateStart(dateStart);
                requestFom.setDateEnd(dateEnd);
                requestFom.setIssue(issue);
                requestFom.setStatus(0);
                requestFom.setUserIdAcceptForm(user.getIdUser());
                requestFom.setUserIdCreateForm(user.getManagerId());
                
                formDAO.inserForm(dateStart, dateEnd, issue, 0, user.getIdUser(), user.getManagerId());
                request.setAttribute("CreateForm", "Create form success!");
                request.getRequestDispatcher("root/display/employee/home.jsp").forward(request, response);

            }
        } catch (ParseException ex) {
            System.out.println(ex);
        } 
    }

    /**
     * Returns a short description of the servlet.SS
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
