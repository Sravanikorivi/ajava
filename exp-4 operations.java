package operations;
import java.sql.*;
public class Sravani {

	public static void main(String[] args)throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE","system","tec");
		Con.SetAutoCommit(false);
		Statement stmt=con.createStatement(
				ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
		ResultSet rs=stmt.executeQuery("select age from student1258");
		rs.absolute(1);
		int newage = rs.getInt("age")+1;
		rs.updateInt("age", newage);
		rs.updateRow();
		System.out.println(newage);
		rs.close();
		stmt.close();
		con.close();
		con.commit();
		con.close();
				
	} 

}

