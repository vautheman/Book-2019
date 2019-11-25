#include <iostream>
using namespace std;

int main(){
	float longueur;
	float largeur;
	float resultat;

	cout<<"Calculateur de surface"<<endl;
	cout<<"Indiquez la longueur"<<endl;
	cin>>longueur;
	cout<<"Indiquez la largeur"<<endl;
	cin>>largeur;

	resultat=longueur*largeur;

	cout<<"La surface est de : "<<resultat<<" m²"<<endl;

	return 0;
}
