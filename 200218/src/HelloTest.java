

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloTest
 */
@WebServlet("/test/imsi/HelloTest")
public class HelloTest extends HttpServlet {

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Servlet 실행 시 가장 먼저 호출되는 메소드, 한 번만 실행됨");
		System.out.println("생성자와 같은 역할을 함, 서블릿 초기값 설정");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("서블릿 종료 시 호출, 메모리 해제 시 자동 호출");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * 사용자로부터 GET 방식으로 요청을 받아서 처리할 때 사용하는 메소드
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("웹 상에서 get방식으로 자동 호출됨");
		// 어떤 문서를 만들어서 보내줄지 결정, response 객체가 처리
		response.setContentType("text/html;charset=utf-8");
		// PrintWriter 데이터 전송을 위한 I/O 클래스
		PrintWriter out = response.getWriter();
		out.println("<html><head></head>");
		out.println("<body>");
		
		// 외부에서 접속시 출력할 내용
		out.println("<h2>HelloServlet 테스트 중입니다. ㅎㅎㅎㅎ</h2>");
		
		// 99단 테이블 생성
		out.println("<table border='1'>");
		for(int i=2; i<=9; i++) {
			out.println("<tr>");
			for(int j=1; j<=9; j++) {
				out.println("<td>");
				out.println(i+"x"+j+"="+(i*j));
				out.println("</td>");
			}
			out.println("</tr>");
		}
		
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * POST방식으로 요청을 받을 때 자동으로 호출되는 메소드 ex) 로그인, 회원가입, 파일 업로드
	 * POST방식으로 요청을 받아도 doGet()메소드가 호출됨
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
