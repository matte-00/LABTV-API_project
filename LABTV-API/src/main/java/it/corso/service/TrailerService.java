package it.corso.service;

import java.util.List;
import java.util.Map;

import it.corso.model.Trailer;

public interface TrailerService {
	
	List<Trailer> getTrailersByIdFilm(Integer idFilm); // Permette di ottenere dal DB il/i trailer del film che ha l'id come quello presente nell'URL
	
	Map<String, String> getInformativeMessages(String key, String value); // Permette di ottenere un/più messaggio/i informativo/i per l'utente
	
	String REGEX_ID_FILM = "\\d{1,}"; // Viene usata nel corpo del metodo checkIdFilm(String idFilm) per controllare se l'id del film presente nell'URL è un numero intero
	
	boolean checkIdFilm(String idFilm); // Permette di controllare se l'id del film presente nell'URL è un numero intero utilizzando REGEX_ID_FILM
	
	void setIdFilmToTrailers(List<Trailer> trailers); // Fa sì che nel JSON ci sia solo l'id del film e non anche tutte le altre informazioni del film (image, title, ecc...)

}
