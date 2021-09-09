package enflix.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import enflix.model.dto.MovieDTO;
import enflix.model.entity.Movie;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class MovieDTO {
	private String name;
	private String genre;
	private String director;
	private int age;
	private String rating;
	
	public Movie toEntity() {
		return Movie.builder().name(name).genre(genre).director(director).age(age).planType(rating).build();
	}

	@Override
	public String toString() {
		return "MovieDTO [name=" + name + ", genre=" + genre + ", director=" + director + ", age=" + age + ", rating="
				+ rating + "]";
	}
}
