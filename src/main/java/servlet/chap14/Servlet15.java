package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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

/**
 * Servlet implementation class Servlet15
 */
@WebServlet("/Servlet15")
public class Servlet15 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet15() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 파라미터 수집
		// 2. 파라미터 가공
		// 3. business logic
		//    고객명 오름차순
		String sql = "SELECT CustomerName\r\n"
				+ "FROM Customers;";
		
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String password = application.getAttribute("jdbc.password").toString();
		
		try (
				// connection 얻기
				Connection con = DriverManager.getConnection(url, user, password);
				// statement 생성
				Statement stmt = con.createStatement();
				// 쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);
				) {

				// 4. add attribute 추가 
				List<String> list = new ArrayList<>();
				while(rs.next()) {
					list.add(rs.getString(1));
				}
				request.setAttribute("list", list);

				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 5. /WEB-INF/view/chap14/view03.jsp 로 forward
		String path = "/WEB-INF/view/chap14/view03.jsp";
		request.getRequestDispatcher(path).forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
