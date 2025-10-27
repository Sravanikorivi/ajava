<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
</head>
<body>
<sql:setDataSource var="db"
driver 	 = "oracle.jdbc.driver.OracleDriver"
url 	 ="jdbc:oracle:thin:@localhost:1521:XE"
user	 ="system"
password ="tec"
/>
<sql:query var="queryresult" dataSource="${db}">
select * from college1
</sql:query>
<c:forEach var="attributeresult" items="${queryresult.rows}"><br>
${attributeresult.name} ${attributeresult.address} ${attributeresult.code}
</c:forEach>
</body>
</html>