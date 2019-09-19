#include <iostream>
using namespace std;

int main(){
	int longueur;
	int largeur;
	int profondeur;
	int resultat;

	cout<<"Calcul du volume d'une piscine"<<endl;
	cout<<"Indiquez la longueur"<<endl;
	cin>>longueur;
	cout<<"Indiquez la largeur"<<endl;
	cin>>largeur;
	cout<<"Indiquez la profondeur"<<endl;
	cin>>profondeur;
	
	resultat=longueur*largeur*profondeur;

	cout<<"Le volume de votre piscine est de : "<<resultat<<" m³"<<endl;

	return 0;
}
