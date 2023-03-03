package it.corso.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.FilmDao;
import it.corso.model.Film;

/*
 * Indica all'IoC Container di Spring Boot che l'oggetto istanziato dalla classe FilmServiceImpl deve essere
 * un componente Service
 */
@Service
public class FilmServiceImpl implements FilmService {
	
	@Autowired // Mette a disposizione il componente filmDao già istanziato
	FilmDao filmDao;
	
	// Permette di ottenere dal DB i film che hanno come titolo ciò che ha digitato l'utente
	@Override
	public List<Film> getFilmsByTitle(String titolo) {
		
		return (List<Film>) filmDao.getFilmsByTitle(titolo);
		
	}

	// Permette di ottenere un/più messaggio/i informativo/i per l'utente
	@Override
	public Map<String, String> getInformativeMessages(String key, String value) {
		
		Map<String, String> informativeMessages = new HashMap<String, String>();
		
		informativeMessages.put(key, value);
		
		return informativeMessages;
	
	}
	
	// Permette di ottenere il film che ha come id quello presente nell'URL
	@Override
	public Optional<Film> getFilmById(Integer id) {
		
		return filmDao.findById(id);
	
	}
	
	// Permette di controllare se l'id del film presente nell'URL è un numero intero utilizzando REGEX_ID_FILM
	@Override
	public boolean checkIdFilm(String id) {
		
		if (Pattern.matches(REGEX_ID_FILM, id)) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
	}

}
