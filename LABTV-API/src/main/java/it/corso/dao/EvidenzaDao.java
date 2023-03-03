package it.corso.dao;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Evidenza;

public interface EvidenzaDao extends CrudRepository<Evidenza, String> {
	
}
