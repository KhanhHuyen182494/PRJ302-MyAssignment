/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.directorFuntion;

import dao.DivisionDAO;
import dao.UsersDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Division;
import model.UserModel;
import model.Users;

/**
 *
 * @author admin
 */
public class ProfileDirector extends HttpServlet {

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
            out.println("<title>Servlet ProfileDirector</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProfileDirector at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");

      
        UsersDao usersDao = new UsersDao();
        UserModel userModel = usersDao.getInformationUser(user.getIdUser());

        
        DivisionDAO divisionDAO = new DivisionDAO();
        List<Division> divisions = divisionDAO.getAllDivision();

        // Set attributes for the JSP
        request.setAttribute("listDivision", divisions);
        request.setAttribute("userI", userModel); // User information

        // Forward the request to the profile JSP page
        request.getRequestDispatcher("root/display/director/profile.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");

        // Retrieve the new data from the form
        String name = request.getParameter("Name");
        String phone = request.getParameter("Phone");
        String address = request.getParameter("Adress");
        String email = request.getParameter("Email");
        int divisionId = Integer.parseInt(request.getParameter("divisionId"));
         
        
        if (name == null || name.isEmpty() || phone == null || phone.isEmpty() || email == null || email.isEmpty()) {
            request.setAttribute("errorMessage", "All fields must be filled.");
            request.getRequestDispatcher("root/display/director/profile.jsp").forward(request, response);
            return;
        }
        
        // Optionally handle management_id as needed for the director role
        int management_id = 0;
        management_id = switch (divisionId) {
            case 1 -> 4;
            case 2 -> 2;
            default -> 3;
        };

        // Update the user's profile in the database
        UsersDao usersDao = new UsersDao();
        usersDao.updateProfileByUserId(user.getIdUser(), name, phone, address, email, divisionId, management_id);

        // Redirect to another page after saving changes (e.g., the home page)
        response.sendRedirect("home");
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
