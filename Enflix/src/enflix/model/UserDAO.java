package enflix.model;

import java.sql.SQLException;

import javax.persistence.EntityManager;

import enflix.model.dto.ReasonDTO;
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

	public UserDTO findUser(String email) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		em.getTransaction().begin();
		UserDTO user = null;
		try {
			Users u = em.find(Users.class, email);

			user = new UserDTO(u.getEmail(), u.getPw(), u.getName(), u.getAge(), u.getCard(), u.getPlanType(),
					u.getPaymentDate());

		} catch (Exception e) {
			em.getTransaction().rollback();

		} finally {
			em.close();
		}
		return user;
	}

	/*
	 * id와 비밀번호로 회원 찾기
	 */
	public UserDTO loginUser(String email, String pw) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		em.getTransaction().begin();
		UserDTO user = null;
		try {
			System.out.println(pw);
			Users u = em.find(Users.class, email);

			if (pw.equals(u.getPw())) {
				System.out.println(u.getEmail());
				user = new UserDTO(u.getEmail(), u.getPw(), u.getName(), u.getAge(), u.getCard(), u.getPlanType(),
						u.getPaymentDate());
			}

		} catch (Exception e) {
			em.getTransaction().rollback();

		} finally {
			em.close();
		}
		return user;
	}

	public boolean deleteUser(String email, String pw, String reason) throws SQLException {
		EntityManager em = DBUtil.getEntityManager();
		em.getTransaction().begin();
		
		ReasonDTO reas = new ReasonDTO(reason);
		boolean result = false;

		try {
			em.persist(reas.toEntity());
			em.remove(em.find(Users.class, email));
			
			em.getTransaction().commit();
			
			result = true;
			
		} finally {
			em.close();
		}

		return result;
	}
	

	public boolean updateUser(String email, String pw, String newPw) {
		EntityManager em = DBUtil.getEntityManager();
		em.getTransaction().begin();
		boolean result = false;
		try {
			em.find(Users.class, email).setPw(newPw);
			em.getTransaction().commit();

			result = true;
		} catch (Exception e) {
			em.getTransaction().rollback();
		} finally {
			em.close();
		}
		return result;
	}
}
