
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RepeatServlet")
public class RepeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");

		request.setCharacterEncoding("utf-8");
		String string = request.getParameter("string");
		int num = Integer.parseInt(request.getParameter("number"));

		PrintWriter out = response.getWriter();

		for (int i = 0; i < num; i++) {
			out.println(string + "<br>");
		}
		out.close();
	}

}
