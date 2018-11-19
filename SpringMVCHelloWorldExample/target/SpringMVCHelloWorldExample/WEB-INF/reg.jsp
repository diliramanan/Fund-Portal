<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

<title>user expense</title>
<style>

                                           /* stlying work starts */
body
 {font-family: Arial, Helvetica, sans-serif;

}
body{
overflow:hidden;
	background : url("https://www.inwhatlanguage.com/wp-content/uploads/2016/09/plain-light-color-for-guest-background-300x188.jpg ")no-repeat center center fixed;;
	 height: 100%;  
	 background-position: top-centered;
    background-repeat: no-repeat;
    background-size: cover;
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

 .input-field:focus {
    border: 3px solid grey;
	
} 

/* Set a style for the submit button */
.btn {
    background-color: grey;
    color: white;
    padding: 15px 20px;
    border: none;
    cursor: pointer;
    width: 75%;
    opacity: 0.9;
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
}
.can:hover {
    opacity: 1;
}
</style>
	</head>

<body>
 <div class="alignment">
   <div ng-controller="cntrl" > 
   <h1  style="text-align:center">Registration form</h1>  
 
        <form name="Register" ng-submit="funcSave()" modelAttribute="Register" action="login.do" >  
              <div class="input-container">
				<i class="fa fa-user icon"></i>
				<input name="firstName"  class="input-field"  placeholder="FirstName" maxlength="60" ng-pattern="/^[a-zA-Z. ]*[a-zA-Z]{1,60}$/"   ng-model="name" />   
                
                 <br/>                  
                 <span style="color:red" ng-show="Register.name.$dirty && SRegister.name.$invalid" class="ng-hide">   
                  Please Enter Valid  Name.!  
                 </span>  
              </div>
				
              <div class="input-container">
				<i class="fa fa-user icon">  </i>
                <input name="lastName"  class="input-field"  placeholder="LastName" maxlength="60" ng-pattern="/^[a-zA-Z. ]*[a-zA-Z]{1,60}$/" ng-model="lname" />   
                 <br/>                  
                 <span style="color:red" ng-show="Register.lname.$dirty && Register.lname.$invalid" " class="ng-hide">   
                  Please Enter Valid  Name.!  
                 </span>  
              </div >
				
              <div class="input-container">
				<i class="fa fa-envelope icon"></i>
                <input name="email" class="input-field"   placeholder="Email Id" maxlength="100" ng-pattern="/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/"  ng-model="email" />      
                 
                <span style="color:red" ng-show="Register.email.$dirty && Register.email.$invalid" class="ng-hide"> 				
                Please Enter Valid  Email.!  
                </span>                  
               </div>
				 
                  
               <div class="input-container">
				<i class="fa fa-phone icon"></i>   
                
          <input name="phone" class="input-field"  placeholder="Phone number"  maxlength="10" data-ng-pattern="/^[7-9][0-9]{9}$/" data-ng-model="mobileno" />   
                 <br/>                      
                <span style="color:red" data-ng-show="Register.mobileno.$dirty && Register.mobileno.$invalid" class="ng-hide">   
                   Please Enter Valid  Mobile No.!  
                   </span>  
                  
                 </div>
				 
				 <div class="input-container">
				<i class="fa fa-group icon"></i>
                <input name="projID" class="input-field"   placeholder="Project Id"   ng-model="id" />      
                 <select >
               <option value = "1"></option>
               <option value = "2"></option>
               <option value = "3"></option>
               <option value = "4"></option>
             </select>
                <!-- <span style="color:red" ng-show="SaveForm.id.$dirty && SaveForm.id.$invalid" class="ng-hide"> 				 -->
                <!-- Please Enter Valid  Project Id !   -->
                <!-- </span>                   -->
               </div>
			   <div class="input-container">
				<i class="fa fa-group icon"></i>
                <input name="projName" class="input-field"   placeholder="project Name"  maxlength="60" ng-pattern="/^[a-zA-Z. ]*[a-zA-Z]{1,60}$/"  ng-model="pname" />      
                 
                <span style="color:red" ng-show="Register.pname.$dirty && Register.pname.$invalid" class="ng-hide"> 				
                Please Enter Valid ProjectName.!  
                </span>                  
               </div>
			   <div class="input-container">
				<i class="fa fa-user icon"></i>
            <input name="userID" class="input-field"  placeholder="User Id" maxlength="100"  ng-pattern="/^[a-zA-Z. ]*[a-zA-Z0-9]{1,60}$/" ng-model="uid" />      
                
                <span style="color:red" ng-show="Register.uid.$dirty && Register.uid.$invalid" class="ng-hide"> 				
                Please Enter Valid UserId.!  
                </span>                  
               </div>
			   <div class="input-container">
				<i class="fa fa-key icon"></i>
                <input name="password" class="input-field" type="password" placeholder="Password" maxlength="100" ng-pattern="/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/"  ng-model="pass" />      
                 
                <span style="color:red" ng-show="Register.pass.$dirty && Register.pass.$invalid" class="ng-hide"> 				
               password should contain alphabet numbers and special character of length 8 
                </span>                  
               </div>
                 
               
             
             <input type="submit" class="btn" value="submit"  >
   <input type="submit" class="can" value="cancel">
</form>  
 </div> 
 </div>
<script>  
 var app = angular.module("myApp", []);  
      app.controller('cntrl',function($scope){  
          
       $scope.funcSave = function()  
       {  
          if($scope.Register.$valid) {  
             alert("User has been created..!! Login to continue"); 
          
             }  
          else  
          {  
          alert("Form is not Valid..!!"); 
         
          }  
       }  
         
       })      
            
</script>   
 </body>  
</html>   