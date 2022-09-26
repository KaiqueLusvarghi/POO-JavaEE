/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.sql.*;

/**
 *
 * @author Fatec
 */
public class Artist1 {

    int id;
    String name;
    String Snome;
     public static int getCount() throws Exception{
        ArrayList<Artist1> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        //O caminho do arquivo deve ser diferente se executado do seu PC
        //https://www.sqlitetutorial.net/sqlite-sample-database/
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select count(*) as count from employees");
        int count = 0;
        while(rs.next()){
            count = rs.getInt("count");
        }
        rs.close();
        stmt.close();
        con.close();
        return count;
    }

    public static ArrayList<Artist1> getList() throws Exception {
        ArrayList<Artist1> list = new ArrayList<>();
        Class.forName("org.sqlite.JDBC");
        String url = "jdbc:sqlite:C:\\Users\\Fatec\\chinook.db";
        Connection con = DriverManager.getConnection(url);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from employees");
        while (rs.next()) {
            int id = rs.getInt("EmployeeId");
            String name = rs.getString("FirstName");
            String Snome = rs.getString("LastName");
            Artist1 a = new Artist1(id, name,Snome);
            list.add(a);
        }
        return list;
    }

    public Artist1(int id, String name, String Snome) {
        this.id = id;
        this.name = name;
        this.Snome = Snome;
    
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
     public String getSnome() {
        return Snome;
    }

    public void setSnome(String Snome) {
        this.Snome = Snome;
    }
}
