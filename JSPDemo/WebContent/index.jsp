<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %><br/>
    <%@ include file="footer.jsp" %><br/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="WEB-INF/custom.tld" prefix="raj" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Practice</title>
</head>
<body>

	<p><c:out value="JSTL Tags"/></p>

	<c:set value="Hello world" var="str"/>
 	<c:forEach items="${fn:split(str,' ')}" var="student">
		${student}<br/>
	</c:forEach>
	
	<!--<c:import var="data" url="https://www.google.com"/>-->
	<c:remove var="str"/>
	
	<c:set var="str" value="New Hello world!"/>
	
	<c:catch var="exec">
		<%= 2/0 %>
	</c:catch>
	
	<c:if test="${exec!=null }">
		${exec}
	</c:if>
	<br/>
	<raj:Rajesh>I am new Tag</raj:Rajesh>
	
	<c:if test='${str=="news"}'>
		<p>It is news</p>
	</c:if>
	
	<c:set var="salary" value="${999}"/>
	
	<c:choose>
		<c:when test="${salary>10000 }">
			<p>You are rich</p>
		</c:when>
		<c:when test="${salary<10000 || salary>5000 }">
			<p>You are good</p>
		</c:when>
		<c:otherwise>
			<p>You are success</p>
		</c:otherwise>
	</c:choose>
	
	<c:forEach var="count" begin="1" end="5">
		<p>Count : ${count}</p>
	</c:forEach>
	
	<c:forTokens var="name" items="rajesh-random" delims="-">
		<p>${name}</p>
	</c:forTokens>
	
	<c:url var="completeURL" value="/index.jsp">
		<c:param name="name" value="rajesh"></c:param>
	</c:url>
	
	<a href="${completeURL}">Click me</a>
	<p>I am from URL: ${param.name}</p>
	
	
	
</body>
</html>