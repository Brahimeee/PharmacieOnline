package com.mycompany.pharmacy.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "pharmacien")
public class Pharmacien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idPharmacien;
    private String nom;
    private String password;
    private String email;
    private String codeVerification;
    private String tel;
    
    public Pharmacien() {
    }
    
    public Pharmacien(String nom, String password, String email, String codeVerification, String tel) {
        this.nom = nom;
        this.password = password;
        this.email = email;
        this.codeVerification = codeVerification;
        this.tel = tel;
        
    }

    public Pharmacien(int idPharmacien, String nom, String password, String email, String codeVerification, String tel) {
        this.idPharmacien = idPharmacien;
        this.nom = nom;
        this.password = password;
        this.email = email;
        this.codeVerification = codeVerification;
        this.tel = tel;
    }

    
    /**
     * @return the id
     */
    public int getIdPharmacien() {
        return idPharmacien;
    }

    /**
     * @param idPharmacien
     */
    public void setIdPharmacien(int idPharmacien) {
        this.idPharmacien = idPharmacien;
    }

    /**
     * @return the nom
     */
    public String getNom() {
        return nom;
    }

    /**
     * @param nom the nom to set
     */
    public void setNom(String nom) {
        this.nom = nom;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the codeVer
     */
    public String getCodeVerification() {
        return codeVerification;
    }

    /**
     * @param codeVerification
     */
    public void setCodeVerification(String codeVerification) {
        this.codeVerification = codeVerification;
    }

    /**
     * @return the tel
     */
    public String getTel() {
        return tel;
    }

    /**
     * @param tel the tel to set
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public String toString() {
        return "Pharmacien{" + "id=" + idPharmacien + ", nom=" + nom + ", password=" + password + ", email=" + email + ", codeVer=" + codeVerification + ", tel=" + tel +'}';
    }
    
    
    

    

        

    
}
