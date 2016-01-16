/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bll;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Helix
 */
@Entity
@Table(name = "klant")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Klant.findAll", query = "SELECT k FROM Klant k"),
    @NamedQuery(name = "Klant.findById", query = "SELECT k FROM Klant k WHERE k.id = :id"),
    @NamedQuery(name = "Klant.findByVoornaam", query = "SELECT k FROM Klant k WHERE k.voornaam = :voornaam"),
    @NamedQuery(name = "Klant.findByAchternaam", query = "SELECT k FROM Klant k WHERE k.achternaam = :achternaam"),
    @NamedQuery(name = "Klant.findByStraatnaam", query = "SELECT k FROM Klant k WHERE k.straatnaam = :straatnaam"),
    @NamedQuery(name = "Klant.findByHuisnummer", query = "SELECT k FROM Klant k WHERE k.huisnummer = :huisnummer"),
    @NamedQuery(name = "Klant.findByPostcode", query = "SELECT k FROM Klant k WHERE k.postcode = :postcode"),
    @NamedQuery(name = "Klant.findByStad", query = "SELECT k FROM Klant k WHERE k.stad = :stad"),
    @NamedQuery(name = "Klant.findByTelefoon", query = "SELECT k FROM Klant k WHERE k.telefoon = :telefoon"),
    @NamedQuery(name = "Klant.findByEmail", query = "SELECT k FROM Klant k WHERE k.email = :email"),
    @NamedQuery(name = "Klant.findByPaswoord", query = "SELECT k FROM Klant k WHERE k.paswoord = :paswoord")})
public class Klant implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "Voornaam")
    private String voornaam;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "Achternaam")
    private String achternaam;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "Straatnaam")
    private String straatnaam;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "Huisnummer")
    private String huisnummer;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Postcode")
    private int postcode;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "Stad")
    private String stad;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "Telefoon")
    private String telefoon;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "Email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "Paswoord")
    private String paswoord;

    public Klant() {
    }

    public Klant(Integer id) {
        this.id = id;
    }

    public Klant(Integer id, String voornaam, String achternaam, String straatnaam, String huisnummer, int postcode, String stad, String telefoon, String email, String paswoord) {
        this.id = id;
        this.voornaam = voornaam;
        this.achternaam = achternaam;
        this.straatnaam = straatnaam;
        this.huisnummer = huisnummer;
        this.postcode = postcode;
        this.stad = stad;
        this.telefoon = telefoon;
        this.email = email;
        this.paswoord = paswoord;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVoornaam() {
        return voornaam;
    }

    public void setVoornaam(String voornaam) {
        this.voornaam = voornaam;
    }

    public String getAchternaam() {
        return achternaam;
    }

    public void setAchternaam(String achternaam) {
        this.achternaam = achternaam;
    }

    public String getStraatnaam() {
        return straatnaam;
    }

    public void setStraatnaam(String straatnaam) {
        this.straatnaam = straatnaam;
    }

    public String getHuisnummer() {
        return huisnummer;
    }

    public void setHuisnummer(String huisnummer) {
        this.huisnummer = huisnummer;
    }

    public int getPostcode() {
        return postcode;
    }

    public void setPostcode(int postcode) {
        this.postcode = postcode;
    }

    public String getStad() {
        return stad;
    }

    public void setStad(String stad) {
        this.stad = stad;
    }

    public String getTelefoon() {
        return telefoon;
    }

    public void setTelefoon(String telefoon) {
        this.telefoon = telefoon;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPaswoord() {
        return paswoord;
    }

    public void setPaswoord(String paswoord) {
        this.paswoord = paswoord;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Klant)) {
            return false;
        }
        Klant other = (Klant) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bll.Klant[ id=" + id + " ]";
    }
    
}
