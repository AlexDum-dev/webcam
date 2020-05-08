package Global;

import java.awt.Color;
import java.awt.Image;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import affichage.CoordonneePoint;

import java.awt.Dimension;
public class Global {
	
	private static Dimension dimension = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
	private static int hauteurFenetre = (int)dimension.getHeight();
	private static int largeurFenetre  = (int)dimension.getWidth();

	public static Color couleurTexte = Color.BLACK;
	
	public static int positionXTitre = largeurFenetre/2 -100;
	public static int positionYTitre = 50;
	
	
	private static int espacementEntreTexte = 200;
	private static int espacementXAvecLesValeurs = 400;
	private static int espacementYAvecLesValeurs = 100;
	
	
	
	public static CoordonneePoint positionDate = new CoordonneePoint(100,hauteurFenetre/5);
	
	public static CoordonneePoint positionValeurDate = new CoordonneePoint(positionDate.x + espacementXAvecLesValeurs,positionDate.y + espacementYAvecLesValeurs);
	
	public static int valeurJour = 06;
	public static int valeurMois = 05;
	public static int valeurAnnee = 2020;
	public static int valeurHeure = 10;
	
	
	
	public static CoordonneePoint positionTemperature = new CoordonneePoint(positionDate.x,positionDate.y + espacementEntreTexte);
	
	public static CoordonneePoint positionValeurTemperature = new CoordonneePoint(positionTemperature.x + espacementXAvecLesValeurs,positionTemperature.y + espacementYAvecLesValeurs);

	public static double valeurTemperature = 10;
	
	
	
	public static CoordonneePoint positionVent = new CoordonneePoint(positionTemperature.x,positionTemperature.y + espacementEntreTexte);

	public static CoordonneePoint positionValeurVent = new CoordonneePoint(positionVent.x + espacementXAvecLesValeurs,positionVent.y + espacementYAvecLesValeurs);
	
	public static double valeurVent = 10;
	
	

	public static CoordonneePoint positionHumidite = new CoordonneePoint(positionVent.x,positionVent.y + espacementEntreTexte);
	
	public static CoordonneePoint positionValeurHumidite = new CoordonneePoint(positionHumidite.x + espacementXAvecLesValeurs,positionHumidite.y + espacementYAvecLesValeurs);

	public static double valeurHumidite = 20;
	
	
	
	private static Image imgHorloge;
	private static CoordonneePoint positionHorloge = new CoordonneePoint(positionDate.x, positionDate.y+30);
	
	private static Image imgTemperature;
	private static CoordonneePoint positionImageTemperature = new CoordonneePoint(positionTemperature.x, positionTemperature.y+30);
	
	private static Image imgVent;
	private static CoordonneePoint positionImageVent = new CoordonneePoint(positionVent.x, positionVent.y+30);
	
	private static Image imgHumidite;
	private static CoordonneePoint positionImageHumidite = new CoordonneePoint(positionHumidite.x, positionHumidite.y+30);
	
	public static CoordonneePoint[] tabCoordonnee = new CoordonneePoint[4];
	public static Image[] tabImage = new Image[4];
	
	
	
	public static double tempsActuel = System.currentTimeMillis();
	public static double tempsPrecedent = 0;
	
	public static double[] tabHeure;
	public static double[] tabTemperature;
	public static double[] tabVent;
	public static double[] tabHumidite;
	
	public static void importerImages() {
	try {
	imgHorloge = ImageIO.read(new File("src/Images/horloge.png"));
	imgTemperature = ImageIO.read(new File("src/Images/temperature.png"));
	imgVent = ImageIO.read(new File("src/Images/vent.png"));
	imgHumidite = ImageIO.read(new File("src/Images/humidite.png"));
	}
    catch (IOException e) {
        e.printStackTrace();
      }
	creationTableau();
	}
	public static void creationTableau() {
		tabCoordonnee[0] = positionHorloge;
		tabImage[0] = imgHorloge;
		
		tabCoordonnee[1] = positionImageTemperature;
		tabImage[1] = imgTemperature;
		
		tabCoordonnee[2] = positionImageVent;
		tabImage[2] = imgVent;
		
		tabCoordonnee[3] = positionImageHumidite;
		tabImage[3] = imgHumidite;
	}

}
