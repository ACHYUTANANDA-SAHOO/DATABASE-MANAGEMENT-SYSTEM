
import java.sql.*;

class 20_DBConnect
{
	Statement s;
	Connection c;
	DBConnect()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			c=DriverManager.getConnection("jdbc:mysql://localhost/3306/sse","root","Ans02*@mysql");  //testDB is dbname,   root is dbusername and dbpassword
			s=c.createStatement();
			
			s.execute("CREATE TABLE JavaLab(name text(16),surname text(6),city text(6))");
			System.out.println("Table created");
		}

		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	public static void main(String args[])
	{
		DBConnect x =new DBConnect();
	}
}
