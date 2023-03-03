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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

/*
 * Con @Entity si trasforma la classe di modellazione Film in Entity
 * @Table è stato utilizzato per indicare con l'attributo name il nome della tabella del DB che è messa in relazione
 * con la classe di modellazione Film
 */
@Entity
@Table(name = "film")
public class Film implements Serializable {
	
	/*
	 * Con @Id si è indicato che l'attributo corrisponde al campo chiave primaria della tabella del DB
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) definisce la strategia di gestione della chiave primaria
	 * Utilizzando GenerationType.IDENTITY la si adegua alla modalità utilizzata per la tabella film
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
	
	@ManyToOne(
			cascade = CascadeType.REFRESH
	)
	@JoinColumn(
			name = "star",
			referencedColumnName = "id"
	)
	private Star star;
	
	@ManyToOne(
			cascade = CascadeType.REFRESH
	)
	@JoinColumn(
			name = "director",
			referencedColumnName = "id"
	)
	private Director director;
	
	@ManyToOne(
			cascade = CascadeType.REFRESH
	)
	@JoinColumn(
			name = "genre",
			referencedColumnName = "id"
	)
	private Genre genre;
	
	@ManyToOne(
			cascade = CascadeType.REFRESH
	)
	@JoinColumn(
			name = "similar",
			referencedColumnName = "id"
	)
	private Similar similar;
	
	@OneToMany (
			mappedBy = "film",
			cascade = CascadeType.ALL, // Se si inserisce/aggiorna/cancella un film si inseriscono/aggiornano/cancellano anche i trailer di quel film
			orphanRemoval = true, // E' utilizzato per fare in modo che, l'eliminazione di un film, comporti l'eliminazione automatica di tutti gli oggetti trailer di quel film (rimasti appunto orfani)
			fetch = FetchType.EAGER
	)
	@JsonIgnore
	private List<Trailer> trailers = new ArrayList<>();

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
	
	public Star getStar() {
		return star;
	}

	public void setStar(Star star) {
		this.star = star;
	}
	
	public Director getDirector() {
		return director;
	}

	public void setDirector(Director director) {
		this.director = director;
	}
	
	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}
	
	public Similar getSimilar() {
		return similar;
	}

	public void setSimilar(Similar similar) {
		this.similar = similar;
	}
	
	public List<Trailer> getTrailers() {
		return trailers;
	}

	public void setTrailers(List<Trailer> trailers) {
		this.trailers = trailers;
	}
	
}
