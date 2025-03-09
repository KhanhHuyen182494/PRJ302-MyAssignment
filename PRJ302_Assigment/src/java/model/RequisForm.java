/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author admin
 */
public class RequisForm {

    private int formId;
    private Date dateStart;
    private Date dateEnd;
    private String issue;
    private int status;
    private int userIdCreateForm;
    private int userIdAcceptForm;

    public RequisForm() {
    }

    public RequisForm(int status, Date dateStart, Date dateEnd, String issue, int userIdCreateForm, int userIdAcceptForm, int aInt3) {
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
        this.issue = issue;
        this.status = status;
        this.userIdCreateForm = userIdCreateForm;
        this.userIdAcceptForm = userIdAcceptForm;
    }

    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    public Date getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getUserIdCreateForm() {
        return userIdCreateForm;
    }

    public void setUserIdCreateForm(int userIdCreateForm) {
        this.userIdCreateForm = userIdCreateForm;
    }

    public int getUserIdAcceptForm() {
        return userIdAcceptForm;
    }

    public void setUserIdAcceptForm(int userIdAcceptForm) {
        this.userIdAcceptForm = userIdAcceptForm;
    }

    @Override
    public String toString() {
        return "RequisForm{" + "formId=" + formId + ", dateStart=" + dateStart + ", dateEnd=" + dateEnd + ", issue=" + issue + ", status=" + status + ", userIdCreateForm=" + userIdCreateForm + ", userIdAcceptForm=" + userIdAcceptForm + '}';
    }

   

   
    
}
