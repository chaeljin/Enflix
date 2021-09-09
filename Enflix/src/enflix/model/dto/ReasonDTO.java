package enflix.model.dto;

import enflix.model.entity.Reasons;
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
public class ReasonDTO {
	
	private String email;
	private String reason;

	public Reasons toEntity() {
		return Reasons.builder().email(email).reason(reason).build();
	}

	@Override
	public String toString() {
		return "Reasons [email=" + email + ", reason=" + reason + "]";
	}
}
