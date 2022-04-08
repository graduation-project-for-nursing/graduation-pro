
package nursescheduling;

import java.sql.*;
import java.sql.Connection;
import java.sql.SQLException;


public class database {
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

 

