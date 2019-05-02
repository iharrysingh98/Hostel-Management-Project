<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>complaint</title>
</head>
<body>
    
    <%@ page import ="java.sql.*" %>
<%
    String firstName = request.getParameter("firstName");    
	String middleName = request.getParameter("middleName");    
	String lastName = request.getParameter("lastName");   
	String date = request.getParameter("date");  
	String gender = request.getParameter("gender");  
	String priority = request.getParameter("priority");  
    String loc = request.getParameter("loc");
    String outcome= request.getParameter("outcome");
    String usertype = request.getParameter("usertype");
    String uname = request.getParameter("uname");
    String cvtype= request.getParameter("cvtype");
	String subject=request.getParameter("subject");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview","root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate ("insert into complaint (firstName, middleName, lastName,date,gender,priority,loc,outcome,cvtype,subject) values ('" + firstName + "','" + middleName+ "','" + lastName + "','" + date+ "','" + gender +"','"+priority+"','"+loc+"','"+outcome+"','"+ cvtype+"','"+ subject+"')");
    if (i > 0) 
    {
        //session.setAttribute("uname", uname);
        response.sendRedirect("Welcome1.jsp");
       // out.print("Registration Successfull!"+"<a href='signin.html'>Go to Login</a>");
    } else {
    	 out.print("Some Error Occured"+"<a href='complaint.jsp'>Go to Complaint Box again!</a>");
       // response.sendRedirect("complaint.jsp");
    }
    
%> 
    
</body>
</html>