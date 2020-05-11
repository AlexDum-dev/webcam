package affichage;

import java.awt.Color;
import java.awt.Graphics;

import javax.swing.JFrame;
import javax.swing.JPanel;

import Global.Global;

public class Fenetre extends JFrame{
	private PanneauDessin panelPrincipal;
	public Fenetre(){
		this.setTitle("Projet P2I Webcam");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);    
        this.setAlwaysOnTop(true);
        this.setExtendedState(JFrame.MAXIMIZED_BOTH);
        this.setUndecorated(true);
		creationJPanel();
		this.setVisible(true);
		miseAJourValeur();
		
		
		  }
	
	public void creationJPanel() {

		panelPrincipal = new PanneauDessin();
		this.setContentPane(panelPrincipal);
		
	}
	
	public void miseAJourValeur() {
		
		Global.tempsPrecedent = Global.tempsActuel;
		int compteur = 0;
		while(compteur <= 23) {
			Global.tempsActuel = System.currentTimeMillis();
			if(Global.tempsActuel - Global.tempsPrecedent >= 10000) {
				Global.valeurHeure =  Global.tabHeure[compteur];
				Global.valeurTemperature = Global.tabTemperature[compteur];
				Global.valeurVent = Global.tabVent[compteur];
				Global.valeurHumidite = Global.tabHumidite[compteur];
				Global.tempsPrecedent = Global.tempsActuel;
				compteur++;
				repaint();
			}
		}
	}
	
	

}