package com.mycompany.pharmacy.entities;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "medicaments")
public class Medicament {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idMedicament;
    private String nom;
    @Column(length = 3000)
    private String description;
    private int prixUnitaire;
    private int quantite;
    private String dateFabrication;
    private String dateExp;
    private String image;
    
    @ManyToMany(mappedBy = "medicaments")
    private List<Pharmacie> pharmacies = new ArrayList<>();
    
    public Medicament() {
    }

    public Medicament(String nom, String description, int prixUnitaire, int quantite, String dateFabrication, String dateExp, String image) {
        this.nom = nom;
        this.description = description;
        this.prixUnitaire = prixUnitaire;
        this.quantite = quantite;
        this.dateFabrication = dateFabrication;
        this.dateExp = dateExp;
        this.image = image;
    }

    public int getIdMedicament() {
        return idMedicament;
    }

    public void setIdMedicament(int idMedicament) {
        this.idMedicament = idMedicament;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrixUnitaire() {
        return prixUnitaire;
    }

    public void setPrixUnitaire(int prixUnitaire) {
        this.prixUnitaire = prixUnitaire;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public String getDateFabrication() {
        return dateFabrication;
    }

    public void setDateFabrication(String dateFabrication) {
        this.dateFabrication = dateFabrication;
    }

    public String getDateExp() {
        return dateExp;
    }

    public void setDateExp(String dateExp) {
        this.dateExp = dateExp;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<Pharmacie> getPharmacies() {
        return pharmacies;
    }

    public void setPharmacies(List<Pharmacie> pharmacies) {
        this.pharmacies = pharmacies;
    }

    @Override
    public String toString() {
        return "Medicament{" + "idMedicament=" + idMedicament + ", nom=" + nom + ", description=" + description + ", prixUnitaire=" + prixUnitaire + ", quantite=" + quantite + ", dateFabrication=" + dateFabrication + ", dateExp=" + dateExp + ", image=" + image + ", pharmacies=" + pharmacies + '}';
    }
}
