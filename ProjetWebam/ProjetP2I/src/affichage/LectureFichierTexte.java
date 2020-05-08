package affichage;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class LectureFichierTexte {
	private static String cheminFichier;
	
	public static double[] InitialisationTableau(String nomFichier){
		double tabFichier[] = new double[24];
		cheminFichier = "src/affichage/fichierTexte/"+nomFichier+".txt";
		Scanner sc = null;
		int i = 0;
        try {
            try {
                sc = new Scanner(new File(cheminFichier));
                while (sc.hasNextLine()) {
                	tabFichier[i] = Double.parseDouble(sc.nextLine());
                	i++;
                }
            } 
            finally {
                if (sc != null) {
                    sc.close();
                }
            }
        } 
        catch (FileNotFoundException e){
            e.printStackTrace();
        }
        return tabFichier;
	}
}
