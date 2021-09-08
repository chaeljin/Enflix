package enflix.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import enflix.model.dto.PaymentDTO;
import enflix.model.entity.Payment;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class PaymentDTO {
	private int card;
	private String payment_date;
	private String rating;
	
	public Payment toEntity() {
		return Payment.builder().card(card).payment_date(payment_date).rating(rating).build();
	}

	@Override
	public String toString() {
		return "PaymentDTO [card=" + card + ", payment_date=" + payment_date + ", rating=" + rating + "]";
	}
}
