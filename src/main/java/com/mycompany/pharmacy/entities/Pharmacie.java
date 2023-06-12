package com.mycompany.pharmacy.entities;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity

public class Pharmacie {

    @Id
    private String codeLicence;
    private String nom;
    private String horairOuverture;
    private String joursGarde;
    private double altitude;
    private double longitude;
    
    @OneToOne
    private Pharmacien pharmacien;

    @ManyToMany
    @JoinTable(
            name = "medicament_pharmacie",
            joinColumns = @JoinColumn(name = "pharmacie_id"),
            inverseJoinColumns = @JoinColumn(name = "medicament_id")
    )
    private List<Medicament> medicaments = new ArrayList<>();

    public Pharmacie() {
    }

    public Pharmacie(String codeLicence, String nom, String horairOuverture, String joursGarde, double altitude, double longitude, Pharmacien pharmacien) {
        this.codeLicence = codeLicence;
        this.nom = nom;
        this.horairOuverture = horairOuverture;
        this.joursGarde = joursGarde;
        this.altitude = altitude;
        this.longitude = longitude;
        this.pharmacien = pharmacien;
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
    
    public double getAltitude() {
        return altitude;
    }

    public void setAltitude(double altitude) {
        this.altitude = altitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public Pharmacien getPharmacien() {
        return pharmacien;
    }

    public void setPharmacien(Pharmacien pharmacien) {
        this.pharmacien = pharmacien;
    }

    public List<Medicament> getMedicaments() {
        return medicaments;
    }

    public void setMedicaments(List<Medicament> medicaments) {
        this.medicaments = medicaments;
    }

    @Override
    public String toString() {
        return "Pharmacie{" + "codeLicence=" + codeLicence + ", nom=" + nom + ", horairOuverture=" + horairOuverture + ", joursGarde=" + joursGarde + ", altitude=" + altitude + ", longitude=" + longitude + ", pharmacien=" + pharmacien + ", medicaments=" + medicaments + '}';
    }
}
