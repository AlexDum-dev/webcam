package affichage;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;


import Global.Global;

import javax.swing.JPanel;

public class PanneauDessin extends JPanel{
	public void paintComponent(Graphics g){
		//this.setBounds(0,0,Global.largeurFenetre,Global.hauteurFenetre/2);
		g.setColor(Color.orange);
		g.fillRect(0,0,this.getWidth(),this.getHeight());
		creationTexte(g);
		creationImage(g);
		affichageValeurs(g);
	}
	public void creationTexte(Graphics g) {
	    Font font = new Font("Courier", Font.BOLD, 30);
	    g.setFont(font);
	    g.setColor(Global.couleurTitre);
	    g.drawString("StationMeteo", Global.positionXTitre, Global.positionYTitre); 
	    g.drawString("Date et heure", Global.positionXDate, Global.positionYDate); 
	    g.drawString("Température", Global.positionXTemperature, Global.positionYTemperature);
	    g.drawString("Vent", Global.positionXVent, Global.positionYVent); 
	    g.drawString("Humidite", Global.positionXHumidite, Global.positionYHumidite); 
	}
	public void creationImage(Graphics g) {
		for(int i = 0; i< Global.tabImage.length;i++) {
			g.drawImage(Global.tabImage[i], Global.tabCoordonnee[i].x, Global.tabCoordonnee[i].y, this);
		}
	}
	
	public void affichageValeurs(Graphics g) {
	    Font font = new Font("Courier", Font.BOLD, 50);
	    g.setFont(font);
		g.drawString(""+Global.valeurJour+"/"+Global.valeurMois+"/"+Global.valeurAnnee+ ": "+Global.valeurHeure+"H", Global.positionXValeurDate, Global.positionYValeurDate); 
		g.drawString(""+Global.valeurTemperature+" °C",Global.positionXValeurTemperature,Global.positionYValeurTemperature); 
		g.drawString(""+Global.valeurVent+" km/h",Global.positionXValeurVent,Global.positionYValeurVent); 
		
	}
}
