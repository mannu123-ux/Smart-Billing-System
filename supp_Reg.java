package myServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/supp_Reg")
public class supp_Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public supp_Reg() {
        super();
       
    }

	
	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String address=req.getParameter("add");
		String contact=req.getParameter("mob");
		String gst=req.getParameter("gst");
		String state=req.getParameter("state");
		
		PrintWriter out = response.getWriter();
		out.println(id);
		out.println(name);
		out.println(address);
		out.println(contact);
		out.println(gst);
		out.print(state);
		
		try {
			out.println("Hello India ");
			Connection con=null;
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/billsystem";
			String usr="root";
			String psw="1234";
			con=DriverManager.getConnection(url,usr,psw);
			Statement st=con.createStatement();
			out.println("insert into supplier values("+id+",'"+name+"','"+address+"','"+contact+"','"+gst+"','"+state+"')");
			st.executeUpdate("insert into supplier values("+id+",'"+name+"','"+address+"','"+contact+"','"+gst+"','"+state+"')");
			System.out.println("Insertion Successfull  ");
			}
			catch(Exception e) {}
		
	}

}
