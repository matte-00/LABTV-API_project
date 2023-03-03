package it.corso.utility;

public class StringControls {
	
	// Permette di controllare se la stringa contiene solo lo zero
	public static boolean stringContainsOnlyZeros(String string) {
		
		if (Integer.parseInt(string) == 0) {
			return true;
		}
		
		return false;
	
	}
	
}
