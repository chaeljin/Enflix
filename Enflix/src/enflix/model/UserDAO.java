package enflix.model;

import java.sql.SQLException;

import javax.persistence.EntityManager;

import enflix.model.dto.UserDTO;
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
}
