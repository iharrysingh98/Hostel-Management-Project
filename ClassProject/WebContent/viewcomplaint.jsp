
<%@page import="java.sql.*" %>


 <%
         try{
  String url="jdbc:mysql://localhost:3306/acadview";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","root");
        String query="select * from complaint";
        Statement st=conn.createStatement();
        ResultSet Rs=st.executeQuery(query);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Complaints</title>

<link rel="stylesheet" href="css/table.css">


</head>
<script>
function goBack()
{
	  window.history.back();
	}
	</script>

<body>
<button type="button" onclick="goBack()" class="button" align= "center">Back</button>
<h1>View Students Complaints</h1>


<table id="racetimes">
<tr id="firstrow"><th>First Name</th><th>middle name</th><th>Last name</th><th>Date</th><th>Gender </th><th>Priority</th><th>Location</th><th>Outcome</th><th>Complaint type</th><th>Subject</th></tr>
<%
while(Rs.next())
{
%>
<tr><td><%
	
out.println(Rs.getString(1));%></td><td><%out.println(Rs.getString(2));%></td><td><%out.println(Rs.getString(3));%></td><td><%out.println(Rs.getString(4));%></td><td><%out.println(Rs.getString(5));%></td><td><%out.println(Rs.getString(6));%></td><td><%out.println(Rs.getString(7));%></td><td><%out.println(Rs.getString(8));%></td><td><%out.println(Rs.getString(9));%></td><td><%out.println(Rs.getString(10));%></td></tr>
<tr><td><%out.println(Rs.getString(1));%></td><td><%out.println(Rs.getString(2));%></td><td><%out.println(Rs.getString(3));%></td><td><%out.println(Rs.getString(4));%></td><td><%out.println(Rs.getString(5));%></td><td><%out.println(Rs.getString(6));%></td><td><%out.println(Rs.getString(7));%></td><td><%out.println(Rs.getString(8));%></td><td><%out.println(Rs.getString(9));%></td><td><%out.println(Rs.getString(10));%></td></tr>



 
</table>


<% 
  }
%>

</body>
</html>

<%
}
catch(Exception e){out.println(e.getMessage());}

%>