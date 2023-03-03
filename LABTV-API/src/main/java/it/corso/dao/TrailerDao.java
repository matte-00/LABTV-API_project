package it.corso.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import it.corso.model.Trailer;

public interface TrailerDao extends CrudRepository<Trailer, Integer> {
	
	@Query
	(
			value = "SELECT * FROM trailer WHERE id_film = :idFilm",
			nativeQuery = true
	)
	List<Trailer> getTrailersByIdFilm(Integer idFilm); // Permette di ottenere dal DB il/i trailer del film che ha l'id come quello presente nell'URL

}
