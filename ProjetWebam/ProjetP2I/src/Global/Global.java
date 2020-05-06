package Global;

import java.awt.Color;
import java.awt.Image;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import affichage.CoordonneePoint;


public class Global {
	public static int largeurFenetre = 1000;
	public static int hauteurFenetre = 1000;
	
	public static int positionXTitre = largeurFenetre/2;
	public static int positionYTitre = 50;
	public static Color couleurTitre = Color.BLACK;
	
	private static int espacementEntreTexte = 200;
	private static int espacementXAvecLesValeurs = 300;
	private static int espacementYAvecLesValeurs = 100;
	
	public static int positionXDate = 100;
	public static int positionYDate = hauteurFenetre/5;
	public static Color couleurDate = Color.BLACK;
	
	public static int positionXValeurDate = positionXDate + espacementXAvecLesValeurs;
	public static int positionYValeurDate = positionYDate + espacementYAvecLesValeurs;
	public static Color couleurValeurDate = Color.BLACK;
	
	public static String valeurJour = "06";
	public static String valeurMois = "05";
	public static String valeurAnnee = "2020";
	public static String valeurHeure = "10";
	
	public static int positionXTemperature = positionXDate;
	public static int positionYTemperature = positionYDate + espacementEntreTexte;
	public static Color couleurTemperature = Color.BLACK;
	
	public static int positionXValeurTemperature = positionXTemperature + espacementXAvecLesValeurs;
	public static int positionYValeurTemperature = positionYTemperature + espacementYAvecLesValeurs;
	public static Color couleurValeurTemperature = Color.BLACK;
	
	public static String valeurTemperature = "10";
	
	public static int positionXVent = positionXTemperature;
	public static int positionYVent = positionYTemperature + espacementEntreTexte;
	public static Color couleurVent = Color.BLACK;
	
	public static int positionXValeurVent = positionXVent + espacementXAvecLesValeurs;
	public static int positionYValeurVent = positionYVent + espacementYAvecLesValeurs;
	public static Color couleurValeurVent = Color.BLACK;
	
	public static String valeurVent = "10";

	public static int positionXHumidite = positionXVent;
	public static int positionYHumidite = positionYVent + espacementEntreTexte;
	
	private static Image imgHorloge;
	private static CoordonneePoint positionHorloge = new CoordonneePoint(positionXDate, positionYDate+30);
	
	private static Image imgTemperature;
	private static CoordonneePoint positionTemperature = new CoordonneePoint(positionXTemperature, positionYTemperature+30);
	
	public static CoordonneePoint[] tabCoordonnee = new CoordonneePoint[2];
	public static Image[] tabImage = new Image[2];
	
	
	public static void importerImages() {
	try {
	imgHorloge = ImageIO.read(new File("src/Images/horloge.png"));
	imgTemperature = ImageIO.read(new File("src/Images/temperature.png"));
	}
    catch (IOException e) {
        e.printStackTrace();
      }
	creationTableau();
	}
	public static void creationTableau() {
		tabCoordonnee[0] = positionHorloge;
		tabImage[0] = imgHorloge;
		
		tabCoordonnee[1] = positionTemperature;
		tabImage[1] = imgTemperature;
	}

}
