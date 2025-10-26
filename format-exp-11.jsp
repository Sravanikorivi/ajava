<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Format tags</title>
</head>
<body>
<c:set var="price" value="12345.678" />
<p>${price}</p><br>
<fmt:formatNumber value="${price}" /><br>
<c:set var="date" value="<%=new java.util.Date() %>" />
<p>${date}</p><br>
<fmt:formatDate value="${date}"/><br>
<c:set var="time" value="<%=new java.util.Date() %>" /><br>
<fmt:formatDate value="${time}" pattern="hh:mm:ss" />
</body>
</html>