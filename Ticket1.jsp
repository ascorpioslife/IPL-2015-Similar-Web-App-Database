<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body {
	margin: 0;
	padding: 0;
}
h1 {
	color : #045789;
	text-align : center;
	font-family: "SIMPSON";
}
form {
	width: 300px;
	margin: 0 auto;
}
button{
	width: 300px;
	margin: 0 auto;
	margin-top: 10%;
}
</style>
<title> Seats Booking</title>
</head>
<body>
<h1>**********BOOK TICKETS*********</h1>
<form class="form-inline">
  <div class="form-group">
    <label for="userId">UserId:</label>
    <input type="text" class="form-control" id="userId" placeholder="Enter User Id">
  </div>
  <div class="form-group">
    <label for="matchNo">Match No. : </label>
    <select class="form-control" id="matchNo">
    <%for(int i=1;i<=30;i++){ %>
  <option><%=i %></option>
  <%} %>
</select>
    <!-- <input type="text" class="form-control" id="matchNo" placeholder="Enter Match No.">
   -->
  </div>
  <div class="form-group">
      <label for="noOfTickets">No. Of Tickets: </label>
    <input type="text" class="form-control" id="noOfTickets" placeholder="Enter No. Of Tickets">
  </div>
  <button type="submit" class="btn btn-primary">Make Payment</button>
</form>
</body>
</html>