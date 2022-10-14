package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.chap14.Customer;
import domain.chap14.Employee;

/**
 * Servlet implementation class Servlet30
 */
@WebServlet("/Servlet30")
public class Servlet30 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet30() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get request param
		String idParam = request.getParameter("id");
		if(idParam == null) {
			idParam = "1";
		}
		
		int id = Integer.parseInt(idParam);
		
		// business logic
		String sql = "SELECT * "
				+ "FROM Customers "
				+ "WHERE CustomerID = ? ";

		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setInt(1, id);
			try (ResultSet rs = pstmt.executeQuery();) {

				if (rs.next()) {
					Customer c = new Customer();
					c.setName(rs.getString("customerName"));
					c.setContactName(rs.getString("contactName"));
					c.setAddress(rs.getString("address"));
					c.setCity(rs.getString("city"));
					c.setCountry(rs.getString("country"));
					c.setId(id);

					request.setAttribute("customer", c);
				}
				
//				int cnt = pstmt.executeUpdate();
//				if(cnt == 1) {
//					
//				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// forward
		String path = "/WEB-INF/view/chap14/view13.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. request param 수집/가공
		String name = request.getParameter("name");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);

		// 3. business logic
		String sql = "UPDATE Customers "
				+ "SET CustomerName = ?, "
				+ "    ContactName = ?, "
				+ "    Address = ?, "
				+ "    City = ?, "
				+ "    Country = ? "
				+ "WHERE CustomerId = ?";
		
		String sql2 = "SELECT *\r\n"
				+ "FROM Customers";

		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql2);) {

			pstmt.setString(1, name);
			pstmt.setString(2, contactName);
			pstmt.setString(3, address);
			pstmt.setString(4, city);
			pstmt.setString(5, country);
			pstmt.setInt(6, id);

			int cnt = pstmt.executeUpdate();
			if (cnt == 1) {
				// 4. add attribute
				HttpSession session = request.getSession();
				session.setAttribute("message", "직원 정보가 수정되었습니다.");
				
//				String path = request.getContextPath() + "/Servlet23";
//				response.sendRedirect(path);
				List<Customer> list = new ArrayList<>();
				while (rs.next()) {
					Customer c = new Customer();
					c.setName(rs.getString("customerName"));
					c.setContactName(rs.getString("contactName"));
					c.setAddress(rs.getString("address"));
					c.setId(rs.getInt("customerId"));
					c.setCity(rs.getString("city"));
					c.setCountry(rs.getString("country"));
					
					list.add(c);
				}
				
				request.setAttribute("customerList", list);
			}
			// 5. forward / redirect
//			String path = "/WEB-INF/view/chap14/view13_1.jsp";
//			request.getRequestDispatcher(path).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String path = request.getContextPath() + "/Servlet23";
		response.sendRedirect(path);
	}

}
