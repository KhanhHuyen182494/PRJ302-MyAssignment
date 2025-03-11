/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.UserModel;
import model.Users;

/**
 *
 * @author admin
 */
public class UsersDao extends DBContext {

    PreparedStatement ps = null; //=> preparedStament => de thuc thi thi du lieu
    ResultSet rs = null; //=> ket qua de hung lay du lieu

    public Users getUserByUserNameAndPassword(String userName, String password) {
        String query = "SELECT *\n"
                + "  FROM [PRJ302].[dbo].[Users]\n"
                + " WHERE Users.user_name = ? and Users.password = ?";

        try {

            ps = connection.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);

            rs = ps.executeQuery();

            if (rs.next()) {
                return new Users(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10));
            }

        } catch (SQLException exception) {
            System.out.println(exception);
        }
        return null;
    }

    public List<Users> getAll() {
        String query = "SELECT *\n"
                + "  FROM [PRJ302].[dbo].[Users]\n";

        List<Users> list = new ArrayList<>();
        try {

            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Users(rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10)));
            }

        } catch (SQLException exception) {
            System.out.println(exception);
        }
        return list;
    }

    public static void main(String[] args) {
        UsersDao usersDao = new UsersDao();
        for (Users users : usersDao.getAll()) {
            System.out.println(users.toString());
        }
    }

    public void insertUser(Users users) {
        String query = "INSERT INTO [dbo].[Users]\n"
                + "           ([user_name]\n"
                + "           ,[password]\n"
                + "           ,[name]\n"
                + "           ,[phone]\n"
                + "           ,[address]\n"
                + "           ,[email]\n"
                + "           ,[division_id]\n"
                + "           ,[role_id]\n"
                + "           ,[manager_id])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, users.getUserName());
            ps.setString(2, users.getPassword());
            ps.setString(3, users.getName());
            ps.setString(4, users.getPhone());
            ps.setString(5, users.getAddress());
            ps.setString(6, users.getEmail());
            ps.setInt(7, users.getDivisionId());
            ps.setInt(8, users.getRoleId());
            ps.setInt(9, users.getManagerId());
            ps.executeUpdate();
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
    }

    public UserModel getInformationUser(Integer idUser) {
        String query = "SELECT U.user_id, U.user_name, U.password, U.name, \n"
                + "U.phone, \n"
                + "U.address,\n"
                + "U.email, \n"
                + "D.division_id,\n"
                + "D.divison_name, U.role_id, M.user_id, M.name\n"
                + "FROM [PRJ302].[dbo].[Users] U\n"
                + "JOIN Division D ON U.division_id = D.division_id \n"
                + "JOIN Users M ON U.manager_id = M.user_id\n"
                + "WHERE U.user_id = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, idUser);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new UserModel(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8), rs.getString(9), rs.getInt(10), rs.getInt(11), rs.getString(12));
            }
        } catch (SQLException exception) {
            System.out.println(exception);
        }
        return null;
    }

    public boolean isUsernameOrEmailExists(String username, String email) {
        String query = "SELECT *\n"
                + "  FROM [PRJ302].[dbo].[Users]\n"
                + "  Where [user_name] = ? or email = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, username);
            ps.setString(2, email);
            ResultSet rs = ps.executeQuery();
            return rs.next(); // If there's any row, it means the username or email already exists
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

}
