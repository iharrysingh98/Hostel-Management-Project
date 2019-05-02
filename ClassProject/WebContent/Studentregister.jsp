<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student registration</title>

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
       	
       	
       <div class="logo-area">  <img src="images/chitkara1.jpg"> </div>
 
        <div class="quick-area">
        
            	
        <ul class="pull-left info-menu  user-notify">
       
         <button id="menu_icon"><i class="fa fa-bars" aria-hidden="true"></i></button>
         <li><a href="messages.html"> <i class="fa fa-envelope"></i> <span class="badge"></span></a></li>
         <li><a href="notify.html"> <i class="fa fa-bell"></i> <span class="badge"></span></a></li>  
         
       
              </ul>
         
            
       <ul class="pull-right info-menu user-info">
      
         <li class="profile">
             <a href="#" data-toggle="dropdown" class="toggle" aria-expanded="false">
                 <img src="images/icon4.png" class="img-circle img-inline">
                 <span><%=uname%>!<i class="fa fa-angle-down"></i></span>
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
                            <a href="logout.jsp">
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
                    <img alt="" src="images/icon4.png" class="img-circle img-inline class="img-responsive img-circle">
                </a>
            </div>
             <div class="profile-details">
                <h3>
                    <a href="ui-profile.html">Hardeep</a> 
                </h3>
                <p class="profile-title"><%=usertype%></p>

            </div>
          </div>


          <ul class="wraplist" style="height: auto;">	
<!--          <li class="menusection">Main</li>-->
          <li><a href="admindashboard.jsp"><span class="sidebar-icon"><i class="fa fa-dashboard"></i></span> <span class="menu-title">Dashboard</span></a></li>
          <li><a href="attendance.jsp"><span class="sidebar-icon"><i class="fa fa-vcard"></i></span> <span class="menu-title">Attendance</span></a></li>
          <li><a href="Studentregister.jsp"><span class="sidebar-icon"><i class="fa fa-users"></i></span> <span class="menu-title">Manage Students</span></a></li>
          <li><a href="fees.jsp"><span class="sidebar-icon"><i class="fa fa-money"></i></span> <span class="menu-title">Fees</span></a></li>
           <li><a href="room.jsp"><span class="sidebar-icon"><i class="fa fa-bed"></i></span> <span class="menu-title">Beds Allotment</span></a></li>
          
          <li><a href="baggage.jsp"><span class="sidebar-icon"><i class="fa fa-suitcase"></i></span> <span class="menu-title">Baggage</span></a></li>
          
         
          
          </ul>
        </div>
    </div>
    
<body>







 <section id="main-content">
     <section class="wrapper main-wrapper row">        
          <div class="col-md-15">              
              <section class="box">



    
<!-- Name Section -->
  <div class="row">
    <div class="col-md-10 col-md-offset-1">
      <form class="form-horizontal" role="form" method="post" action="#" >
        <fieldset>

          <legend>Student Registration</legend>

          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <input type="text" name="fname" placeholder="First Name" class="form-control">
            </div>
            <div class="col-sm-2">
              <input type="text" name="mname" placeholder="Middle Name" class="form-control">
            </div>
            <div class="col-sm-4">
              <input type="text" name="lname" placeholder="Last Name" class="form-control">
            </div>
          </div>
          
          
              <div class="col-sm-4">
              <input type="sPhoneNbr" placeholder="Phone Number"  name="sphone"class="form-control">
            </div>
            <div class="col-sm-4">
              <input type="email" name="sEmail" placeholder="Email" class="form-control">
            </div>
          
          
          

          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <input type="date" name="date" placeholder="Date Of Birth" class="form-control">
            </div>
          </div>
          
                  

          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <select type="gender" placeholder="Gender" name="gender" class="form-control">
              
                <option value="female">Female</option>
                <option value="male">Male</option>
              </select>
            </div>
          </div>
          
          
          
          

<!-- Address Section -->
          <!-- Form Name -->
          <legend>Address Details</legend>
          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-10">
              <input type="text" name="address1" placeholder="Address Line 1" class="form-control">
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-10">
              <input type="text" name="address2" placeholder="Address Line 2" class="form-control">
            </div>
          </div>
          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
            <div class="col-sm-2">
              <input type="text" name="state" placeholder="State" class="form-control">
            </div>
            <div class="col-sm-4">
              <input type="text" name="postalCode" placeholder="Post Code" class="form-control">
            </div>
          </div>
<!-- Parent/Guadian Contact Section -->
          <!-- Form Name -->
          <legend>Parent/Guardian Information</legend>
          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <input type="text" name="pfname" placeholder="First Name" class="form-control">
            </div>
            <div class="col-sm-2">
              <input type="text" name="pmname" placeholder="Middle Name" class="form-control">
            </div>
            <div class="col-sm-4">
              <input type="text" name="plname" placeholder="Last Name" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-2">
              <select type="pContactMethod" placeholder="Contact Method" name="contactmethod" class="form-control">
                <option>Contact Method</option>
                <option value="phone">Phone</option>
                <option value="text">Text</option>
                <option value="email">Email</option>
              </select>
            </div>  
            <div class="col-sm-4">
              <input type="pPhoneNbr" placeholder="Phone Number"  name="phone"class="form-control">
            </div>
            <div class="col-sm-4">
              <input type="email" name="pEmail" placeholder="Email" class="form-control">
            </div>
           </div>

<!-- Emergency Contact Section -->
          <!-- Form Name -->
          <legend>Emergency Contact Information</legend>
          <!-- Text input-->
          <div class="form-group">
            <div class="col-sm-4">
              <input type="text" name="efname" placeholder="First Name" class="form-control">
            </div>
            <div class="col-sm-2">
              <input type="text" name="emame" placeholder="Middle Name" class="form-control">
            </div>
            <div class="col-sm-4">
              <input type="text" name="elname" placeholder="Last Name" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-2">
              <select type="pContactMethod" placeholder="Contact Method" class="form-control">
                <option>Contact Method</option>
                <option value="phone">Phone</option>
                <option value="text">Text</option>
                <option value="email">Email</option>
              </select>
            </div>  
            <div class="col-sm-4">
              <input type="text" name="ePhoneNbr" placeholder="Phone Number" class="form-control">
            </div>
            <div class="col-sm-4">
              <input type="email" name="eEmail" placeholder="Email" class="form-control">
            </div>
           </div>

            <legend>Registration for Hostels</legend>
            <div class="form-group">
                <div class="col-sm-2">
                  <input type="checkbox" name="Boys Hostel -1">  Boys Hostel -1
                </div>
                <div class="col-sm-2">
                  <input type="checkbox" name="Boys Hostel -2">  Boys Hostel -2
                </div>
                <div class="col-sm-2">
                  <input type="checkbox" name="Girls Hostel -1">  Girls Hostel -1
                </div>
                 <div class="col-sm-2">
                  <input type="checkbox" name="Girls Hostel -2">  Girls Hostel -2
                </div>
          </div>
<!-- Command -->
          <div class="form-group">
            <div class="col-sm-5 col-sm-offset-1">
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



