/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bll;

/**
 *
 * @author Helix
 */
public class Aankoop{

    public Aankoop() {
    }
    
    private String Naam;
    private int Aantal;
    private double Prijs;
    private double Subtotaal;

    /**
     * @return the Naam
     */
    public String getNaam() {
        return Naam;
    }

    /**
     * @param Naam the Naam to set
     */
    public void setNaam(String Naam) {
        this.Naam = Naam;
    }

    /**
     * @return the Aantal
     */
    public int getAantal() {
        return Aantal;
    }

    /**
     * @param Aantal the Aantal to set
     */
    public void setAantal(int Aantal) {
        this.Aantal = Aantal;
    }

    /**
     * @return the Prijs
     */
    public double getPrijs() {
        return Prijs;
    }

    /**
     * @param Prijs the Prijs to set
     */
    public void setPrijs(double Prijs) {
        this.Prijs = Prijs;
    }

    /**
     * @return the Subtotaal
     */
    public double getSubtotaal() {
        return Prijs*Aantal;
    }
}
