package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.net.ApplicationBufferHandler;

/**
 * Servlet implementation class Servlet12
 */
@WebServlet("/Servlet12")
public class Servlet12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet12() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT * "
				+ "FROM Employees "
				+ "ORDER BY BirthDate;";
		
		ServletContext application = request.getServletContext();
		
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String password = application.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, password);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				) {
			System.out.println("문제없이 연결됨");
			while (rs.next()) {
				String name1 = rs.getString(1);
				String name2 = rs.getString(2);
				String name3 = rs.getString(3);
				String name4 = rs.getString(4);
				System.out.println(name1 + ". " + name2 + " " + name3 + " : " + name4);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("문제발생");
		}
		
//		stmt.close();
//		con.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
