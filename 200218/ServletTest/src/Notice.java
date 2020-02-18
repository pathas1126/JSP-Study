
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Notice")
public class Notice extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 응답 문서의 타입/인코딩 지정
		response.setContentType("text/html;charset=utf-8");

		// PrintWriter 스트림 객체 생성
		PrintWriter out = response.getWriter();

		// 출력 내용
		out.println("<html><head><title></title></head>");
		out.println("<body>");

		// Calendar 객체 생성
		Calendar cal = Calendar.getInstance();

		// 불러올 파일명 지정
		String fileName = "";
		fileName += cal.get(Calendar.YEAR); // 2020
		fileName += cal.get(Calendar.MONTH) + 1; // 2
		fileName += cal.get(Calendar.DATE); // 18
		fileName += ".txt";

		// 절대 경로 지정
		String realPath = "C:\\webtest\\4.jsp\\JSP-Study\\200218\\ServletTest\\WebContent\\notice\\" + fileName;
		System.out.println("realPath>>>>" + realPath);

		try {
			BufferedReader br = new BufferedReader(new FileReader(realPath));
			String line;
			while ((line = br.readLine()) != null) {
				out.println(line + "<br/>");
			}
			br.close();
		} catch (IOException ioe) {
			System.out.println("파일 경로를 확인하세요>>>" + ioe);
		} catch (Exception e) {
			System.out.println("공지사항이 없습니다>>>" + e);
		}
		out.println("<p align='center'>");
		out.println("<hr>");
		out.println("<input type='submit' value='창닫기' onclick='window.close()'>");
		out.println("</body></html>");
	}

}
