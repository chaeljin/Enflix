package enflix.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import enflix.model.entity.Users;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class UserDTO {
	private String email;
	private String pw;
	private String name;
	private int age;
	private int card;
	private String planType;
	
	public Users toEntity() {
		return Users.builder().email(email).pw(pw).name(name).age(age).card(card).planType(planType).build();
	}

	@Override
	public String toString() {
		return "UserDTO [email=" + email + ", pw=" + pw + ", name=" + name + ", age=" + age + ", card=" + card
				+ ", planType=" + planType + "]";
	}

}
