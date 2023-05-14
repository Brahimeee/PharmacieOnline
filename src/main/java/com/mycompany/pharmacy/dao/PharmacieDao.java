package com.mycompany.pharmacy.dao;

import org.hibernate.SessionFactory;

public class PharmacieDao {
    private final SessionFactory factory;

    public PharmacieDao(SessionFactory factory) {
        this.factory = factory;
    }
}
