package enflix.model;

import java.sql.SQLException;

import enflix.exception.MessageException;
import enflix.model.dto.UserDTO;

public class Service {
	private static Service instance = new Service();
	
	public static Service getInstance() {
		return instance;
	}
	
	private static UserDAO userDAO = UserDAO.getInstance();

	public boolean insertUser(UserDTO user) throws MessageException {
		boolean result = false;
		try {
			result = userDAO.insertUser(user);
		} catch (SQLException s) {
			throw new MessageException("이미 존재하는 ID입니다 다시 시도 하세요");
		}
		return result;
	}
}
