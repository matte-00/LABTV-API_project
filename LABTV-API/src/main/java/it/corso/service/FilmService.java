package it.corso.service;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import it.corso.model.Film;

public interface FilmService {
	
	List<Film> getFilmsByTitle(String titolo); // Permette di ottenere dal DB i film che hanno come titolo ciò che ha digitato l'utente
	
	Map<String, String> getInformativeMessages(String key, String value); // Permette di ottenere un/più messaggio/i informativo/i per l'utente
	
	String REGEX_ID_FILM = "\\d{1,}"; // Viene usata nel corpo del metodo checkIdFilm(String id) per controllare se l'id del film presente nell'URL è un numero intero
	
	boolean checkIdFilm(String id); // Permette di controllare se l'id del film presente nell'URL è un numero intero utilizzando REGEX_ID_FILM
	
	Optional<Film> getFilmById(Integer id); // Permette di ottenere il film che ha come id quello presente nell'URL

}
