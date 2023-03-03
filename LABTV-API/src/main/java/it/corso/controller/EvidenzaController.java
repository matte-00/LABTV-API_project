package it.corso.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.corso.model.Evidenza;
import it.corso.service.EvidenzaService;

/*
 * Con @RestController si indica all'IoC Container di Spring Boot che l'oggetto istanziato dalla classe EvidenzaController
 * deve essere un componente Rest Controller
 * @RequestMapping indica l'URL a cui la Dispatcher Servlet invierà la richiesta che sarà gestita dal
 * componente EvidenzaController
 * In questo caso indica anche l'URL dell'API che verrà consumata dal client per ottenere i film in evidenza
 * L'URL dell'API è http://localhost:8080/labtv-api/api/evidenze
 */
@RestController
@RequestMapping("labtv-api/api/evidenze")
public class EvidenzaController {
	
	@Autowired // Mette a disposizione il componente evidenzaService già istanziato
	private EvidenzaService evidenzaService;
	
	/*
	 * Indica il metodo del protocollo HTTP utilizzato quando si consuma l'API e che in output quest'ultima
	 * restituirà le informazioni richieste in formato JSON
	 */
	@GetMapping(produces = "application/json")
	public ResponseEntity<?> getFilmsInEvidenza() {
		
		List<Evidenza> filmsInEvidenza = evidenzaService.getFilmsInEvidenza(); // Permette di ottenere dal DB i film in evidenza
		
		/*
		 * Se la lista dei film in evidenza non è vuota verrà restiuita all'utente formattata, altrimenti verrà
		 * informato che non sono presenti film in evidenza
		 */
		if (filmsInEvidenza.isEmpty()) {
			
			return new ResponseEntity<Map<String, String>>(evidenzaService.getInformativeMessages(new Evidenza(), "informativeMessage", "Non ci sono film in evidenza"), HttpStatus.NOT_FOUND);
		
		} else {
			
			evidenzaService.formattingFilmsInEvidenza(filmsInEvidenza);
			
			return new ResponseEntity<List<Evidenza>>(filmsInEvidenza, HttpStatus.OK);
			
		}
	
	}

}
