#include <iostream>
using namespace std;

int main()
{
	char rep;
	float saisie1;
	float saisie2;
	float resultat;

	do{
		//boucle d'affichage du menu de saisie du choix

		do{
			cout<<"Menu de sélection"<<endl;
			cout<<"Addition tapez A"<<endl;
			cout<<"Multiplication tapez M"<<endl;
			cout<<"Soustraction tapez S"<<endl;
			cout<<"Division tapez D"<<endl;
			cout<<"Quitter tapez Q"<<endl;
			cin>>rep;
		}//fin de boucle qd le choix est Bon
		//Menu de sélection
		while(! (rep=='A' || rep=='a' || rep=='M' || rep=='m' || rep=='S' || rep=='s' || rep=='D' || rep=='d' || rep=='Q' || rep=='q'));
		//en fonction du choix réalisation de l'opération correspondante

		if(rep=='A' || rep=='a')
		{
			cout<<"Addition"<<endl;
			cout<<"Saisir un premier nombre"<<endl;
			cin>>saisie1;
			cout<<"Saisir un deuxième nombre"<<endl;
			cin>>saisie2;
			resultat = saisie1 + saisie2;
			cout<<"Le résultat est de : "<<resultat<<endl;
		}
		else
		{
			if(rep=='M' || rep=='m'){
				cout<<"Multiplication"<<endl;
				cout<<"Saisir un premier nombre"<<endl;
				cin>>saisie1;
				cout<<"Saisir un deuxième nombre"<<endl;
				cin>>saisie2;
				resultat = saisie1 * saisie2;
				cout<<"Le resultat est de : "<<resultat<<endl;
			}
			else
			{

				if(rep=='S' || rep=='s')
				{
					cout<<"Soustraction"<<endl;
					cout<<"Saisir un premier nombre"<<endl;
					cin>>saisie1;
					cout<<"Saisir un premier nombre"<<endl;
					cin>>saisie2;
					resultat = saisie1 - saisie2;
					cout<<"Le resultat est de : "<<resultat<<endl;
				}
				else
				{

					if(rep=='D' || rep=='d')
					{
						cout<<"Division"<<endl;
						cout<<"Saisir un premier nombre"<<endl;
						cin>>saisie1;
						cout<<"Saisir un deuxième nombre"<<endl;
						cin>>saisie2;
						if(saisie1==0 || saisie2==0){
							cout<<"Saisir un nombre différent"<<endl;
						}
						resultat = saisie1 / saisie2;
						cout<<"Le resultat est de : "<<resultat<<endl;
					}
					else
					{	
						if(rep=='Q' || rep=='q')
						{
							cout<<"Au revoir"<<endl;	
						}
						else
						{	
							cout<<"saisie incorrecte"<<endl;
						}
					}
				}
			}
		}
	}//fin de la boucle principale
	while(! (rep=='Q' || rep=='q'));//sortie qd il a tapé q ou Q
	return 0;


}//fin du main 
