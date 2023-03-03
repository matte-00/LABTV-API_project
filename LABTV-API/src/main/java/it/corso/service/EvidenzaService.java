package it.corso.service;

import java.util.List;
import java.util.Map;

import it.corso.model.Evidenza;

public interface EvidenzaService {
	
	List<Evidenza> getFilmsInEvidenza(); // Permette di ottenere dal DB i film in evidenza
	
	void formattingFilmsInEvidenza(List<Evidenza> filmsInEvidenza); // Permette di formattare la lista dei film in evidenza ottenuta dal DB
	
	Map<String, String> getInformativeMessages(Evidenza film, String key, String value); // Permette di ottenere un/più messaggio/i informativo/i per l'utente

}
