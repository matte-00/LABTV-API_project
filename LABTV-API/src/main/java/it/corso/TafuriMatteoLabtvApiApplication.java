package it.corso;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TafuriMatteoLabtvApiApplication {

	public static void main(String[] args) {
		
		System.setProperty("org.apache.tomcat.util.buf.UDecoder.ALLOW_ENCODED_SLASH", "true"); // Permette di far accettare al server la barra obliqua
		System.setProperty("org.apache.catalina.connector.CoyoteAdapter.ALLOW_BACKSLASH", "true"); // Permette di far accettare al server la barra rovesciata
		
		SpringApplication.run(TafuriMatteoLabtvApiApplication.class, args);
	
	}

}
