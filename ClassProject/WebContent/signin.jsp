<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*" %>

<body background = "images\blur.jpg">
<%


       String uname=request.getParameter("uname");
System.out.println(" "+uname+"abc");
       String psw=request.getParameter("psw");
      
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview", "root", "root");
    Statement st=conn.createStatement();
    ResultSet rs;
    rs= st.executeQuery("Select uname,psw from registered where uname='"+uname+"' and psw ='"+psw+"'");
        	 
if(rs.next())
{
		System.out.println(uname);
    //session.setAttribute("uname", uname);
    request.setAttribute("uname", uname);
   RequestDispatcher rd=request.getRequestDispatcher("admindashboard.jsp");
    rd.forward(request, response);
   //response.sendRedirect("admindashboard.jsp");
   
   
   
   
   
}
else
{
  //  out.println("<h1 align="center">Invalid Password</h1><a href='signin.html'>Try again</a>");
 /* String message = "Invalid Password Please try Again!!!";
request.getSession().setAttribute("message", message);
    response.sendRedirect("signin.html");*/
	out.println("<script type=\"text/javascript\">");
    out.println("alert('User or password incorrect');");
    out.println("</script>");
    response.sendRedirect("signin.html");  
  
}


  
%>

</body>


    

