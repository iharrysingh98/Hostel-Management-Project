<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Complaint</title>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/jsbootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="css/style.css">
<script type = "text/javascript" src= "js/dashboard.js" ></script> 
<link rel="stylesheet" href="css/dash.css">
	<script src="https://use.fontawesome.com/07b0ce5d10.js"></script>
 
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
       	
       	
       <div class="logo-area">  </div>
 
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
                 <span><i class="fa fa-angle-down"></i></span>
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
                            <a href="login.html">
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
                <a href="profile.html">
                    <img alt="" src="images/icon.png" class="img-circle img-inline class="img-responsive img-circle">
                </a>
            </div>
             <div class="profile-details">
                <h3>
                    <a href="profile.html"><%=uname %></a> 
                </h3>
                <p class="profile-title"><%=usertype%></p>

            </div>
          </div>


          <ul class="wraplist" style="height: auto;">	
<!--          <li class="menusection">Main</li>-->
          <li><a href="studentdashboard.html"><span class="sidebar-icon"><i class="fa fa-dashboard"></i></span> <span class="menu-title">Dashboard</span></a></li>
          <li><a href="attendance.jsp"><span class="sidebar-icon"><i class="fa fa-vcard"></i></span> <span class="menu-title">Attendance</span></a></li>
          <li><a href="complaint.jsp"><span class="sidebar-icon"><i class="fa fa-edit"></i></span> <span class="menu-title">Complaint-Box</span></a></li>
          <li><a href="fees.jsp"><span class="sidebar-icon"><i class="fa fa-money"></i></span> <span class="menu-title">Fees</span></a></li>
             <li><a href="mess.jsp"><span class="sidebar-icon"><i class="fa fa-money"></i></span> <span class="menu-title">Mess Management</span></a></li>
           <li><a href="room.jsp"><span class="sidebar-icon"><i class="fa fa-bed"></i></span> <span class="menu-title">Beds Allotment</span></a></li>
          
          <li><a href="baggage.jsp"><span class="sidebar-icon"><i class="fa fa-suitcase"></i></span> <span class="menu-title">Baggage</span></a></li>
          
         
          
          </ul>
        </div>
    </div>
    








 <section id="main-content">
     <section class="wrapper main-wrapper row">        
          <div class="col-md-15">              
              <section class="box">



    
<!-- Name Section -->
  <div class="row">
    <div class="col-md-8 col-md-offset-1">
      <form class="form-horizontal" role="form" method="post" action="complaintjsp.jsp" >
        <fieldset>

          <legend>Complaint/Suggestion Box</legend>

          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <input type="text" name="firstName" placeholder="First Name" class="form-control">
            </div>
            <div class="col-sm-2">
              <input type="text" name="middleName" placeholder="Middle Name" class="form-control">
            </div>
            <div class="col-sm-4">
              <input type="text" name="lastName" placeholder="Last Name" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <input type="date" placeholder="Date of Complaint" name="date" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <select type="gender" placeholder="Gender" name="gender" class="form-control">
                <option>Gender</option>
                <option value="female">Female</option>
                <option value="male">Male</option>
              </select>
            </div>
          </div>
          
          
              <legend>Complaint Priority</legend>
            <div class="form-group">
                <div class="col-sm-2">
                  <input type="radio" name="priority"value="high"> High
                </div>
                <div class="col-sm-2">
                  <input type="radio" name="priority" value="medium">  Medium
                </div>
                <div class="col-sm-2">
                  <input type="radio" name="priority"value="low"> Low
                </div>
             
          </div>
          


<!-- type of complaint -->
          <!-- Form Name -->
          <legend>Type Of Complaint</legend>
          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <input type="text" name="loc" placeholder="location" class="form-control">
            </div>
          
            <div class="col-sm-4">
              <input type="text" name="outcome" placeholder="Desired Outcome" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-2">
              <select type="ctype" placeholder="Complaint Type"name="cvtype" class="form-control">
                <option>Select</option>
                <option value="food">Food</option>
                <option value="accomodation">Accomodation</option>
                <option value="Electricity">Electricity</option>
                 <option value="Water">Water</option>
                  <option value="Washrooms">Washrooms</option>
                  <option value="other">other</option>
                  
              </select>
            </div>  
            <div class="col-sm-4">
               <textarea id="subject" class="form-control" name="subject" placeholder="Write Complaint or suggestion you want to give......" style="height:100px; width:200px"></textarea>
            </div>
            
         
        
<!-- Command -->
          <div class="form-group">
            <div class="col-sm-3 col-sm-offset-9">
              <div class="pull-right">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </div>
        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->

 </form>

</section>             
</div>
</body>
</html>