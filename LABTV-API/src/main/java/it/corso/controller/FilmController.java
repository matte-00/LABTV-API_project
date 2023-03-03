package it.corso.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import it.corso.model.Film;
import it.corso.service.FilmService;

/*
 * Con @RestController si indica all'IoC Container di Spring Boot che l'oggetto istanziato dalla classe FilmController
 * deve essere un componente Rest Controller
 * @RequestMapping indica l'URL a cui la Dispatcher Servlet invierà la richiesta che sarà gestita dal
 * componente FilmController
 * L'URL utilizzato dalla Dispatcher Servlet è http://localhost:8080/labtv-api/api/films
 */
@RestController
@RequestMapping("labtv-api/api/films")
public class FilmController {
	
	@Autowired // Mette a disposizione il componente filmService già istanziato
	private FilmService filmService;
	
	/*
	 * Indica l'URL dell'API che verrà consumata dal client per ottenere i film che hanno come titolo
	 * ciò che ha digitato l'utente
	 * L'URL dell'API è http://localhost:8080/labtv-api/api/films/titoli/<testo-digitato>
	 * Indica anche il metodo del protocollo HTTP utilizzato quando si consuma l'API e che in output quest'ultima
	 * restituirà le informazioni richieste in formato JSON
	 * Si è resa non obbligatoria la presenza del titolo del film per far sì che quest'ultimo non sia presente
	 * In questo modo anche se l'utente non digita il titolo l'applicazione non va in errore
	 */
	@GetMapping(value = {"titoli", "titoli/{testo-digitato}"}, produces = "application/json")
	public ResponseEntity<?> getFilmsByTitle(@PathVariable(name = "testo-digitato", required = false) String titolo) {
		
		/*
		 * Se il titolo non è stato digitato dall'utente verrà informato che lo deve digitare, altrimenti viene
		 * controllato se nel titolo è presente la barra rovesciata e se c'è verrà informato che deve sosituirla con
		 * la barra obliqua
		 */
		if (titolo == null) {
			
			return new ResponseEntity<Map<String, String>>(filmService.getInformativeMessages("informativeMessage", "Digitare il titolo del film"), HttpStatus.BAD_REQUEST);
		
		} else {
			
			if (titolo.indexOf('\\') != -1) {
				
				return new ResponseEntity<Map<String, String>>(filmService.getInformativeMessages("informativeMessage", "Sostituire nella/e parola/e digitata/e la barra rovesciata con la barra obliqua"), HttpStatus.BAD_REQUEST);
				
			}
			
			
			
			List<Film> films = filmService.getFilmsByTitle(titolo.toLowerCase()); // Permette di ottenere dal DB i film che hanno come titolo ciò che ha digitato l'utente
			
			/*
			 * Se la lista dei film che hanno come titolo ciò che ha digitato l'utente non è vuota verrà restiuita,
			 * altrimenti verrà informato l'utente che non sono presenti film con il titolo digitato
			 */
			if (films.isEmpty()) {
				
				return new ResponseEntity<Map<String, String>>(filmService.getInformativeMessages("informativeMessage", "Non ci sono film che hanno come titolo la parola digitata o le parole digitate"), HttpStatus.NOT_FOUND);
			
			} else {
				
				return new ResponseEntity<List<Film>>(films, HttpStatus.OK);
				
			}
		
		}
	
	}
	
	
	/*
	 * Indica l'URL dell'API che verrà consumata dal client per ottenere il film che ha come id quello
	 * presente nell'URL
	 * L'URL dell'API è http://localhost:8080/labtv-api/api/films/<id>
	 * Indica anche il metodo del protocollo HTTP utilizzato quando si consuma l'API e che in output quest'ultima
	 * restituirà le informazioni richieste in formato JSON
	 * Si è resa non obbligatoria la presenza dell'id del film per far sì che quest'ultimo non sia presente
	 * In questo modo anche se non è presente l'applicazione non va in errore
	 */
	@GetMapping(value = {"", "{id}"}, produces = "application/json")
	public ResponseEntity<?> getFilmById(@PathVariable(name = "id", required = false) String id) {
		
		/*
		 * Se l'id del film non c'è verrà informato il client che non è presente, altrimenti si controlla se
		 * quest'ultimo è un numero intero
		 */
		if (id == null) {
			
			return new ResponseEntity<Map<String, String>>(filmService.getInformativeMessages("informativeMessage", "Non è presente l'id"), HttpStatus.BAD_REQUEST);
		
		} else {
			
			/*
			 * Se l'id del film non è un numero intero viene informato il client di questo, altrimenti si recupera
			 * dal DB il film che ha come id quello presente nell'URL
			 */
			if (!filmService.checkIdFilm(id)) {
				
				return new ResponseEntity<Map<String, String>>(filmService.getInformativeMessages("informativeMessage", "L'id deve essere un numero intero"), HttpStatus.BAD_REQUEST);
			
			} else {
				
				try {
					
					/*
					 * Permette di ottenere il film che ha come id quello presente nell'URL
					 * E' presente un try catch dato che il metodo Integer.parseInt() può lanciare l'eccezione
					 * NumberFormatException se l'id del film passato come parametro supera l'intervallo del tipo di
					 * dati intero
					 */
					Optional<Film> film = filmService.getFilmById(Integer.parseInt(id));
					
					/*
					 * Se è presente un film che ha come id quello presente nell'URL verrà restiuito all'utente il film,
					 * altrimenti verrà informato che non è presente un film con quell'id
					 */
					if (film.isPresent()) {
						
						return new ResponseEntity<Film>(film.get(), HttpStatus.OK);
					
					} else {
						
						return new ResponseEntity<Map<String, String>>(filmService.getInformativeMessages("informativeMessage", "Non è presente un film con quell'id"), HttpStatus.NOT_FOUND);
					
					}
				
				} catch (NumberFormatException numberFormatException) {
					
					return new ResponseEntity<Map<String, String>>(filmService.getInformativeMessages("informativeMessage", "L'id è un numero intero molto grande"), HttpStatus.BAD_REQUEST);
				
				}
			
			}
		
		}
	
	}

}
