<%-- 
    Document   : file_upload_success
    Created on : Jun 5, 2018, 5:52:22 PM
    Author     : kar
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Spring MVC Multiple File Upload</title>
</head>
<body>
        <div class="row" style="background-color:antiquewhite; width:800px" >
	<h1><spring:message code="label.graciasCompartir"/></h1>
	<p><spring:message code="label.cargadoArchivos"/></p>
	<ol>
		<c:forEach items="${files}" var="file">
			<li>${file}</li>
		</c:forEach>
	</ol>
        </div>
</body>
</html>
