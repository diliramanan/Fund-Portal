<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html >
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>  
<title>Insert title here</title>
<style>
body{
	background : url("https://www.inwhatlanguage.com/wp-content/uploads/2016/09/plain-light-color-for-guest-background-300x188.jpg ")no-repeat center center fixed;;
	 height: 100%;  
	 background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	}
body {font-family: Arial, Helvetica, sans-serif;

}
* {box-sizing: border-box;}

.input-container {
   /*  display: -ms-flexbox; /* IE10 */
    display: flex; */
    width: 75%;
    margin-bottom: 15px;
	text-align: center;	
}

.icon {
    padding: 10px;
    background: grey;
    color: white;
    min-width: 50px;   
}
.input-field {
    width: 100%;
    padding: 10px;
    outline: none;
}

/* .input-field:focus {
    border: 2px solid grey;
} */

/* Set a style for the submit button */
.btn {
    background-color: grey;
    color: white;
    padding: 15px 20px;
    border: none;
    cursor: pointer;
    width: 75%;
    opacity: 0.9;
	align:center;
}

.btn:hover {
    opacity: 1;
}
.alignment
{
padding: 70px 0;
   border: 5px blue;
    text-align: center;
}
.can{
background-color: black;
    color: white;
    padding: 15px 20px;
    border: none;
    cursor: pointer;
    width: 75%;
    opacity: 0.9;
	align:center;
}
.can:hover {
    opacity: 1;
}
</style>
</head>


	<body ng-app="myApp">
	<div class="alignment" ng-controller="cntrl">
 <form name="SaveForm" modelAttribute="Login" action="dashboard.do">
  <h2>Login Form</h2>
 
			   <div class="input-container">
				<i class="fa fa-user icon"></i>
                <input name="userId" class="input-field"  placeholder="User Id" maxlength="100" ng-pattern="/^[a-zA-Z. ]*[a-zA-Z0-9]{1,60}$/" ng-model="uid" />      
                 
                <span style="color:red" ng-show="SaveForm.uid.$dirty && SaveForm.uid.$invalid" class="ng-hide"> 				
                Please Enter Valid UserId.!  
                </span>                  
               </div>
			   <div class="input-container">
				<i class="fa fa-key icon"></i>
                <input name="password" class="input-field" type="password" placeholder="Password" maxlength="100" ng-pattern="/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/"  ng-model="pass" />      
                 
                <span style="color:red" ng-show="SaveForm.pass.$dirty && SaveForm.pass.$invalid" class="ng-hide"> 				
               password should contain alphabet numbers and special character of length 8 
                </span>                  
               </div>
                 

  <div style="text-align:center">  
             <input type="submit" class="btn" value="submit"  >
   <input type="submit" class="can" value="cancel">
   </div>
</form>
</div>
<script>  
 var app = angular.module("myApp", []);  
      app.controller('cntrl',function($scope){  });
	  </script>
</body>
</html>