package initial;

import affichage.Fenetre;
import affichage.LectureFichierTexte;

import java.awt.GraphicsEnvironment;

import Global.Global;
public class Main {

	public static void main(String[] args) {
		Global.importerImages();
		Global.tabHeure = LectureFichierTexte.InitialisationTableau("heure");
		Global.tabTemperature = LectureFichierTexte.InitialisationTableau("temperature");
		Global.tabVent = LectureFichierTexte.InitialisationTableau("vent");
		Global.tabHumidite = LectureFichierTexte.InitialisationTableau("humidite");
		
		Fenetre fenetre = new Fenetre();
	}

}
