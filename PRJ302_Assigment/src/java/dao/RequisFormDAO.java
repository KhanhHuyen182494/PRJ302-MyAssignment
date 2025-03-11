package dao;

import dal.DBContext;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.RequisForm;

public class RequisFormDAO extends DBContext {

    PreparedStatement ps = null; //=> preparedStament => de thuc thi thi du lieu
    ResultSet rs = null; //=> ket qua de hung lay du lieu

    public boolean insertForm(Date dateStart, Date dateEnd, String issue, int status, int idUserCreateForm, Integer idUserProcessForm) {
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

    public List<RequisForm> getAllFormByIdUser(Integer idUser) {
        String query = "SELECT * FROM [PRJ302].[dbo].[Requis_form]\n"
                + "Where user_id_create_form = ? ";
        List<RequisForm> forms = new ArrayList<>();
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, idUser);
            rs = ps.executeQuery();
            while (rs.next()) {
                forms.add(new RequisForm(rs.getInt(1), rs.getDate(2), rs.getDate(3),
                        rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (SQLException exception) {
            System.out.println(exception);
        }
        return forms;
    }

}
