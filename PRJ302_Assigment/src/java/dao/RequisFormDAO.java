package dao;

import dal.DBContext;
import java.sql.*;
import java.util.Date;

public class RequisFormDAO extends DBContext {

    PreparedStatement ps = null; //=> preparedStament => de thuc thi thi du lieu
    ResultSet rs = null; //=> ket qua de hung lay du lieu

    public boolean inserForm(Date dateStart, Date dateEnd, String issue, int status, int idUserCreateForm, Integer idUserProcessForm) {
        String query = "INSERT INTO [dbo].[Requis_form]\n"
                + "           ([date_start]\n"
                + "           ,[date_end]\n"
                + "           ,[issue]\n"
                + "           ,[status]\n"
                + "           ,[user_id_create_form]\n"
                + "           ,[user_id_accept_form])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setDate(1, new java.sql.Date(dateStart.getTime()));
            
            ps.setDate(2, new java.sql.Date(dateEnd.getTime()));
            
            ps.setString(3, issue);
            
            ps.setInt(4, status);
            
            ps.setInt(5, idUserCreateForm);
             
            ps.setInt(6, idUserProcessForm);
            
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
        
    }

}
