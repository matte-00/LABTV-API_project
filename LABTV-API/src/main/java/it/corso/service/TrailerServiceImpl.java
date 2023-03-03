package it.corso.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.TrailerDao;
import it.corso.model.Trailer;

/*
 * Indica all'IoC Container di Spring Boot che l'oggetto istanziato dalla classe TrailerServiceImpl deve essere
 * un componente Service
 */
@Service
public class TrailerServiceImpl implements TrailerService {
	
	@Autowired // Mette a disposizione il componente trailerDao già istanziato
	TrailerDao trailerDao;
	
	// Permette di ottenere dal DB il/i trailer del film che ha l'id come quello presente nell'URL
	@Override
	public List<Trailer> getTrailersByIdFilm(Integer idFilm) {
		
		return trailerDao.getTrailersByIdFilm(idFilm);
		
	}

	// Permette di ottenere un/più messaggio/i informativo/i per l'utente
	@Override
	public Map<String, String> getInformativeMessages(String key, String value) {
		
		Map<String, String> informativeMessages = new HashMap<String, String>();
		
		informativeMessages.put(key, value);
		
		return informativeMessages;
	
	}
	
	// Permette di controllare se l'id del film presente nell'URL è un numero intero utilizzando REGEX_ID_FILM
	@Override
	public boolean checkIdFilm(String idFilm) {
		
		if (Pattern.matches(REGEX_ID_FILM, idFilm)) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
	}
	
	// Fa sì che nel JSON ci sia solo l'id del film e non anche tutte le altre informazioni del film (image, title, ecc...)
	@Override
	public void setIdFilmToTrailers(List<Trailer> trailers) {
		
		for (Trailer trailer : trailers) {
			
			trailer.setIdFilm(trailer.getFilm().getId());
		
		}
		
	}

}
