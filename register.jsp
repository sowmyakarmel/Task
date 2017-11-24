<html>
<body>
<script>  
function validateform(){  
var employee=document.myform.employee.value;  
var password=document.myform.password.value;  
var department=document.myform.department.value;
var designation=document.myform.designation.value;
var mobile=document.myform.mobile.value;
if (employee==null || employee=="")
{
    if(password==null || password=="")
    {
        if(department==null || department=="")
        {
            if(designation==null || designation=="")
            {
                if(mobile==null || mobile=="")
                {
                    alert("Mobile number should not be empty");
                    return false;
                }
                else
                {
                    return true;
                }
                return false;
            }
        }
    }
    
  alert("employee can't be blank");  
  return false;  
}else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
}  
</script>  
<body>  
<form name="myform" method="post" action="registersuccess.jsp" onsubmit="return validateform()" >  
    Employee-id <input type="text" name="empid" ><br/>  
Employee name: <input type="text" name="name" ><br/>  
Password: <input type="password" name="password"><br/> 
Department:<input type="text" name="department"></br>
Designation:<input type="text" name="designation"></br>
Mobile Number:<input type="text" name="mobile" ></br>
<%--Tour Date:<input type="date" name="tdate"></br> --%>
Starting place<input type="text" name="splace"></br>
Destination:<input type="text" name="dplace"><br/>
Expenses:<input type="text" name="expenses"><br/>

<input type="submit" value="register">  
</form>  
</body>
</html>