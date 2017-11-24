<%-- 
    Document   : save
    Created on : Oct 6, 2017, 11:03:47 AM
    Author     : ishdapso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saving data</title>
    </head>
    <body>
        
     
        <%
            String empid=request.getParameter("empid");
            System.out.println(empid);
               String password=request.getParameter("password");
                System.out.println(password);
               String empname1=null,empid1=null;
            Connection con=null;
             Class.forName("oracle.jdbc.OracleDriver");
              System.out.println("connected");
              con=DriverManager.getConnection("jdbc:oracle:thin:@10.194.32.41:1521:XE", "hr", "hr");
               System.out.println("done 1");
               String sql="select * from register_new where empid=? and password=?";
                System.out.println(sql);
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, empid);
        ps.setString(2,password);
       ResultSet rs= ps.executeQuery();
     while(rs.next())
     {
   empid1= rs.getString(1);
   empname1= rs.getString(2);
          System.out.println(empid1);
     }
   
     if(empid.equals(empid1))
     {
          out.print("Welcome   "+empid1);  
          %>
          <br/>
          <%
        out.println( "Name is   "+empname1);
     }
     else
     {
           out.println("please re login!!!");
     }
            %>
    </body>
</html>
