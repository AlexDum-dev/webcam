package affichage;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontFormatException;
import java.awt.Graphics;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import Global.Global;

import javax.imageio.stream.FileImageInputStream;
import javax.swing.JPanel;

public class PanneauDessin extends JPanel{
	private Font f1;
	private Font f2;
	private Font f3;
	public void paintComponent(Graphics g){
		g.setColor(Color.orange);
		g.fillRect(0,0,this.getWidth(),this.getHeight());
		creationPoliceEcriture(g);
		creationTexte(g);
		creationImage(g);
		affichageValeurs(g);
	}
	
	public void creationPoliceEcriture(Graphics g) {
		f1 = new Font("arial", Font.BOLD, 50);
		try {
			f2 = Font.createFont(Font.TRUETYPE_FONT, new FileInputStream(new File("src/affichage/police/digital-7-mono.ttf"))).deriveFont(Font.PLAIN,200);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FontFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void creationTexte(Graphics g) {
	    g.setFont(f1);
	    g.setColor(Global.couleurTexte);
	    g.drawString("StationMeteo", Global.positionXTitre, Global.positionYTitre); 
	    g.drawString("Date et heure", Global.positionDate.x, Global.positionDate.y); 
	    g.drawString("Température", Global.positionTemperature.x, Global.positionTemperature.y);
	    g.drawString("Vent", Global.positionVent.x, Global.positionVent.y); 
	    g.drawString("Humidite", Global.positionHumidite.x, Global.positionHumidite.y); 
	}
	public void creationImage(Graphics g) {
		for(int i = 0; i< Global.tabImage.length;i++) {
			g.drawImage(Global.tabImage[i], Global.tabCoordonnee[i].x, Global.tabCoordonnee[i].y, this);
		}
	}
	
	public void affichageValeurs(Graphics g) {
	    g.setFont(f2);
		g.drawString(""+Global.valeurJour+"/"+Global.valeurMois+"/"+Global.valeurAnnee+ ":"+Global.valeurHeure+" H", Global.positionValeurDate.x, Global.positionValeurDate.y); 
		g.drawString(""+Global.valeurTemperature+"       C",Global.positionValeurTemperature.x,Global.positionValeurTemperature.y); 
		g.drawString(""+Global.valeurVent+"       km/h",Global.positionValeurVent.x,Global.positionValeurVent.y); 
		g.drawString(""+Global.valeurHumidite+"       %",Global.positionValeurHumidite.x,Global.positionValeurHumidite.y); 
		
	}
}
