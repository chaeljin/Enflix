package enflix.model.dto;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.SequenceGenerator;

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
@SequenceGenerator(name = "res_seq", sequenceName = "res_seq_id", initialValue = 1, allocationSize = 1)
public class ReasonDTO {
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "res_seq")
	private String reason;

	public Reasons toEntity() {
		return Reasons.builder().reason(reason).build();
	}

	@Override
	public String toString() {
		return "Reason [reason=" + reason + "]";
	}
}
