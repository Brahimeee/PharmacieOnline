package com.mycompany.pharmacy.dao;

import com.mycompany.pharmacy.entities.Medicament;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class MedicamentDao {
    private final SessionFactory factory;

    public MedicamentDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //save 
    public boolean saveMedicament(Medicament medicament) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();

            session.save(medicament);

            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }
        return f;
    }
    
    //update
    public void updateMedicament(Medicament medicament) {
        Session session = factory.getCurrentSession();
        Transaction tx = null;
        
        try {
            tx = session.beginTransaction();
            session.update(medicament);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    //delete 
    public boolean deleteMedicament(int id) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            
            Medicament medicament = session.get(Medicament.class, id);
            
            if(medicament != null) {
                session.delete(medicament);
                f = true;
            }
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }
        return f;
    }
    
    //get medicament
    public Medicament getMedicament(int id) {
        Medicament medicament = null;
        Transaction tx = null;
        
        try {
            Session session = this.factory.openSession();
            tx = session.beginTransaction();
            
            medicament = session.get(Medicament.class, id);
            tx.commit();
        } catch (Exception e) {
            if(tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
        return medicament;
    }
    
    //get medicament by name
    public List<Medicament> searchByName(String nom) {
        Session session = this.factory.openSession();
        String hql = "from Medicament where nom like :n";
        Query<Medicament> query = session.createQuery(hql, Medicament.class);
        query.setParameter("n", "%" + nom + "%");
        List<Medicament> medicament = query.getResultList();
        session.close();
        return medicament;
    }
    
    //get all medicaments
    public List<Medicament> getAllMedicaments() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Medicament");
        List<Medicament> medicaments = query.list();

        return medicaments;
    }
}
