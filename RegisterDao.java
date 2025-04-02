import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao {
	private String url="jdbc:mysql://localhost:3306/jdbc";
	private String user="root";
	private String password="1234";
	private String driver="com.mysql.cj.jdbc.Driver";
	private Connection con=null;
	
	public void load(String driver) {
		try {			
			Class.forName(driver);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public Connection getConnection(){
		try {
			con=DriverManager.getConnection(url, user, password);
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public String insert(Member member) {
		load(driver);
		con=getConnection();
		String result="Success";
		String query="insert into member(uname,email,password,Cpassword) values (?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,member.getName());
			ps.setString(2,member.getEmail());
			ps.setString(3,member.getPassword());
			ps.setString(4,member.getCpassword());
			ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
			result ="failed";
		}
		
		return result;
	}
	public String login(String email,String password) {
		load(driver);
		con=getConnection();
		String result="Success";
		String query = "SELECT * FROM member WHERE email=? AND password=?;";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,email);
			ps.setString(2,password);
			ResultSet rs = ps.executeQuery();
		}
	catch(Exception e){
		e.printStackTrace();
		result ="failed";
	}
	
	return result;
	}
	
}
