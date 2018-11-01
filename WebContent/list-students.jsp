<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Employee Management System</title>
	<!-- LINKING BOOTSTRSP CDN -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2 align="center">Management Dashboard</h2>
		</div>
	</div>
	<div>
		<img style="float: right;" alt="" src="UEM_New_Logo2016.png" width=350 height=250>
	</div>
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Student -->
			
			<input type="button" value="Add Employee" 
				   onclick="window.location.href='add-student-form.jsp'; return false;"
				   class="add-student-button"
			/>
			
			<input type="button" value="Exit" 
				onclick="window.location.href='frontend/index.html'; return false;"
				   class="add-student-button"
			/>
			
			<table style="width:70%">
			
				<tr style="background-color: blue; color: white; font-weight: 900">
					<td>First Name</td>
					<td>Last Name</td>
					<td>Email</td>
					<td>Designation</td>
					<td>Contact</td>
					<td>Action</td>
				</tr>
				
				<c:forEach var="tempStudent" items="${STUDENT_LIST}">
					
					<!-- set up a link for each student -->
					<c:url var="tempLink" value="StudentControllerServlet">
						<c:param name="command" value="LOAD" />
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>

					<!--  set up a link to delete a student -->
					<c:url var="deleteLink" value="StudentControllerServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>
																		
					<tr>
						<td>${tempStudent.firstName}</td>
						<td>${tempStudent.lastName}</td>
						<td>${tempStudent.email}</td>
						<td>${tempStudent.designation}</td>
						<td>${tempStudent.contact}</td>
						<td> 
							<a href="${tempLink}">Update</a> 
							 | 
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">
							Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
		
		</div>
	
	</div>
	
	
	<div class="footer">
		<p>Developed By Amitrajit Bose, Sourav Kumar & Kirti Ojha at University of Engineering & Management, Kolkata</p>
	</div>
</body>
</html>








