<!DOCTYPE html>
<html>

<head>
	<title>Update Employee</title>

	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/add-student-style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">	
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2 align="center">XYZ Private Ltd.</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Update Employee Details</h3>
		
		<div>
		<img style="float: right;" alt="" src="UEM_New_Logo2016.png" width=350 height=250>
		</div>
		
		<form action="StudentControllerServlet" method="GET">
		
			<input type="hidden" name="command" value="UPDATE" />

			<input type="hidden" name="studentId" value="${THE_STUDENT.id}" />
			
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><input type="text" name="firstName" 
								   value="${THE_STUDENT.firstName}" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><input type="text" name="lastName" 
								   value="${THE_STUDENT.lastName}" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email" 
								   value="${THE_STUDENT.email}" /></td>
					</tr>
					
					<tr>
						<td><label>Designation:</label></td>
						<td><input type="text" name="designation" 
								   value="${THE_STUDENT.designation}" /></td>
					</tr>
					
					<tr>
						<td><label>Phone Number:</label></td>
						<td><input type="number" name="contact" 
								   value="${THE_STUDENT.contact}" /></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
					
				</tbody>
			</table>
		</form>
		
		<div style="clear: both;"></div>
		
		<p>
			<a href="StudentControllerServlet">Back to List</a>
		</p>
	</div>
	<div class="footer">
		<p>Developed By Amitrajit Bose, Sourav Kumar & Kirti Ojha at University of Engineering & Management, Kolkata</p>
	</div>
</body>

</html>