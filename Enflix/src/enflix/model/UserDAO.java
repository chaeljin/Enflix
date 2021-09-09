package enflix.model;

import java.sql.SQLException;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import enflix.exception.MessageException;
import enflix.model.dto.UserDTO;
import enflix.model.entity.Users;
import model.util.DBUtil;

public class UserDAO {
	private static UserDAO instance = new UserDAO();

	private UserDAO() {
	}

	public static UserDAO getInstance() {
		return instance;
	}

	public boolean insertUser(UserDTO user) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		em.getTransaction().begin();
		boolean result = false;

		try {
			em.persist(user.toEntity());
			em.getTransaction().commit();
			result = true;

		} catch (Exception e) {
			em.getTransaction().rollback();
		} finally {
			em.close();
			em = null;
		}
		return result;
	}
	
	/*
	 * id와 비밀번호로 회원 찾기
	 */
	public UserDTO findUser(String email, String pw) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		em.getTransaction().begin();
		UserDTO user = null;
		try {
			System.out.println(pw);
			Users u = em.find(Users.class, email);
	
			if (pw.equals(u.getPw())) {
				System.out.println(u.getEmail());
				user = new UserDTO(u.getEmail(), u.getPw(), u.getName(), u.getAge(), u.getCard(), u.getPlanType());
			}
			
		} catch (Exception e) {
			em.getTransaction().rollback();
			
		} finally {
			em.close();
		}
		return user;
	}
	
//	public boolean UserDTO updateUser(String pw, String newPw) {
//		EntityManager em = DBUtil.getEntityManager();
//		em.getTransaction().begin();
//		boolean result = false;
//		try {
//			em.find(Activist.class, primaryKey)
//		}
//		return result;
//	}
}
