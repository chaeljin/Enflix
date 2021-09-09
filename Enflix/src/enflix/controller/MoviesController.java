package enflix.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import enflix.model.MovieDAO;
import enflix.model.dto.MovieDTO;
import enflix.model.dto.UserDTO;

@WebServlet("/movies")
public class MoviesController extends HttpServlet {
	public static MovieDAO movieDAO = MovieDAO.getInstance();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Movie(request, response);
		
	}

	public void Movie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError2.jsp";
		
		try {
			HttpSession session = request.getSession();
			String select = request.getParameter("movie");
			String selMovie = movieName(select);
			UserDTO user = (UserDTO) session.getAttribute("user");
			MovieDTO movie = movieDAO.getMovie(selMovie);
			
			if(user.getAge() < movie.getAge()) {
				request.setAttribute("errorMsg", movie.getAge()+"세 이상 이용 가능한 컨텐츠입니다.");
			}else {
				if(user.getPlanType().equals("Basic")) {
					if(movie.getRating().equals("Premium")) {
						request.setAttribute("errorMsg", movie.getRating()+"등급 이용 가능 컨텐츠입니다.");
					}else {
						session.setAttribute("mov", movie);
						request.setAttribute("movie", select);
						url = "movie.jsp";
					}
				}else {
					session.setAttribute("mov", movie);
					request.setAttribute("movie", select);
					url = "movie.jsp";
				}
			}
			
		}catch(Exception s){
			request.setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
		}
		
		
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	public String movieName(String name) {
		String movieName = "";
		
		if("모가디슈".equals(name)) {
			movieName = "모가디슈";
		}
		if("짱구".equals(name)) {
			movieName = ("짱구는 못말려");
		}
		if("D.P.".equals(name)) {
			movieName = ("D.P.");
		}
		if("해리포터".equals(name)) {
			movieName = "해리포터와 마법사의 돌";
		}
		if("eunjin1".equals(name)) {
			movieName = "대탈출";
		}
		if("eunjin2".equals(name)) {
			movieName = "바다";
		}
		if("eunjin3".equals(name)) {
			movieName = "회오리";
		}
		if("eunjin4".equals(name)) {
			movieName = "만지작";
		}
		if("haerim1".equals(name)) {
			movieName = "길고양이 놀아주기";
		}
		if("haerim2".equals(name)) {
			movieName = "고양이 꾹꾹이";
		}
		if("haerim3".equals(name)) {
			movieName = "육회";
		}
		if("haerim4".equals(name)) {
			movieName = "갈매기";
		}
		
		return movieName;
	}
}
