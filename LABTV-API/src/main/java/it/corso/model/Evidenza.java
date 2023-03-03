package it.corso.model;

import java.io.Serializable;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;

/*
 * Con @Entity si trasforma la classe di modellazione Evidenza in Entity
 * @Table è stato utilizzato per indicare con l'attributo name il nome della tabella del DB che è messa in relazione
 * con la classe di modellazione Evidenza
 * @JsonInclude(JsonInclude.Include.NON_EMPTY) permette di non visualizzare sul JSON gli attributi che non hanno
 * un valore
 * In questo caso è usato per escludere i valori nulli e le stringhe vuote
 */
@Entity
@Table(name = "evidenza")
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class Evidenza implements Serializable {

	/*
	 * Con @Id si è indicato che l'attributo corrisponde al campo chiave primaria della tabella del DB
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) definisce la strategia di gestione della chiave primaria
	 * Utilizzando GenerationType.IDENTITY la si adegua alla modalità utilizzata per la tabella evidenza
	 * Con @Column si è permesso di far relazionare l'attributo con la corrispondente colonna della tabella del DB
	 * @JsonIgnore permette di non far visualizzare l'attributo sul JSON
	 * Con @Transient si indica che quell'attributo non è messo in relazione con una colonna della tabella del DB
	 */
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	
	@Column(nullable = true)
	@JsonIgnore
	private Double rank;
	
	@Transient
	private Integer rankConverted;
	
	@Column(nullable = true)
	@JsonIgnore
	private Double rankUpDown;
	
	@Transient
	private Integer rankUpDownConverted;
	
	@Column(length = 100, nullable = true)
	private String title;
	
	@Column(length = 100, nullable = true)
	private String fullTitle;
	
	@Column(nullable = true)
	@JsonIgnore
	private Double year;
	
	@Transient
	private Integer yearConverted;

	@Column(length = 200, nullable = true)
	private String image;
	
	@Column(length = 100, nullable = true)
	private String crew;
	
	@Column(length = 100, nullable = true)
	private String imDbRating;
	
	@Column(length = 100, nullable = true)
	private String imDbRatingCount;
	
	@Transient
	private Map<String, String> informativeMessages;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Double getRank() {
		return rank;
	}

	public void setRank(Double rank) {
		this.rank = rank;
	}

	public Integer getRankConverted() {
		return rankConverted;
	}

	public void setRankConverted(Integer rankConverted) {
		this.rankConverted = rankConverted;
	}

	public Double getRankUpDown() {
		return rankUpDown;
	}

	public void setRankUpDown(Double rankUpDown) {
		this.rankUpDown = rankUpDown;
	}

	public Integer getRankUpDownConverted() {
		return rankUpDownConverted;
	}

	public void setRankUpDownConverted(Integer rankUpDownConverted) {
		this.rankUpDownConverted = rankUpDownConverted;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFullTitle() {
		return fullTitle;
	}

	public void setFullTitle(String fullTitle) {
		this.fullTitle = fullTitle;
	}

	public Double getYear() {
		return year;
	}

	public void setYear(Double year) {
		this.year = year;
	}

	public Integer getYearConverted() {
		return yearConverted;
	}

	public void setYearConverted(Integer yearConverted) {
		this.yearConverted = yearConverted;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCrew() {
		return crew;
	}

	public void setCrew(String crew) {
		this.crew = crew;
	}

	public String getImDbRating() {
		return imDbRating;
	}

	public void setImDbRating(String imDbRating) {
		this.imDbRating = imDbRating;
	}

	public String getImDbRatingCount() {
		return imDbRatingCount;
	}

	public void setImDbRatingCount(String imDbRatingCount) {
		this.imDbRatingCount = imDbRatingCount;
	}
	
	public Map<String, String> getInformativeMessages() {
		return informativeMessages;
	}

	public void setInformativeMessages(Map<String, String> informativeMessages) {
		this.informativeMessages = informativeMessages;
	}

}
