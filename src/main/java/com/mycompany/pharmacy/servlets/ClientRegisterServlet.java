package com.mycompany.pharmacy.servlets;

import com.mycompany.pharmacy.aide.ConnectionDB;
import com.mycompany.pharmacy.dao.ClientDao;
import com.mycompany.pharmacy.entities.Client;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ClientRegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // ecrire votre code ici
            String nom = request.getParameter("nom");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String confirmePassword = request.getParameter("confirmePassword");

            if (!password.equals(confirmePassword)) {
                request.setAttribute("errorMessage", "Les deux mots de passe doivent être identiques.");
                RequestDispatcher rd = request.getRequestDispatcher("client_register.jsp");
                rd.forward(request, response);
                
                return;
            }
            Client client = new Client();

            client.setNom(nom);
            client.setEmail(email);
            client.setPassword(password);

            //nom save...
            ClientDao cDao = new ClientDao(ConnectionDB.getFactory());

            cDao.saveClient(client);
            
            response.sendRedirect("login_client.jsp");
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
