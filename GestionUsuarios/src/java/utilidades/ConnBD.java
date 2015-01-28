/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilidades;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Administrador
 */



  
public class ConnBD {
    private String Driver;
    private String url;
    private String us;
    private String psw;

    public ConnBD() {
        this.Driver = "com.mysql.jdbc.Driver";
        this.url = "jdbc:mysql://localhost:3306/smilesystemv2";
        this.us = "root";
        this.psw = "";
    }

    public String getDriver() {
        return Driver;
    }

    public void setDriver(String Driver) {
        this.Driver = Driver;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUs() {
        return us;
    }

    public void setUs(String us) {
        this.us = us;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }
    
    
    
} 
    
