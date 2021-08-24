/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mangn
 */
public class checkLogin {
     public boolean checkLogin(String u, String p) {
        boolean result = false;
        String sql = "SELECT * FROM tblUser WHERE _UserName = ? AND _PassWord = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u);
            ps.setString(2, p);
            ResultSet rs = ps.executeQuery();

            result = rs.next();
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(checkLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    public String checkRole(String u, String p) {
        String result = "";
        String sql = "SELECT RoleId FROM tblUser WHERE _UserName = ? AND _PassWord = ?";
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u);
            ps.setString(2, p);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result = rs.getString(1);
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(checkLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
}
