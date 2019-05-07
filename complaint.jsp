<%-- 
    Document   : complaint.jsp
    Created on : Apr 1, 2019, 8:55:06 PM
    Author     : SONY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-
awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/S5.css">
</head>
<body>
<div class="header">
  <h1>COMPLAINTS</h1>
</div>
<br><br><br>
<div class="row">
  <div class="column" style="background-color:#000000; color:#ffffff;">
<h1>APPLY COMPLAINTS HERE</h1>
   <h4>Reception</h4>
    <p>01795661011</p>
<h4>Examination</h4>
 <p>Mr Karan: +91 9736158668</p>
<center><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">APPLY</button></center>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" 

class="close" title="Close Modal">&times;</span>
      <img src="./images1/co2.jpg" alt="Avatar" class="avatar">
    </div>

    <div class="container">
    <h3> Submit  a Complaint</h3>
    <h3> Tell us what happened in the form below</h3>
      <label for="uname"><b>Name</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="uname"><b>Email</b></label>
      <input type="text" placeholder="Enter Useremail" name="uname" >

      <label for="text"><b>Phone number</b></label>
      <input type="password" placeholder="Enter number" name="text" required>
        <h4>Textarea</h4>
         <textarea name="message" rows="10" cols="90"></textarea>
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById

('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>




  </div>
  <div class="column" style="background-color:fff0f5;" >
    <div class="container" style=" padding:0px 85px;">
  <img src="./images1/n1.jpg"alt="Notebook" style="width:600px; height:300px;">
  <div class="content">
    <h1>Apply your complaints</h1>
    <p>what types of problems you are facing</p>
  </div>
</div>
</div>
  </div>
<br><br>
<div class="row">
<div class="column" style="background-color:#aaa; width:1340px; height:580px;">
   <table >
   <center><font color="black" size="23">INFORMATION ABOUT COMPLAINTS</font></center>
  <tr>
    <th style="width:50%">complaints</th>
    <th>Basic</th>
    <th>Pro</th>
  </tr>
  <tr>
    <td> Hostelrooms</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Laundry</td>
    <td><i class="fa fa-check"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>Venus mess</td>
    <td><i class="fa fa-check"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>cleaning</td>
    <td><i class="fa fa-remove"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>gatepass</td>
    <td><i class="fa fa-check"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  <tr>
    <td>library</td>
    <td><i class="fa fa-check"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  
  <tr>
    <td>compliants box</td>
    <td><i class="fa fa-check"></i></td>
    <td><i class="fa fa-check"></i></td>
  </tr>
  
</table>

  </div>
<br><br><br><br><br><br><br>
  
</body>
</html>
