<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}
body{
	background : url("https://www.inwhatlanguage.com/wp-content/uploads/2016/09/plain-light-color-for-guest-background-300x188.jpg ")no-repeat center center fixed;;
	height: 200%;  
	 background-position: center;
    background-repeat: no-repeat;
    background-size: cover;

	}
/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}


.tab button:hover {
    background-color: #ddd;
}


.tab button.active {
    background-color: #ccc;
}

.tabcontent {
    display: none;
    padding: 6px 12px;
    -webkit-animation: fadeEffect 1s;
    animation: fadeEffect 1s;
}

/* Fade in tabs */
@-webkit-keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

@keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}
</style>
</head>
<body>

<h3 align="center">
Employee Details<p align="right">Hello ${name}!!</p>

</h3>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Resources')">Resources</button>
  <button class="tablinks" onclick="openCity(event, 'Company Team Expense')">Company Team Expense</button>
  <button class="tablinks" onclick="openCity(event, 'My profile')">My profile</button>
</div>

<div id="Resources" class="tabcontent">
   <table align="center" >
  <h3>Resource Details</h3>
 
<tr >
<td>Name: <input  type="text" name="fname" placeholder="Name" /></td>
<td>Employee ID:<input type="text" name="lname" placeholder="empId" /></td>
</tr>
</table>
<br>
<table align="center">
<tr>
<td> <input  type="submit" value="Search"  /></td>
<td> <input  type="submit" value="Reset"  /></td>
</tr>
</table>

<input type="button" class="btn btn-success" name="answer" value="ADD" onclick="add()" />
<div id="welcomeDiv"  style="display:none;" class="answer_list" > 
<div class="container">
<br><br>
<form>
<label>Name:</label>
  <input type="text" name="Name"  class="form-control" placeholder="Enter Name....." required><br>

<label>Emp ID:</label>
  <input type="text" name="emp"  class="form-control" placeholder="Enter Emp ID....." required><br>
 
  <label>Mail ID:</label>
  <input type="text" name="mail"  class="form-control" placeholder="Enter Mail ID....." required><br>
  <label>Phone Number:</label>
  <input type="text" name="pnum"  class="form-control" placeholder="Enter Phone Number....." required><br>
  <label>Gender:</label><br>
  <label class="radio-inline">
      <input type="radio" name="optradio" checked>Male
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Female
    </label>
 <div align="center">
<button type ="submit" class="btn btn-success" >ADD</button>
<button type ="submit" class="btn btn-failures" >CANCEL</button>
 </div> 
  
</form>

</div>



</div>

<script>
function add() {
   document.getElementById('welcomeDiv').style.display = "block";
}
</script>

</div>

<div id="Company Team Expense" class="tabcontent">
  <h3>expense</h3>

</div>

<div id="My profile" class="tabcontent">
  <h3>profile details</h3>
 
</div>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
    
	
</body>
</html> 
