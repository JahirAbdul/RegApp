package com.javatpoint;

 import com.admin.Admin;
//import java.util.*;
import com.opensymphony.xwork2.ActionSupport;


public class Product extends ActionSupport
{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

private String name;
private String mail_Id;
private String phone;
private String organisation;
private String city;


public String execute() throws Exception
{

	int var = Admin.register(this);
	if(var>0)
	{	

	return "success";
	}
	else
	{
		return "input";
	}
}


public String getMail_Id() {
	return mail_Id;
}
public void setMail_Id(String mail_Id) {
	this.mail_Id = mail_Id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;

}

public String getOrganisation() {
	return organisation;
}
public void setOrganisation(String organisation) {
	this.organisation = organisation;
}

public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city= city;
}

}