<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Function tags</title>
</head>
<body>
<c:set var="a" value="welcome to jsp strings" />
<p>'${a}'</p>
<p>${fn:length(a)}</p>
<p>${fn:toUpperCase(a)}</p>
<p>${fn.toLowerCase(a)}</p>
<p>${fn.contains(a,'jsp')}</p>
<p>${fn.indexOf(a,'jsp)}</p>
<p>'${fn.trim(a)}'</p>
</body>
</html>
