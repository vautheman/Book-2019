#include <iostream>
using namespace std;

int main(){
	string prenom;
	string nom;

	cout<<"Quelle es votre nom"<<endl;
	getline(cin, nom);
	cout<<"Quelle est votre prenom"<<endl;
	getline(cin,prenom);
	cout<<"Bienvenue"<<prenom <<nom<<" au BTS SIO"<<endl;

	return 0;
}
