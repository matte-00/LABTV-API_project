package it.corso.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

/*
 * Con @Entity si trasforma la classe di modellazione Genre in Entity
 * @Table è stato utilizzato per indicare con l'attributo name il nome della tabella del DB che è messa in relazione
 * con la classe di modellazione Genre
 */
@Entity
@Table(name = "genre")
public class Genre implements Serializable {
	
	/*
	 * Con @Id si è indicato che l'attributo corrisponde al campo chiave primaria della tabella del DB
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) definisce la strategia di gestione della chiave primaria
	 * Utilizzando GenerationType.IDENTITY la si adegua alla modalità utilizzata per la tabella genre
	 * Con @Column si è permesso di far relazionare l'attributo con la corrispondente colonna della tabella del DB
	 * @JsonIgnore permette di non far visualizzare l'attributo sul JSON
	 */
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(length = 45, nullable = false)
	private String name;
	
	@OneToMany (
			mappedBy = "genre",
			cascade = CascadeType.ALL, // Se si inserisce/aggiorna/cancella un genere si inseriscono/aggiornano/cancellano anche i film di quel genere
			orphanRemoval = true, // E' utilizzato per fare in modo che, l'eliminazione di un genere, comporti l'eliminazione automatica di tutti gli oggetti film che ne fanno parte (rimasti appunto orfani)
			fetch = FetchType.EAGER
	)
	@JsonIgnore
	private List<Film> films = new ArrayList<>();
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public List<Film> getFilms() {
		return films;
	}

	public void setFilms(List<Film> films) {
		this.films = films;
	}
	
}
