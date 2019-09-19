#include <iostream>
using namespace std;

int main(){
	float longueur;
	float largeur;
	float resultat;

	cout<<"Indiquez la longueur"<<endl;
	cin>>longueur;
	cout<<"Indiquez la largeur"<<endl;
	cin>>largeur;
	
	resultat=longueur*largeur;

	cout<<"La surface de votre rectangle est de :"<<resultat<<" m²"<<endl;

	return 0;


}

