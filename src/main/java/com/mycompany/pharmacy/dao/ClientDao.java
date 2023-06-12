package com.mycompany.pharmacy.dao;

import com.mycompany.pharmacy.entities.Client;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class ClientDao {

    private final SessionFactory factory;

    public ClientDao(SessionFactory factory) {
        this.factory = factory;
    }

    //save 
    public boolean saveClient(Client client) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();

            session.save(client);

            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }
        return f;
    }

    // get client by email and password
    public Client getClientByEmailAndPassword(String email, String password) {
        Client client = null;
        try {
            String query = "from Client where email =: e and password =: i";

            try (Session session = this.factory.openSession()) {
                Query q = session.createQuery(query);
                q.setParameter("e", email);
                q.setParameter("i", password);

                client = (Client) q.uniqueResult();
            }

        } catch (HibernateException e) {
        }
        return client;
    }

}
