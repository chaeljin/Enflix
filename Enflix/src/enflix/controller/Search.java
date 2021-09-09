package enflix.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import enflix.model.MovieDAO;
import enflix.model.dto.MovieDTO;

@WebServlet("/searchPage")
public class Search extends HttpServlet {
	public static MovieDAO movieDAO = MovieDAO.getInstance();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search = request.getParameter("search");
		ArrayList<String> names = new ArrayList<>();
		List<String> dimovie = new ArrayList<>();
		
//		request.setAttribute("movie", search);
//		request.getRequestDispatcher("movie.jsp").forward(request, response);
		
		if("모가디슈".contains(search)) {
			names.add("모가디슈");
		}
		if("짱구는 못말려 극장판 : 격돌! 낙서왕국과 얼추 네 명의 용사들".contains(search)) {
			names.add("짱구는 못말려");
		}
		if("D.P.".contains(search) || search.equals("dp") || search.equals("DP")) {
			names.add("D.P.");
		}
		if("해리포터와 마법사의 돌".contains(search)) {
			names.add("해리포터와 마법사의 돌");
		}
		if("대탈출".contains(search)) {
			names.add("대탈출");
		}
		if("바다".contains(search)) {
			names.add("바다");
		}
		if("회오리".contains(search)) {
			names.add("회오리");
		}
		if("만지작".contains(search)) {
			names.add("만지작");
		}
		if("길고양이 놀아주기".contains(search)) {
			names.add("길고양이 놀아주기");
		}
		if("고양이 꾹꾹이".contains(search)) {
			names.add("고양이 꾹꾹이");
		}
		if("육회".contains(search)) {
			names.add("육회");
		}
		if("갈매기".contains(search)) {
			names.add("갈매기");
		}
		
		ArrayList<MovieDTO> movies = new ArrayList<>();
		
		try {
			int index = 0;
			while(names.size() > index) {
				MovieDTO movie = movieDAO.getMovie(names.get(index));
				movies.add(movie);
				index++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		int index = 0;
		
		while(movies.size() > index) {
			if(movies.get(index).getName().equals("모가디슈")) {
				dimovie.add("모가디슈");
			}else if(movies.get(index).getName().equals("D.P.")) {
				dimovie.add("D.P.");
			}else if(movies.get(index).getName().equals("짱구는 못말려")) {
				dimovie.add("짱구");
			}else if(movies.get(index).getName().equals("해리포터와 마법사의 돌")) {
				dimovie.add("해리포터");
			}else if(movies.get(index).getName().equals("대탈출")) {
				dimovie.add("eunjin1");
			}else if(movies.get(index).getName().equals("바다")) {
				dimovie.add("eunjin2");
			}else if(movies.get(index).getName().equals("회오리")) {
				dimovie.add("eunjin3");
			}else if(movies.get(index).getName().equals("만지작")) {
				dimovie.add("eunjin4");
			}else if(movies.get(index).getName().equals("길고양이 놀아주기")) {
				dimovie.add("haerim1");
			}else if(movies.get(index).getName().equals("고양이 꾹꾹이")) {
				dimovie.add("haerim2");
			}else if(movies.get(index).getName().equals("육회")) {
				dimovie.add("haerim3");
			}else if(movies.get(index).getName().equals("갈매기")) {
				dimovie.add("haerim4");
			}
			index++;
		}

		request.setAttribute("movie", dimovie);
		request.getRequestDispatcher("SeachPage.jsp").forward(request, response);
	}

}
