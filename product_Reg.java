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


@WebServlet("/product_Reg")
public class product_Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public product_Reg() {
        super();
        
    }

	
	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("product_id"));
		String name=req.getParameter("product_name");
		String procut_group=req.getParameter("product_group");
		String mrp=req.getParameter("product_mrp");
		String gst=req.getParameter("gst");
		int quantity=Integer.parseInt(req.getParameter("initial_quantity"));
		
		try {
			
			Connection con=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/billsystem";
			String usr="root";
			String psw="1234";
			con=DriverManager.getConnection(url,usr,psw);
			Statement st=con.createStatement();
			st.executeUpdate("insert into product values("+id+",'"+name+"','"+procut_group+"','"+mrp+"','"+gst+"',"+quantity+")");
			System.out.println("Insertion Successfull  ");
			}
			catch(Exception e) {}
		
	}

}
