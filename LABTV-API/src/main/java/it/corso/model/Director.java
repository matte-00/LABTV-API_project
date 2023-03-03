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
 * Con @Entity si trasforma la classe di modellazione Director in Entity
 * @Table è stato utilizzato per indicare con l'attributo name il nome della tabella del DB che è messa in relazione
 * con la classe di modellazione Director
 */
@Entity
@Table(name = "director")
public class Director implements Serializable {
	
	/*
	 * Con @Id si è indicato che l'attributo corrisponde al campo chiave primaria della tabella del DB
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) definisce la strategia di gestione della chiave primaria
	 * Utilizzando GenerationType.IDENTITY la si adegua alla modalità utilizzata per la tabella director
	 * Con @Column si è permesso di far relazionare l'attributo con la corrispondente colonna della tabella del DB
	 * @JsonIgnore permette di non far visualizzare l'attributo sul JSON
	 */
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(length = 45, nullable = false)
	private String surname;
	
	@Column(length = 45, nullable = false)
	private String name;
	
	@Column(nullable = false)
	private String biography;
	
	@OneToMany (
			mappedBy = "director",
			cascade = CascadeType.ALL, // Se si inserisce/aggiorna/cancella un regista si inseriscono/aggiornano/cancellano anche i film di quel regista
			orphanRemoval = true, // E' utilizzato per fare in modo che, l'eliminazione di un regista, comporti l'eliminazione automatica di tutti gli oggetti film di quel regista (rimasti appunto orfani)
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
	
	public String getSurname() {
		return surname;
	}
	
	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getBiography() {
		return biography;
	}
	
	public void setBiography(String biography) {
		this.biography = biography;
	}
	
	public List<Film> getFilms() {
		return films;
	}

	public void setFilms(List<Film> films) {
		this.films = films;
	}
	
}
