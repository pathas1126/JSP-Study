
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/GetDate")
public class GetDate extends HttpServlet {

	// GET 방식으로 요청해도 service() 메소드가 호출됨

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// service() 호출 확인용
		System.out.println("service 호출");

		// 응답 문서의 타입과 인코딩 지정
		response.setContentType("text/html;charset=utf-8");

		// 데이터 전송을 위한 I/O 클래스, response의 getWriter() 메소드로 객체 반환
		PrintWriter out = response.getWriter();
		out.println("<html><head></head>");
		out.println("<body>");

		// 요청 데이터를 utf-8 인코딩으로 얻어 와서 변수에 저장
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");

		// 출력
		out.println("이름: " + name + ", 주소: " + addr);

		out.println("</body>");
		out.println("</html>");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet 호출");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost 호출");

		doGet(request, response);
	}

}
