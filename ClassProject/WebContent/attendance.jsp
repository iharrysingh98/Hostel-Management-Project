<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


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
<title>View Attendance</title>

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
<h1>View Attendance</h1>


<table id="racetimes">
<table class="attendance-table">
<tbody><tr class="attendance-table-head">
<th class="table-head-td-course">Course</th>
<th class="table-head-td">Total Classes</th>
<th class="table-head-td">Present</th>
<th class="table-head-td">Absent</th>
<th class="table-head-td">Details</th>
</tr>
<tr class="attendanceRow">
 
<td class="attendanceRowCourse">Java(Csl5301)</td>
<td class="attendanceRowStat">12</td>
<td class="attendanceRowStat">10</td>
<td class="attendanceRowStat">2</td>
<td class="attendanceRowStat">
<a href="javascript:void(0)" onclick="GetCourseInfo('Csl5301')">View Summary</a>
</td>
</tr>
<tr class="attendanceRow">
 
<td class="attendanceRowCourse">data Structures(Csl5305)</td>
<td class="attendanceRowStat">13</td>
<td class="attendanceRowStat">9</td>
<td class="attendanceRowStat">4</td>
<td class="attendanceRowStat">
<a href="javascript:void(0)" onclick="GetCourseInfo('Csl5305')">View Summary</a>
</td>
</tr>
<tr class="attendanceRow">
 
<td class="attendanceRowCourse">Frontend development (Csl4302)</td>
<td class="attendanceRowStat">10</td>
<td class="attendanceRowStat">8</td>
<td class="attendanceRowStat">2</td>
<td class="attendanceRowStat">
<a href="javascript:void(0)" onclick="GetCourseInfo('Csl4302')">View Summary</a>
</td>
</tr>
<tr class="attendanceRow">
 
<td class="attendanceRowCourse"> ENGLISH (clp2305)</td>
<td class="attendanceRowStat">12</td>
<td class="attendanceRowStat">11</td>
<td class="attendanceRowStat">1</td>
<td class="attendanceRowStat">
<a href="javascript:void(0)" onclick="GetCourseInfo('clp2305')">View Summary</a>
</td>
</tr>

<tr class="attendanceRow">
 
<td class="attendanceRowCourse">COMMUNICATION SKILLS (cs)</td>
<td class="attendanceRowStat">10</td>
<td class="attendanceRowStat">8</td>
<td class="attendanceRowStat">2</td>
<td class="attendanceRowStat">
<a href="javascript:void(0)" onclick="GetCourseInfo('cs')">View Summary</a>
</td>
</tr>
</tbody></table>
 

<%
while(Rs.next())
{
%>




<% 
  }
%>

</body>
</html>

<%
}
catch(Exception e){out.println(e.getMessage());}

%>


</body>
</html>