/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class UserModel {
    
    private Integer idUser;
    private String userName;
    private String password;
    private String name;
    private String phone;
    private String address;
    private String email;
    private int divisionId;
    private String divisionName;
    private int roleId;

    private Integer managerId;
    private String managerName;

    public UserModel() {
    }

    public UserModel(Integer idUser, String userName, String password, String name, String phone, String address, String email, int divisionId, String divisionName, int roleId, Integer managerId, String managerName) {
        this.idUser = idUser;
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.divisionId = divisionId;
        this.divisionName = divisionName;
        this.roleId = roleId;
        this.managerId = managerId;
        this.managerName = managerName;
    }

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    @Override
    public String toString() {
        return "UserModel{" + "idUser=" + idUser + ", userName=" + userName + ", password=" + password + ", name=" + name + ", phone=" + phone + ", address=" + address + ", email=" + email + ", divisionId=" + divisionId + ", divisionName=" + divisionName + ", roleId=" + roleId + ", managerId=" + managerId + ", managerName=" + managerName + '}';
    }
    
    
}
