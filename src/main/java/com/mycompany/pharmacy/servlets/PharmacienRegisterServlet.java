package com.mycompany.pharmacy.servlets;

import com.mycompany.pharmacy.aide.ConnectionDB;
import com.mycompany.pharmacy.aide.EnvoyerEmail;
import com.mycompany.pharmacy.dao.PharmacienDao;
import com.mycompany.pharmacy.entities.Pharmacien;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
// Importez les bibliothèques nécessaires de JavaMail
//import javax.mail.*;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//import java.util.Properties;
//import com.twilio.Twilio;
//import com.twilio.rest.api.v2010.account.Message;
//import com.twilio.type.PhoneNumber;

public class PharmacienRegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String nom = request.getParameter("nom");
            String email = request.getParameter("email");
            String tel = request.getParameter("tel");
            String password = request.getParameter("password");
            String confirmePassword = request.getParameter("confirmePassword");
            
            
            // Générer un code de vérification à 6 chiffres
            String verificationCode = generateVerificationCode();
            
            if (!password.equals(confirmePassword)) {
                request.setAttribute("errorMessage", "Les deux mots de passe doivent être identiques.");
                RequestDispatcher rd = request.getRequestDispatcher("pharmacien_register.jsp");
                rd.forward(request, response);

                return;
            }
            
            // Envoyer le code de vérification par SMS
            //sendVerificationCodeSMS(tel, verificationCode);
            
            Pharmacien pharmacien = new Pharmacien();

            pharmacien.setNom(nom);

            pharmacien.setEmail(email);

            pharmacien.setTel(tel);

            pharmacien.setPassword(password);

            pharmacien.setCodeVerification(verificationCode);

            //Enregistrer pharmacien
            PharmacienDao pDao = new PharmacienDao(ConnectionDB.getFactory());

            pDao.savePharmacien(pharmacien);

            out.println("Pharmacien enregistrer avec sucess...");           
            
            HttpSession httpSession = request.getSession();

            httpSession.setAttribute("messages", "Pharmacien enregistrer avec sucess...");

            response.sendRedirect("pharmacie_register.jsp");

            return;

        }
    }

    private String generateVerificationCode() {
        // Générer un code de vérification aléatoire à 6 chiffres
        Random random = new Random();
        int code = random.nextInt(900000) + 100000;
        return String.valueOf(code);
    }

//    private void sendVerificationCodeSMS(String phoneNumber, String verificationCode) {
//        // Configurez les informations d'authentification pour Twilio
//        final String accountSid = "ACbccf7feec97fa1d548e38a1d1e2c1acb";
//        final String authToken = "610d906930ebeb4b8c447703c548f068";
//        final String twilioPhoneNumber = "+12707976580";
//
//        // Initialisez la connexion Twilio
//        Twilio.init(accountSid, authToken);
//
//        try {
//            // Envoyez le SMS contenant le code de vérification
//            Message.creator(
//                    new PhoneNumber(phoneNumber),
//                    new PhoneNumber(twilioPhoneNumber),
//                    "Votre code de vérification est : " + verificationCode)
//                    .create();
//
//            //System.out.println(message.getSid());
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

    
    
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
