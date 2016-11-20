<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Spring Jdbc CRUD</title>
</head>
<body>
	<center>
		<br /> <br /> <br /> <b>Edit User Details </b><br /> <br />
		<center>
			<br /> <br /> <br /> <b> File Upload </b> <br /> <br />
			<form method="post" action="/FileManagementSys/update">
			
			<c:forEach var="data" items="${dataList}">
				Contract No :<input type="text" name="contractno" />${data.contractno}<br />
				File Name :<input type="text" name="filename" />${data.filename}<br /> 
				Account	Number :<input type="text" name="accountno" />${data.account_no}<br /> 
				Caption :<input	type="text" name="caption" />${data.caption}<br /> 
				Description :<input	type="text" name="description" />${data.description}<br />
				Handler :<input	type="text" name="Handler" />${data.handler}<br />
				Photo:<input type="text" name="photo"/>$data.path<br/>
				Date<input type="date" data-date-format="YYYY MMM DD" name="pastdate" />${data.date}<br /> Choose
				File:<input type="file" name="choosefile" size="40" /><br />
				<input	type="submit" name="Upload" />
			</c:forEach>
			
			</form>
		</center>
	</center>
</body>
</html>