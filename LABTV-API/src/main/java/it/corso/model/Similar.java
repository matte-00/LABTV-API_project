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
 * Con @Entity si trasforma la classe di modellazione Similar in Entity
 * @Table è stato utilizzato per indicare con l'attributo name il nome della tabella del DB che è messa in relazione
 * con la classe di modellazione Similar
 */
@Entity
@Table(name = "similar")
public class Similar implements Serializable {
	
	/*
	 * Con @Id si è indicato che l'attributo corrisponde al campo chiave primaria della tabella del DB
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) definisce la strategia di gestione della chiave primaria
	 * Utilizzando GenerationType.IDENTITY la si adegua alla modalità utilizzata per la tabella similar
	 * Con @Column si è permesso di far relazionare l'attributo con la corrispondente colonna della tabella del DB
	 * @JsonIgnore permette di non far visualizzare l'attributo sul JSON
	 */
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(length = 250, nullable = false)
	private String image;
	
	@Column(length = 45, nullable = false)
	private String title;
	
	@Column(nullable = false)
	private String plot;
	
	@OneToMany (
			mappedBy = "similar",
			cascade = CascadeType.REFRESH, // Se si inserisce/aggiorna/cancella un film alla lista dei film simili non si inserisce/aggiorna/cancella anche un film simile a quello presente in questa lista
			orphanRemoval = false, // E' utilizzato per fare in modo che, l'eliminazione di un film presente nella lista dei film simili, comporti l'eliminazione automatica di tutti gli oggetti film simili a quelli presente in questa lista (rimasti appunto orfani)
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
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getPlot() {
		return plot;
	}
	
	public void setPlot(String plot) {
		this.plot = plot;
	}
	
	public List<Film> getFilms() {
		return films;
	}

	public void setFilms(List<Film> films) {
		this.films = films;
	}
	
}

