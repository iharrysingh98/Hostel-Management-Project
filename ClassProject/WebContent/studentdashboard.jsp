<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>





<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="css/style.css">
<script type = "text/javascript" src= "js/dashboard.js" ></script> 
<link rel="stylesheet" href="css/dash.css">
	<script src="https://use.fontawesome.com/07b0ce5d10.js"></script>
    
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    
    <style>
    p{
    color:#c23616;
    }
    </style>
    </head>
    <body>
    	 <%@ page import ="java.sql.*" %>
    <%
    String uname = request.getParameter("uname");
    String email = request.getParameter("email");
    String usertype = request.getParameter("usertype");
    
    
    try
    {
        String myUrl = "jdbc:mysql://localhost:3306/acadview";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(myUrl,"root","root");
    //out.println("Hello 1");

        String query = "Select uname,email from registered where email='"+email+"' and uname ='"+uname+"'";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);
        
       if(rs.next())
        {
            out.println("");
           out.print("Hello "+uname);
           }
       else
           
           out.println("");

        st.close();
    }
  
    catch(ClassNotFoundException e)
    {
        out.print(e);
    }
    catch(SQLException e)
    {
        out.print(e);
    }
    
    
%>
    
            	
    <div class="page-topbar">
       	
       	
       <div class="logo-area">   
       
       </div> 
 
        <div class="quick-area">
        
            	
        <ul class="pull-left info-menu  user-notify">
       
         <button id="menu_icon"><i class="fa fa-bars" aria-hidden="true"></i></button>
         <li><a href="messages.html"> <i class="fa fa-envelope"></i> <span class="badge"></span></a></li>
         <li><a href="notify.html"> <i class="fa fa-bell"></i> <span class="badge"></span></a></li>  
         
       
              </ul>
         
           
       <ul class="pull-right info-menu user-info">
      
         <li class="profile">
             <a href="#" data-toggle="dropdown" class="toggle" aria-expanded="false">
                 <img src="images/icon1.png" class="img-circle img-inline">
                 <span><%=uname %><i class="fa fa-angle-down"></i></span>
             </a>
            
             <ul class="dropdown-menu profile fadeIn ">
                        <li>
                            <a href="setting.html">
                                <i class="fa fa-wrench"></i>
                                Settings
                            </a>
                        </li>
                        <li>
                            <a href="profile.html">
                                <i class="fa fa-user"></i>
                                Profile
                            </a>
                        </li>
                        
                        <li class="last">
                            <a href="Register.html">
                                <i class="fa fa-lock"></i>
                                Sign Out
                            </a>
                        </li>
                    </ul>
           
            
           </li>
         </ul>
            
    </div>
    </div>
    
   
    <div class="page-sidebar expandit">
      <div class="sidebar-inner" id="main-menu-wrapper">
         <div class="profile-info row ">
           <div class="profile-image ">
                <a href="ui-profile.html">
                    <img alt="" src="images/icon1.png" class="img-circle img-inline class="img-responsive img-circle">
                </a>
            </div>
             <div class="profile-details">
                <h3>
                    <a href="ui-profile.html">Hardeep </a> 
                </h3>
                <p class="profile-title"><%=usertype %></p>

            </div>
          </div>


          <ul class="wraplist" style="height: auto;">	
<!--          <li class="menusection">Main</li>-->
          <li><a href="studentdashboard.jsp"> <span class="sidebar-icon"><i class="fa fa-dashboard"></i></span> <span class="menu-title">Dashboard</span></a></li>
          <li><a href="attendance.jsp"><span class="sidebar-icon"><i class="fa fa-vcard"></i></span> <span class="menu-title">Attendance</span></a></li>
          <li><a href="complaint.jsp"> <span class="sidebar-icon"><i class="fa fa-edit"></i></span> <span class="menu-title">Complaint-Box</span></a></li>
          <li><a href="fees.jsp"><span class="sidebar-icon"><i class="fa fa-money"></i></span> <span class="menu-title">Fees</span></a></li>
           <li><a href="room.jsp"><span class="sidebar-icon"><i class="fa fa-bed"></i></span> <span class="menu-title">Beds Allotment</span></a></li>
          
          <li><a href="Baggage.jsp"><span class="sidebar-icon"><i class="fa fa-suitcase"></i></span> <span class="menu-title">Baggage</span></a></li>
          
         
          
          </ul>
        </div>
    </div>
    
    
    
      <section id="main-content">
     <section class="wrapper main-wrapper row">        
          <div class="col-md-14">              
              <section class="box">
    
    
    
       <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
    <h2 align="center">Administrator Notices</h2> 
    <p>See your administration recent notices and events!
    </div>
    <div class="flip-card-back">
      
      <p align="center">Click here to see Notices !</p> 
      <p></p>
    </div>
  </div>
</div>

    
    <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
    <h2 align="center">Gate Pass</h2>
    <p> Apply gate pass or Leave form here! 
     
    </div>
    <div class="flip-card-back">
      
      <p align="center">Click here to apply !</p>  
      <p></p>
    </div>
  </div>
</div>
    
    
    
       
    <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <h2 align="center">Fees</h2>
      <p>Pay Hostel / other fees</p>
    
    </div>
   
    <div class="flip-card-back">
    
      <p align="center">Click here to pay the fee !</p> 
            <p></p>
    </div>
  </div>
</div>


   <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
    <h2 align="center">Hostel Commitee</h2> 
    <p> Hostel Events and Extra Activities
    </div>
    <div class="flip-card-back">
      
      <p align="center">Click here to see Events !</p> 
      <p></p>
    </div>
  </div>
</div>



 <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
   
    <h2 align="center">Complaint-Box</h2> 
    <p> Complaints and Feedbacks!
    </div>
    <div class="flip-card-back">
       <a href="complaint.jsp">
      <p align="center">Click here to Lodge a Complaint!</p> 
      <p></p>
      
    </div>
    
  </div>
  
</div>
</a>

</section>





         </div>
          <div class="col-md-4"> 
                       
              <section class="box" style="border: 4px dotted red";>  
               <h1 style="color:#EA2027 ; text-align:center";>Alerts</h1>           
               <div class="alert alert-info">
    <strong>Info!</strong> This alert box will tell your Attendance,Fees and other related info!
  </div>  </section>
              
              
           
         
      <div class="clearfix"></div>  <!--**************clearfix**************-->
         
         <div class="col-md-12">              
              <section class="box">   </section>
         </div>
         
        </section>
    </section>
    </body>
</html>