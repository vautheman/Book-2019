#include <iostream>
using namespace std;

int main(){

	int longueur;
	int largeur;
	int profondeur1;
	int profondeur2;
	int resultat;

	cout<<"Calcul du volume d'une piscine aux deux extrémités différentes"<<endl;
	cout<<"Indiquez la longueur"<<endl;
	cin>>longueur;
	cout<<"Indiquez la largeur"<<endl;
	cin>>largeur;
	cout<<"Indiquez la première profondeur"<<endl;
	cin>>profondeur1;
	cout<<"Indiquez la deuxième profondeur"<<endl;
	cin>>profondeur2;

	resultat=longueur*largeur*(profondeur1*profondeur2)/2;

	cout<<"Le volume de votre piscine est de : "<<resultat<<" m³"<<endl;

	return 0;
}
