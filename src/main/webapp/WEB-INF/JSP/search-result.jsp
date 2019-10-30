<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@page import="org.slf4j.LoggerFactory"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
LoggerFactory.getLogger("search-result.jsp").debug("Display search-result.jsp");
%>
<html>
<body>
	<h2>Your name: ${name}</h2>
	<br/>
	<a href="/search">Try again</a>
</body>
</html>