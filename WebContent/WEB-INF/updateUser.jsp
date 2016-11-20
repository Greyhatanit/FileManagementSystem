<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
<style>
.center {
	margin-left: auto;
	margin-right: auto;
	width: 70%;
	background-color: #C0C0C0;
}
</style>
</head>
<body>
	<div class="center">
		<fieldset>
			<legend>Update User Data</legend>
			<center>
				<form:form method="POST" commandName="user" action="update">
					<table>
						<tr>
							<td><form:label path="userId">Contract No:</form:label></td>
							<td><form:input path="userId" value="${user.contractno}" /></td>
						</tr>
						<tr>
							<td><form:label path="filename">File Name:</form:label></td>
							<td><form:input path="filename" value="${user.filename}" /></td>
						</tr>
						<tr>
							<td><form:label path="account_no">Account No:</form:label></td>
							<td><form:input path="account_no" value="${user.account_no}" /></td>
						</tr>
						<tr>
							<td><form:label path="caption">Caption:</form:label></td>
							<td><form:input path="caption" value="${user.caption}" /></td>
						</tr>
						<tr>
							<td><form:label path="Handler">Handler:</form:label></td>
							<td><form:input path="Handler" value="${user.handler}" /></td>
						</tr>
						<tr>
							<td><form:label path="description">Description:</form:label></td>
							<td><form:input path="description" value="${user.description}" /></td>
						</tr>
						<tr>
							<td><form:label path="path">path:</form:label></td>
							<td><form:input path="path" value="${user.path}" /></td>
						</tr>
						<tr>
							<td><form:label path="date">Date:</form:label></td>
							<td><form:input path="date" value="${user.date}" /></td>
						</tr>
						<tr>
							<td><form:label path="file">File:</form:label></td>
							<td><input type="file" name="choosefile" size="40" /><td>
						</tr>
						<tr>
							<td colspan="1"><input type="submit" value="Submit" /></td>
						</tr>
					</table>
				</form:form>
			</center>
		</fieldset>
	</div>
</body>
</html>

