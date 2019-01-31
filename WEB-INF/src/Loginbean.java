package com.javatpoint;

import java.util.Map;
import java.io.*;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class Loginbean implements SessionAware{
private String username,password;
SessionMap<String,Object> sessionmap;

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String execute(){
	try{
		//String filename="D:/result.txt" ;
		//FileOutputStream fileOut =  new FileOutputStream(filename);
		if(LoginDAO.validate(username,password)){
			//fileOut.write(65);
			//fileOut.close();
			return "success";
		}
		else{
			//fileOut.write(66);
			//fileOut.close();
			return "error";
		}
	}catch(Exception e){
			e.printStackTrace();
	}
	return "error";
}

public void setSession(Map<String,Object> map) {
	sessionmap=(SessionMap<String,Object>)map;
	sessionmap.put("login","true");
}

public String logout(){
	sessionmap.invalidate();
	return "success";
}


}
