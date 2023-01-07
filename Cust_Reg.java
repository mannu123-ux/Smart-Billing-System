package myServlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Cust_Reg")

public class Cust_Reg extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public Cust_Reg() 
    {
        super();
    }

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String address=req.getParameter("add");
		String contact=req.getParameter("mob");
		String gst=req.getParameter("gst");
		String state=req.getParameter("state");
		
		
		
		try {
			Connection con=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/billsystem";
			String usr="root";
			String psw="1234";
			con=DriverManager.getConnection(url,usr,psw);
			Statement st=con.createStatement();
			st.executeUpdate("insert into customer values("+id+",'"+name+"','"+address+"','"+contact+"','"+gst+"','"+state+"')");
			System.out.println("Insertion Successfull  ");
			}
			catch(Exception e) {}
		
	}
}
