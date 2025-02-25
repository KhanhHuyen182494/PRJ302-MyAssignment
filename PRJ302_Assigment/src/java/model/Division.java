/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Division {
    private int divisionId ;
    private String divisionName;
    private String description;

    public Division() {
    }

    public Division(int divisionId, String divisionName, String description) {
        this.divisionId = divisionId;
        this.divisionName = divisionName;
        this.description = description;
    }

    public int getDivisionId() {
        return divisionId;
    }

    public void setDivisionId(int divisionId) {
        this.divisionId = divisionId;
    }

    public String getDivisionName() {
        return divisionName;
    }

    public void setDivisionName(String divisionName) {
        this.divisionName = divisionName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Division{" + "divisionId=" + divisionId + ", divisionName=" + divisionName + ", description=" + description + '}';
    }
    
}
