package enflix.model.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
@Entity
public class Users {
	@Id
	private String email;
	private String pw;
	private String name;
	private int age;
	@JoinColumn
	private int card;
	private String planType;
	private int paymentDate;

	@Override
	public String toString() {
		return "User [email=" + email + ", pw=" + pw + ", name=" + name + ", age=" + age + ", card=" + card
				+ ", planType=" + planType + "paymentDate=" + paymentDate+"]";
	}

}
