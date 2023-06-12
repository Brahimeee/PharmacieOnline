package com.mycompany.pharmacy.dao;

import com.mycompany.pharmacy.entities.Pharmacie;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class PharmacieDao {
    private final SessionFactory factory;

    public PharmacieDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    
    //enregistrer pharmacie
    public boolean savePharmacie(Pharmacie pharmacie) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(pharmacie);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }
        return f;
    }
}
