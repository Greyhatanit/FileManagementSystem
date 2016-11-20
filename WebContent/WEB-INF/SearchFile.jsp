<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Files</title>
<script type="text/css">
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
	background-color: currentColor;
	background: #B2EAE3;
}
</script>
</head>
<body><center>
	<form action="/FileManagementSys/searchByFileName" method="post">
		<p>
			Enter file name: <input type="text" name="FileName" />
		</p>
		<input type="submit" name="Submit" />
		</center>
</body>
</html>