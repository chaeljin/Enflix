package enflix.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;

import enflix.model.dto.MovieDTO;
import enflix.model.entity.Movie;
import model.util.DBUtil;

public class MovieDAO {

	private static MovieDAO instance = new MovieDAO();

	private MovieDAO() {
	}

	public static MovieDAO getInstance() {
		return instance;
	}

	// 저장
	public boolean addMovie(MovieDTO movie) throws SQLException {
		EntityManager manager = DBUtil.getEntityManager();
		manager.getTransaction().begin();
		boolean result = false;
		try {
			manager.persist(movie);
			manager.getTransaction().commit();

			result = true;

		} catch (Exception e) {
			manager.getTransaction().rollback();
		} finally {
			manager.close();
		}
		return result;
	}

	// 수정
	// 영화 이름으로 연령제한 수정하기
	public boolean updateMovie(String name, int age) throws SQLException {
		EntityManager manager = DBUtil.getEntityManager();
		manager.getTransaction().begin();
		boolean result = false;
		try {
			manager.find(Movie.class, name).setAge(age);

			manager.getTransaction().commit();

			result = true;
		} catch (Exception e) {
			manager.getTransaction().rollback();
		} finally {
			manager.close();
		}
		return result;
	}

	// 삭제
	public boolean deleteMovie(String name) throws SQLException {
		EntityManager manager = DBUtil.getEntityManager();
		manager.getTransaction().begin();
		boolean result = false;

		try {
			manager.remove(manager.find(Movie.class, name));

			manager.getTransaction().commit();

			result = true;
		} catch (Exception e) {
			manager.getTransaction().rollback();
		} finally {
			manager.close();
		}
		return result;
	}

	// 영화 이름으로 해당 영화 모든 정보 검색
	public MovieDTO getMovie(String name) throws SQLException {
		EntityManager manager = DBUtil.getEntityManager();
		manager.getTransaction().begin();
		MovieDTO name1 = null;

		try {
			Movie m = manager.find(Movie.class, name);
			name1 = new MovieDTO(m.getName(), m.getGenre(), m.getDirector(), m.getAge(), m.getPlanType());
		} catch (Exception e) {
			manager.getTransaction().rollback();
		} finally {
			manager.close();
		}
		return name1;
	}

	// 모든 영화 검색
	public ArrayList<MovieDTO> getAllMovie() throws SQLException {
		EntityManager manager = DBUtil.getEntityManager();
		ArrayList<MovieDTO> alist = null;
		List list = null;
		try {
			list = manager.createNativeQuery("SELECT * FROM MOVIE").getResultList();
			Iterator it = list.iterator();
			while(it.hasNext()) {
				Object[] obj = (Object[]) it.next();
				alist.add(new MovieDTO(String.valueOf(obj[0]), String.valueOf(obj[1]), String.valueOf(obj[2]), Integer.valueOf((String) obj[3]), String.valueOf(obj[4])));
			}
		} catch (Exception e) {
			manager.getTransaction().rollback();
		} finally {
			manager.close();
		}
		return alist;
	}
}
