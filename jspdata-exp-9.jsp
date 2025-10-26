		cmd
create table users(id int ,name varchar(20),mobileno int);
insert into users values(1258,'sravani',8341715211);
insert into users values(1267,'manju',2637281711);
insert into users values(1246,'harini',67235815211);
select * from users;
commit;
program
=======
<%@ page import ="java.sql.*" %>
<html>
<head>
<title>database access through jsp</title>
</head>
<body>
<h2>Users from Database</h2>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tec");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from users");
	while(rs.next())
	{
		out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getLong(3)+ "<br>");
	}
	rs.close();
	stmt.close();
	con.close();
%>
</body>
</html>