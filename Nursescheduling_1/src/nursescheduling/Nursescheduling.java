/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package nursescheduling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author elham
 */
public class Nursescheduling {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       String url="jdbc:mysql://localhost:3306/project";
     String username="root";
     String password="sana1234";
     try {
		Connection connection=DriverManager.getConnection(url,username,password);
		System.out.println("connected to database");
		
	} catch (SQLException e) {
		System.out.println("Oops ,error !");
		e.printStackTrace();
	}
	}
    }
    

