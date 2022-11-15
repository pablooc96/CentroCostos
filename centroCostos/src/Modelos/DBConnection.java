package Modelos;

import java.sql.*;
import javax.swing.JOptionPane;

public class DBConnection {
    Connection conectar = null;
    String myDB = "jdbc:oracle:thin:@localhost:1521:orcl";
    String usuario="CENTROCOSTOS";
    String password="ADMIN123";
            
        public Connection getConneccion(){
     try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conectar = (Connection) DriverManager.getConnection(myDB,usuario, password);
           // JOptionPane.showMessageDialog(null, "pudo acceder");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error de Conexion " + ex.getMessage() ,"Error",JOptionPane.ERROR_MESSAGE);
        } 
        return conectar;
    }  
   
}