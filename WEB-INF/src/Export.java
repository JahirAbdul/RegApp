package com.admin;
import  java.io.*;  
import  java.sql.*;
import  org.apache.poi.hssf.usermodel.HSSFSheet;  
import  org.apache.poi.hssf.usermodel.HSSFWorkbook; 
import  org.apache.poi.hssf.usermodel.HSSFRow;
import  org.apache.poi.hssf.usermodel.HSSFCell;  

public class Export{

    public String execute() throws Exception{
try{
String filename="D:/data.xls" ;
HSSFWorkbook hwb=new HSSFWorkbook();
HSSFSheet sheet =  hwb.createSheet("new sheet");

HSSFRow rowhead=   sheet.createRow((short)0);
rowhead.createCell((short) 0).setCellValue("Name");
rowhead.createCell((short) 1).setCellValue("E-mail");
rowhead.createCell((short) 2).setCellValue("Contact No");
rowhead.createCell((short) 3).setCellValue("Organisation");
rowhead.createCell((short) 4).setCellValue("City");

Class.forName("org.postgresql.Driver");
Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/employee_details","postgres", "123");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select * from details");
int i=1;
while(rs.next()){
HSSFRow row=   sheet.createRow((short)i);
row.createCell((short) 0).setCellValue(rs.getString("name"));
row.createCell((short) 1).setCellValue(rs.getString("mail_Id"));
row.createCell((short) 2).setCellValue(rs.getString("phone"));
row.createCell((short) 3).setCellValue(rs.getString("organisation"));
row.createCell((short) 4).setCellValue(rs.getString("city"));
i++;
}
FileOutputStream fileOut =  new FileOutputStream(filename);
hwb.write(fileOut);
fileOut.close();
return "success";

} catch ( Exception ex ) {
    System.out.println(ex);
    return "input";

}
    }
}