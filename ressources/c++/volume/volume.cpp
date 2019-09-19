#include <iostream>
using namespace std;

int main(){
	int longueur;
	int largeur;
	int profondeur;
	int resultat;

	cout<<"Calcul de Volume"<<endl;
	cout<<"Indiquez la longueur"<<endl;
	cin>>longueur;
	cout<<"Indiquez la largeur"<<endl;
	cin>>largeur;
	cout<<"indiquer la profondeur"<<endl;
	cin>>profondeur;
	resultat=longueur*largeur*profondeur;
	cout<<"Le volume est de : "<<resultat<<" m³"<<endl;

	return 0;
}
