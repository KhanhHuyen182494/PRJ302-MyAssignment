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
import model.Division;

/**
 *
 * @author admin
 */
public class DivisionDAO extends DBContext {

    PreparedStatement ps = null; //=> preparedStament => de thuc thi thi du lieu
    ResultSet rs = null; //=> ket qua de hung lay du lieu

    public List<Division> getAllDivision() {
        List<Division> divisions = new ArrayList<>();
        String query = "SELECT *\n"
                + "  FROM [PRJ302].[dbo].[Division]";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {                
                divisions.add(new Division(rs.getInt(1),
                        rs.getString(2), rs.getString(3)));
            }
            
        } catch (SQLException exception) {
            System.out.println(exception);
        }
        return divisions;
    }

   
}
