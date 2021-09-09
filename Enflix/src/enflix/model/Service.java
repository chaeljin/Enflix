package enflix.model;

import java.sql.SQLException;

import enflix.exception.MessageException;
import enflix.exception.NotExistException;
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

	public UserDTO loginUser(String email, String pw) throws SQLException, NotExistException {
		UserDTO user = userDAO.loginUser(email, pw);

		if (user == null) {
			if(userDAO.findUser(email) != null) {
				throw new NotExistException("비밀번호가 틀렸습니다");
			}else {
				throw new NotExistException("이메일을 다시 한번 확인해주세요");
			}
		}
		return user;
	}

	public UserDTO findUser(String email) throws SQLException, NotExistException {
		UserDTO user = userDAO.findUser(email);
		if (user == null) {
			throw new NotExistException("일치하는 회원 정보가 없습니다.");
		}
		return user;
	}
	
	public boolean findUser2(String email) throws SQLException, NotExistException {
		boolean result = false;
		
		UserDTO user = userDAO.findUser(email);
		
		if (user == null) {
			result = true;
		}
		
		return result;
	}

	public boolean updateUser(String email, String pw, String nPw)
			throws SQLException, NotExistException, MessageException {
		boolean result = false;
		UserDTO user = userDAO.findUser(email);
		String oldPw = user.getPw();
		if (!pw.equals(oldPw)) {
			throw new NotExistException("비밀번호를 확인해주세요");
		} else if (nPw.equals(oldPw)) {
			throw new MessageException("같은 비밀번호로는 바꿀 수 없습니다.");
		} else {
			result = userDAO.updateUser(email, pw, nPw);
			if (!result) {
				throw new NotExistException("정보 수정에 실패했습니다.");
			}
		}
		return result;
	}

	public boolean deleteUser(String email, String pw, String reason)
			throws SQLException, NotExistException, MessageException {
		boolean result = false;
		UserDTO user = userDAO.findUser(email);
		String oldPw = user.getPw();
		
		if (!pw.equals(oldPw)) {
			throw new NotExistException("비밀번호를 확인해주세요");
		} else {
			result = userDAO.deleteUser(email, pw, reason);
			if (!result) {
				throw new MessageException("회원 탈퇴에 실패했습니다.");
			}
			return result;
		}
	}
}
