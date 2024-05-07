<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
body{
background-image: url("https://wallpaperaccess.com/full/4707312.jpg");
background-repeat: no-repeat;
background-size: 100%;
}

#btn1{
   margin-left: 45%;
}
table, th, td{
 color: black;
 font-weight: bold;
border-radius:5px;
font-weight: bold;
border: 1px solid black;
border-collapse: collapse;
box-shadow: 0 4px 12px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
th, td {
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 40px;
}</style>
<script>
function Validation() {
	
	var id=document.getElementById("id1").value;
	
	if(id==""){
		alert("Item id is must...to Find a Record");
	}
	
	else if(id.length<3){
		alert("Item  Id length must be greater than 3");

	}
}
</script>
</head>
<body>
<br><br><br>
<form action="Find" method="post" modelAttribute="bean">
<font size="5px" color="purple">
<table border="3" class="tab" align="center">
<tr>
<center><b>Fetch Book Details</b></center><br>
</tr>
<tr>
<td>Book ID: </td>
<td>
<select name="bid" class="table-secondary">
<c:forEach items="${idList}" var="id">

<option>${id}</option>

</c:forEach>
</select>
</td>
</tr>
<tr>
<td colspan="3"><input type="submit" class="btn btn-success btn-lg" onmousedown="Validation()" value="Search" name="button">

</tr>

</table>
</font>

</form>


</body>
</html>