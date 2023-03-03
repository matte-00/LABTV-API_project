package it.corso.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.corso.model.Film;

public interface FilmDao extends CrudRepository<Film, Integer> {
	
	@Query
	(
			value = "SELECT * FROM film WHERE title LIKE %:titolo%",
			nativeQuery = true
	)
	List<Film> getFilmsByTitle(@Param("titolo") String titolo); // Permette di ottenere dal DB i film che hanno come titolo ciò che ha digitato l'utente

}
