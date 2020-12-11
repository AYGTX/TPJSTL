package serv;

import java.io.Serializable;
import java.time.format.DateTimeFormatter;

public class BeanClient implements Serializable {

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    private String nom;
    private String prenom;
    private String adresse;
    private String telephone;
    private String email;
    private String montant;
    private String modep;
    private String statusp;
    private String statusl;
    private String date;

    public String getMontant() {
        return montant;
    }

    public void setMontant(String montant) {
        this.montant = montant;
    }

    public String getModep() {
        return modep;
    }

    public void setModep(String modep) {
        this.modep = modep;
    }

    public String getStatusp() {
        return statusp;
    }

    public void setStatusp(String statusp) {
        this.statusp = statusp;
    }

    public String getStatusl() {
        return statusl;
    }

    public void setStatusl(String statusl) {
        this.statusl = statusl;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        String x = java.time.LocalDate.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        this.date = x;
    }

    public BeanClient() {
    }
}
