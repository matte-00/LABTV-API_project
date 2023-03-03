package it.corso.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.corso.model.Trailer;
import it.corso.service.TrailerService;

/*
 * Con @RestController si indica all'IoC Container di Spring Boot che l'oggetto istanziato dalla classe TrailerController
 * deve essere un componente Rest Controller
 * @RequestMapping indica l'URL a cui la Dispatcher Servlet invierà la richiesta che sarà gestita dal
 * componente TrailerController
 * L'URL utilizzato dalla Dispatcher Servlet è http://localhost:8080/labtv-api/api/trailers
 */
@RestController
@RequestMapping("labtv-api/api/trailers")
public class TrailerController {
	
	@Autowired // Mette a disposizione il componente trailerService già istanziato
	private TrailerService trailerService;
	
	/*
	 * Indica l'URL dell'API che verrà consumata dal client per ottenere il/i trailer del film
	 * che ha come id quello presente nell'URL
	 * L'URL dell'API è http://localhost:8080/labtv-api/api/trailers/<idFilm>
	 * Indica anche il metodo del protocollo HTTP utilizzato quando si consuma l'API e che in output quest'ultima
	 * restituirà le informazioni richieste in formato JSON
	 * Si è resa non obbligatoria la presenza dell'id del film per far sì che quest'ultimo non sia presente
	 * In questo modo anche se non è presente l'applicazione non va in errore
	 */
	@GetMapping(value = {"", "{idFilm}"}, produces = "application/json")
	public ResponseEntity<?> getTrailersByIdFilm(@PathVariable(name = "idFilm", required = false) String idFilm) {
		
		/*
		 * Se l'id del film non c'è verrà informato il client che non è presente, altrimenti si controlla se l'id del
		 * film è un numero intero
		 */
		if (idFilm == null) {
			
			return new ResponseEntity<Map<String, String>>(trailerService.getInformativeMessages("informativeMessage", "Non è presente l'idFilm"), HttpStatus.BAD_REQUEST);
		
		} else {
			
			/*
			 * Se l'id del film non è un numero intero viene informato il client di questo, altrimenti si
			 * recupera/recuperano dal DB il/i trailer del film che ha l'id come quello presente nell'URL
			 */
			if (!trailerService.checkIdFilm(idFilm)) {
				
				return new ResponseEntity<Map<String, String>>(trailerService.getInformativeMessages("informativeMessage", "L'idFilm deve essere un numero intero"), HttpStatus.BAD_REQUEST);
			
			} else {
				
				try {
					
					/*
					 * Permette di ottenere dal DB il/i trailer del film che ha l'id come quello presente nell'URL
					 * E' presente un try catch dato che il metodo Integer.parseInt() può lanciare l'eccezione
					 * NumberFormatException se l'id del film  passato come parametro supera l'intervallo del tipo di
					 * dati intero
					 */
					List<Trailer> trailers = trailerService.getTrailersByIdFilm(Integer.parseInt(idFilm));
					
					/*
					 * Se è/sono presente/i il/i trailer per il film che ha l'id come quello presente nell'URL
					 * verrà/verrranno restiuito/i all'utente il/i trailer, altrimenti verrà informato che non è/sono
					 * presente/i il/i trailer
					 */
					if (trailers.isEmpty()) {
						
						return new ResponseEntity<Map<String, String>>(trailerService.getInformativeMessages("informativeMessage", "Non ci sono trailer per quel film"), HttpStatus.NOT_FOUND);
					
					} else {
						
						/*
						 * Si utilizza questo metodo per far sì che nel JSON ci sia solamente l'id del film
						 * Se non lo si utilizzasse nel JSON ci sarebbe non solo l'id del film ma anche tutte le
						 * informazioni del film (image, title, ecc...)
						 */
						trailerService.setIdFilmToTrailers(trailers);
						
						return new ResponseEntity<List<Trailer>>(trailers, HttpStatus.OK);
					
					}
				
				} catch (NumberFormatException numberFormatException) {
					
					return new ResponseEntity<Map<String, String>>(trailerService.getInformativeMessages("informativeMessage", "L'idFilm è un numero intero molto grande"), HttpStatus.BAD_REQUEST);
				
				}
			
			}
		
		}
	
	}

}
