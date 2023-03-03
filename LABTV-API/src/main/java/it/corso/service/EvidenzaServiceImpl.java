package it.corso.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.EvidenzaDao;
import it.corso.model.Evidenza;
import it.corso.utility.StringControls;

/*
 * Indica all'IoC Container di Spring Boot che l'oggetto istanziato dalla classe EvidenzaServiceImpl deve essere
 * un componente Service
 */
@Service
public class EvidenzaServiceImpl implements EvidenzaService {
	
	@Autowired // Mette a disposizione il componente evidenzaDao già istanziato
	EvidenzaDao evidenzaDao;

	// Permette di ottenere dal DB i film in evidenza
	@Override
	public List<Evidenza> getFilmsInEvidenza() {
		
		return (List<Evidenza>) evidenzaDao.findAll();
		
	}
	
	// Permette di formattare la lista dei film in evidenza ottenuta dal DB
	@Override
	public void formattingFilmsInEvidenza(List<Evidenza> filmsInEvidenza) {
		
		for (Evidenza film : filmsInEvidenza) {
			
			if (film.getRank() == null) {
				
				getInformativeMessages(film, "rank", "Non è presente una posizione in classifica per questo film");
			
			} else {
				
				film.setRankConverted(film.getRank().intValue());
				
			}
			
			
			
			if (film.getRankUpDown() == null) {
				
				getInformativeMessages(film, "rankUpDown", "Non è presente un numero che indica i posti scalati oppure persi in classifica da questo film");
			
			} else if (film.getRankUpDown() == 0) {
				
				getInformativeMessages(film, "rankUpDown", "Non ha subito variazione di posizione in classifica");
			
			} else {
				
				film.setRankUpDownConverted(film.getRankUpDown().intValue());
				
			}
			
			
			
			if (film.getTitle() == null) {
				
				getInformativeMessages(film, "title", "Non è presente un titolo per questo film");
				
			}
			
			
			
			if (film.getFullTitle() == null) {
				
				getInformativeMessages(film, "fullTitle", "Non è presente un titolo completo per questo film");
				
			}
			
			
			
			if (film.getYear() == null) {
				
				getInformativeMessages(film, "year", "Non è presente una data di uscita per questo film");
				
			} else {
				
				film.setYearConverted(film.getYear().intValue());
				
			}
			
			
			
			if (film.getImage() == null) {
				
				getInformativeMessages(film, "image", "Non è presente un'immagine di copertina per questo film");
			
			}
			
			
			
			if (film.getCrew() == null) {
				
				getInformativeMessages(film, "crew", "Non è presente un cast per questo film");
				
			}
			
			
			
			if (film.getImDbRating() == null || film.getImDbRating().equals("")) {
				
				getInformativeMessages(film, "imDbRating", "Non è presente una valutazione per questo film");
				
			} else {
				
				film.setImDbRating(film.getImDbRating().replace(".", ","));
				
			}
			
			
			
			if (film.getImDbRatingCount() == null || StringControls.stringContainsOnlyZeros(film.getImDbRatingCount()) == true) {
				
				if (film.getImDbRatingCount() != null) {
					
					if (StringControls.stringContainsOnlyZeros(film.getImDbRatingCount()) == true) {
						
						film.setImDbRatingCount(null);
						
					}
					
				}
				
				getInformativeMessages(film, "imDbRatingCount", "Non è presente un conteggio delle valutazioni per questo film");
				
			}
		
		}
		
	}
	
	// Permette di ottenere un/più messaggio/i informativo/i per l'utente
	@Override
	public Map<String, String> getInformativeMessages(Evidenza film, String key, String value) {
		
		Map<String, String> informativeMessages = film.getInformativeMessages();
		
		if (informativeMessages == null) {
			
			informativeMessages = new HashMap<String, String>();
			
			film.setInformativeMessages(informativeMessages);
			
		}
		
		informativeMessages.put(key, value);
		
		return informativeMessages;
	
	}

}
