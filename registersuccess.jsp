<%-- 
    Document   : registersuccess
    Created on : Nov 23, 2017, 11:14:20 AM
    Author     : ishdapso
--%>

<%@page import="java.sql.Time"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <table>
                      <tr><th>Employee Id</th>
                          <th>Employee Name</th>
                          <th>Department</th>
                           <th>Designation</th>
                          <th>Mobile Status</th>
                          <th>Starting Place</th>
                          <th>Destination Place</th>
                         <th>Expenses </th>
                       </tr>
    </head>
    <body>
     <h1 align="center">Register Page</h1>
     
        <%
          
     
          //  String date=01+"-"+month+"-"+year;
//DateFormat df=new SimpleDateFormat("dd-MM-yyyy");

//java.util.Date dat=df.parse(date);
//java.sql.Date reportdate=new java.sql.Date(dat.getTime());
            
            String empname=request.getParameter("name");
            System.out.println("name" +empname);
            String empid=request.getParameter("empid");
            System.out.println("empid"+empid);
            String emppass=request.getParameter("password");
            System.out.println("password"+emppass);
            String empdept=request.getParameter("department");
            System.out.println("department"+empdept);
            String empdesg=request.getParameter("designation");
            System.out.println("designation"+empdesg);
            String empmobile=request.getParameter("mobile");
            System.out.println("mobile" +empmobile);
       //     String tdate=request.getParameter("tdate");
         //   System.out.println("tdate   " +tdate);
           // DateFormat df=new SimpleDateFormat("yyyy-mm-dd");
            //System.out.println("df    " +df);
            //java.util.Date dat=df.parse(tdate);
            //System.out.println("dat    " + dat);
           // String ttime=request.getParameter("ttime");
           // System.out.println("ttime" +ttime);
            String splace=request.getParameter("splace");
            System.out.println("splace" +splace);
            String dplace=request.getParameter("dplace");
            System.out.println("dplace" +dplace);
            String expenses=request.getParameter("expenses");
            System.out.println("expenses" +expenses);
           // String ttime=request.getParameter("ttime");
            
            //String usertime=new Date().toString();
           // System.out.println("ttime" +usertime);

            
            
            
            Class.forName("oracle.jdbc.OracleDriver");
               System.out.println("connected");
        String url="jdbc:oracle:thin:@//10.194.32.41:1521/XE";
          System.out.println("url"+url);
       Connection con=DriverManager.getConnection(url,"hr","hr");
         System.out.println("connected ---1");
       String sql="insert into register_new(empid,name,password,department,designation,mobilenumber,splace,dplace,expenses) values(?,?,?,?,?,?,?,?,?)";
         System.out.println("sql"+sql);
         
         
          PreparedStatement ps=con.prepareStatement(sql);
           ps.setString(1, empid);
        ps.setString(2,empname);
         ps.setString(3, emppass);
        ps.setString(4,empdept);
         ps.setString(5, empdesg);
         ps.setString(6,empmobile);
       // ps.setString(7,tdate);
        // ps.setString(7,ttime);
         ps.setString(7, splace);
         ps.setString(8,dplace);
         ps.setString(9, expenses);
        // ps.setString(10, usertime);
    
      int i=ps.executeUpdate();
          System.out.println("integer value" +i);
      if(i>0)
      {
          out.println("data entered successfully");
      }
      else
       {
          out.println("wrong data");
      }
    
     /*out.println("EmployeeID is: " +empid);
           out.println("Employee Name is: "+empname);   
                 out.println("Employee Department: "+empdept);
                   out.println("Employee Designation: "+empdesg);
                       out.println("Employee Mobile Number is: "+empmobile);
                           out.println("Employee Starting Place is: "+splace);
                               out.println("Employee Destination is: "+dplace);
                                   out.println("Employee Expenses: "+expenses);*/
        %>
    <tr>
        <td><%=empid%></td>
        <td><%=empname%></td>
        <td><%=empdept%></td>
        <td><%=empdesg%></td>
        <td><%=empmobile%></td>
        <td><%=splace%></td>
        <td><%=dplace%></td>
        <td><%=expenses%></td>
        
    </tr>
        
        </table>
    </body>
</html>
