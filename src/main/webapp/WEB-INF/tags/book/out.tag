<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:body var="bodyText"></jsp:body>
<c:out value="${bodyText }" escapeXml="true"></c:out>