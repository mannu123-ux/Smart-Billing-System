package myServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class customer_delete
 */
@WebServlet("/customer_delete")
public class customer_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public customer_delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
			int id1=Integer.parseInt(req.getParameter("val"));
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/billsystem";
			String usr="root";
			String psw="1234";
			Connection con=DriverManager.getConnection(url,usr,psw);
			Statement st=con.createStatement();
			st.executeUpdate("delete from customer where id="+id1);
			response.sendRedirect("customer_report.jsp");
			
		}
		catch(Exception e) {}
	}

	

}
