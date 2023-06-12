package com.mycompany.pharmacy.servlets;
import com.mycompany.pharmacy.aide.ConnectionDB;
import com.mycompany.pharmacy.dao.ClientDao;
import com.mycompany.pharmacy.entities.Client;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import java.util.ArrayList;
import java.util.List;import java.io.*;
import javax.servlet.http.HttpSession;

public class ClientLoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            /* Ecrire votre code ici. */
       
            //Getting data from inputs:
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
                    
            //Authenticating login
            ClientDao clientDao = new ClientDao(ConnectionDB.getFactory());
            Client client = clientDao.getClientByEmailAndPassword(email, password);
            //System.out.println(admin);
            HttpSession httpSession = request.getSession();
            if(client == null) {
                httpSession.setAttribute("messages","l'émail ou le mot de passe incorrect !!");
                response.sendRedirect("login_client.jsp");
                return;
            }else {       
    
              httpSession.setAttribute("current-user", client);
               response.sendRedirect("mode-paiement.jsp");
  
            }   
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
        processRequest(request, response);
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
        processRequest(request, response);
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
