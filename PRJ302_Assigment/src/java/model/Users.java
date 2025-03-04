/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Users {

    private int userId; // [identity]
    private String userName;
    private String password;
    private String name;
    private String phone;
    private String address;
    private String email;
    private int divisionId;
    private int roleId;
    private Integer managerId;

    public Users(String string, String string1, String string2, String string3, String string4, String string5, int aInt, int aInt1, int aInt2) {
    }

    public Users(int userId, String userName, String password, String name, String phone, String address, String email, int divisionId, int roleId, Integer managerId) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.divisionId = divisionId;
        this.roleId = roleId;
        this.managerId = managerId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    @Override
    public String toString() {
        return "Users{" + "userId=" + userId + ", userName=" + userName + ", password=" + password + ", name=" + name + ", phone=" + phone + ", address=" + address + ", email=" + email + ", divisionId=" + divisionId + ", roleId=" + roleId + ", managerId=" + managerId + '}';
    }

  
}
