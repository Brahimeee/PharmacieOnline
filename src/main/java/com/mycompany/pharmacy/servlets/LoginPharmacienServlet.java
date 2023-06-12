package com.mycompany.pharmacy.servlets;

import com.mycompany.pharmacy.aide.ConnectionDB;
import com.mycompany.pharmacy.dao.PharmacienDao;
import com.mycompany.pharmacy.entities.Pharmacien;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginPharmacienServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            //Partie code
            //Getting data from inputs:
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            
            //Validations:
            
            //Authenticating admin
            PharmacienDao pharmacienDao = new PharmacienDao(ConnectionDB.getFactory());
            Pharmacien pharmacien = pharmacienDao.getAdminByEmailAndPassword(email, password);
            //System.out.println(admin);
            HttpSession httpSession = request.getSession();
            if(pharmacien == null) {
                httpSession.setAttribute("message","l'émail ou le mot de passe incorrect !!");
                response.sendRedirect("login.jsp");
                return;
            }else {       
               //Login
               httpSession.setAttribute("current-user", pharmacien);
               response.sendRedirect("dashboard_pharmacien.jsp");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
