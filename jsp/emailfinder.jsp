<%@ page import="java.sql.*" %>  
<%  
String email=request.getParameter("email");  
if(email.contains("@")&&email.contains(".")){  
try{  
Class.forName("org.postgresql.Driver");  
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/employee_details","postgres", "123");  
PreparedStatement ps=con.prepareStatement("select * from DETAILS where Mail_Id=?");  
ps.setString(1,email);  
ResultSet rs=ps.executeQuery();
if(rs.next()){  
out.print("Mail Already Exist!"); 
}
}catch(Exception e){out.print(e);}  
}else{  
out.print("Invalid email!");
}  
%>  