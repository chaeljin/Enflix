package enflix.model.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

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
public class Payment {
	@Id
	private int card;
	private String payment_date;
	private String rating;
	
	@Override
	public String toString() {
		return "Payment [card=" + card + ", payment_date=" + payment_date + ", rating=" + rating + "]";
	}
	
}
