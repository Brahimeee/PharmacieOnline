package com.mycompany.pharmacy.entities;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "client")
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idClient;
    private String nom;
    private String email;
    private String password;
   
    public Client() {
    }
     public Client(String nom, String email, String password) {
        this.nom = nom;
        this.email= email;
        this.password = password;
        
    }

    public Client(int idClient, String nom, String email, String password) {
        this.idClient = idClient;
        this.nom = nom;
        this.email = email;
        this.password = password;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }
    
    
     
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Client{" + "idClient=" + idClient + ", nom=" + nom + ", email=" + email + ", password=" + password + '}';
    }
     
     
    
    
}
    
