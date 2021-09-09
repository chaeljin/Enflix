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
public class Movie {
	@Id
	private String name;
	private String genre;
	private String director;
	private int age;
	private String planType;
	
	@Override
	public String toString() {
		return "Movie [name=" + name + ", genre=" + genre + ", director=" + director + ", age=" + age + ", planType="
				+ planType + "]";
	}
	
}
