package com.mycompany.pharmacy.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "pharmacies")
public class Pharmacie {
    
    @Id
    private String codeLicence ;
    private String nom;
    private String horairOuverture;
    private String joursGarde;
    @OneToOne
    private int idPharmacien;
    @ManyToOne
    private int idAdmin;

    public Pharmacie() {
    }

    public Pharmacie(String codeLicence, String nom, String horairOuverture, String joursGarde, int idPharmacien, int idAdmin) {
        this.codeLicence = codeLicence;
        this.nom = nom;
        this.horairOuverture = horairOuverture;
        this.joursGarde = joursGarde;
        this.idPharmacien = idPharmacien;
        this.idAdmin = idAdmin;
    }

    public String getCodeLicence() {
        return codeLicence;
    }

    public void setCodeLicence(String codeLicence) {
        this.codeLicence = codeLicence;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getHorairOuverture() {
        return horairOuverture;
    }

    public void setHorairOuverture(String horairOuverture) {
        this.horairOuverture = horairOuverture;
    }

    public String getJoursGarde() {
        return joursGarde;
    }

    public void setJoursGarde(String joursGarde) {
        this.joursGarde = joursGarde;
    }

    public int getIdPharmacien() {
        return idPharmacien;
    }

    public void setIdPharmacien(int idPharmacien) {
        this.idPharmacien = idPharmacien;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    @Override
    public String toString() {
        return "Pharmacie{" + "codeLicence=" + codeLicence + ", nom=" + nom + ", horairOuverture=" + horairOuverture + ", joursGarde=" + joursGarde + ", idPharmacien=" + idPharmacien + ", idAdmin=" + idAdmin + '}';
    }
    
    
}
