/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.directorFuntion;

import dao.RequisFormDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.RequisForm;
import model.Users;

/**
 *
 * @author admin
 */
public class ProcessRequestDirector extends HttpServlet {

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
            out.println("<title>Servlet ProcessRequestDirector</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessRequestDirector at " + request.getContextPath() + "</h1>");
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
        RequisFormDAO formDAO = new RequisFormDAO();
        HttpSession session = request.getSession();
        Users user = (Users) (session.getAttribute("user"));
        List<RequisForm> list = formDAO.getAllFormsForDirector(user.getIdUser());
        request.setAttribute("listFormProcess", list);
        if (list.isEmpty()) {
            request.setAttribute("EmptyListProcess", "Empty list process");
        }

        request.getRequestDispatcher("root/display/director/processRequest.jsp").forward(request, response);
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
        String formIdString = request.getParameter("formId");
        String statusString = request.getParameter("status");
        int formId = Integer.parseInt(formIdString);
        int status = Integer.parseInt(statusString);

        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");

        if (user != null && user.getRoleId() == 3) {
            RequisFormDAO requisFormDAO = new RequisFormDAO();
            requisFormDAO.updateRequisFormStatusByFormId(formId, status, user.getIdUser());
        }

        response.sendRedirect("/processRequest");
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
