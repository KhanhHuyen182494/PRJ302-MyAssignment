package dao;

import dal.DBContext;
import java.sql.*;
import java.util.Date;

public class RequisFormDAO extends DBContext {

    public void inserForm(Date dateStart, Date dateEnd, String issue, int status, int idUserCreateForm, Integer idUserProcessForm) {
        String query = "INSERT INTO [dbo].[Requis_form] ([date_start], [date_end], [issue], [status], [user_id_create_form], [user_id_accept_form]) VALUES (?, ?, ?, ?, ?, ?)";
        
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            if (connection == null) {
                throw new SQLException("Database connection is null!");
            }
            
            ps.setDate(1, new java.sql.Date(dateStart.getTime()));
            ps.setDate(2, new java.sql.Date(dateEnd.getTime()));
            ps.setString(3, issue);
            ps.setInt(4, status);
            ps.setInt(5, idUserCreateForm);
            
            // Xử lý nếu idUserProcessForm có thể là null
            if (idUserProcessForm != null) {
                ps.setInt(6, idUserProcessForm);
            } else {
                ps.setNull(6, Types.INTEGER);
            }
            
            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("Insert successful!");
            } else {
                System.out.println("Insert failed, no rows affected.");
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // In chi tiết lỗi SQL
        }
    }
}
