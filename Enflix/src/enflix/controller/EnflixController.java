package enflix.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import enflix.model.Service;
import enflix.model.dto.UserDTO;

@WebServlet("/enflix")
public class EnflixController extends HttpServlet {

	private static Service service = Service.getInstance();

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");

		try {
			if (command.equals("insertUser")) {
				insertUser(request, response);
			} else if (command.equals("signinUser")) {
				signinUser(request, response);
			}
		} catch (Exception e) {
			request.setAttribute("errorMsg", e.getMessage());
			request.getRequestDispatcher("showError.jsp").forward(request, response);
			e.printStackTrace();
		}
	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "showError.jsp";

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int card = Integer.parseInt(request.getParameter("card"));
		int age = Integer.parseInt(request.getParameter("age"));
		String plan = request.getParameter("planType");

		if (email != null && email.length() != 0 && name != null) {
			UserDTO user = new UserDTO(email, pw, name, age, card, plan);
			try {
				boolean result = service.insertUser(user);
				if (result) {
					request.setAttribute("user", user);
					request.setAttribute("successMsg", "가입이 완료되었습니다.");
					url = "welcome.jsp";
				} else {
					request.setAttribute("errorMsg", "다시 시도하세요");
				}
			} catch (Exception s) {
				request.setAttribute("errorMsg", s.getMessage());
			}
			request.getRequestDispatcher(url).forward(request, response);
		}
	}

	private void signinUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			UserDTO user = service.loginUser(request.getParameter("email"), request.getParameter("pw"));
			if (user != null) {
				request.setAttribute("user", user);

				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				response.sendRedirect("select.jsp");
			} else {
				request.setAttribute("erroMsg", "일치하는 회원 정보가 없습니다.");
				request.getRequestDispatcher("showError.jsp").forward(request, response);

			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
			request.getRequestDispatcher("showError.jsp").forward(request, response);
		}
	}

//	private void updateUser(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		String url = "showError.jsp";
//		try {
//			request.setAttribute("user", service.updateUser(request.getParameter("pw")));
//		}
//	}
}
