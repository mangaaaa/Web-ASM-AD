/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author mangn
 */
public class TrainerModel {
     public ArrayList<User> getListTrainer() {
        ArrayList<User> list = new ArrayList<>();
        GetConnection cn = new GetConnection();
        Connection conn = cn.getConnection();
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM tblUser WHERE RoleID = 3");
            User acc = null;
            while (rs.next()) {
                acc = new User();
                acc.setUserID(rs.getString(1));
                acc.setFullName(rs.getString(2));
                acc.setAddress(rs.getString(3));
                acc.setPhone(rs.getString(4));
                acc.setEmail(rs.getString(5));
                acc.setDate_Of_Birth(rs.getDate(6));
                acc.setUsername(rs.getString(7));
                acc.setPassword(rs.getString(8));
                list.add(acc);
            }
            rs.close();
            stm.close();
            conn.close();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return list;
    }
}
