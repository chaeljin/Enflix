package enflix.controller;

import java.io.IOException;
import java.time.LocalDate;

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
			} else if (command.equals("logoutUser")) {
				logoutUser(request, response);
			} else if (command.equals("updateUser")) {
				updateUser(request, response);
			} else if (command.equals("byeUser")) {
				deleteUser(request, response);
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

		LocalDate now = LocalDate.now();
		int date = now.getDayOfMonth();

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int card = Integer.parseInt(request.getParameter("card"));
		int age = Integer.parseInt(request.getParameter("age"));
		String plan = request.getParameter("planType");

		if (email != null && email.length() != 0 && name != null) {
			UserDTO user = new UserDTO(email, pw, name, age, card, plan, date);
			try {
				boolean result2 = service.findUser2(email);
				
				if(result2) {
					boolean result = service.insertUser(user);
					if (result) {
						request.setAttribute("user", user);
						request.setAttribute("successMsg", "가입이 완료되었습니다.");
						url = "welcome.jsp";
					} else {
						request.setAttribute("errorMsg", "다시 시도하세요");
					}
				}else {
					request.setAttribute("errorMsg", "이미 있는 이메일입니다. 다시 확인해주세요");
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

	private void logoutUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("main.html");
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "myPage.jsp";
		
		try {
			boolean result = service.updateUser(request.getParameter("email"), request.getParameter("pw"),
					request.getParameter("newPw"));
			if (result) {
				request.setAttribute("user", service.findUser(request.getParameter("email")));
				HttpSession session = request.getSession();
				session.invalidate();
				response.sendRedirect("success.jsp");

			} else {
				request.setAttribute("errorMsg", "비밀번호 수정에 실패했습니다.");
				request.getRequestDispatcher(url).forward(request, response);
			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
			request.getRequestDispatcher(url).forward(request, response);
		}
	}
	
	private void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "myPage.jsp";
		
		try {
			boolean result = service.deleteUser(request.getParameter("email"), request.getParameter("pw"), request.getParameter("reason"));
			if (result) {
				HttpSession session = request.getSession();
				session.invalidate();
				response.sendRedirect("main.html");
			} else {
				request.setAttribute("errorMsg", "탈퇴에 실패했습니다.");
				request.getRequestDispatcher(url).forward(request, response);
			}
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			request.getRequestDispatcher(url).forward(request, response);
			s.printStackTrace();
		}
		
	}
}
