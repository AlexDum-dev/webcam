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
		this.setSize(Global.largeurFenetre, Global.hauteurFenetre);
		this.setLocationRelativeTo(null);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);    
		this.setResizable(false); 										//Empeche le redimensionnement de la fenetre
	
		creationJPanel();
		miseAJourValeur();
		this.setVisible(true);
		
		  }
	
	public void creationJPanel() {

		panelPrincipal = new PanneauDessin();
		this.setContentPane(panelPrincipal);
		
	}
	
	public void miseAJourValeur() {
		Global.valeurJour = "10";
	}
	
	

}