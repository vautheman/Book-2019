#include <iostream>
using namespace std;

int main(){
	float nb1;
	float nb2;
	float somme;
	float moy;
	float min;
	float max;

	cout<<"Indiquez un nombre réel"<<endl;
	cin>>nb1;
	cout<<"Indiquez un deuxième nombre réel"<<endl;
	cin>>nb2;
	
	// Somme
	somme=nb1+nb2;
	
	cout<<"La somme est de : "<<somme<<endl;

	//Moyenne
	moy=(nb1+nb2)/2;
	cout<<"La moyenne est de : "<<moy<<endl;

	//Minimum
	
	min=nb1<nb2;
	max=nb1>nb2;

	if (nb1<nb2){
		cout<<"Le nombre le plus petit est : "<<nb1<<endl;
		cout<<"Le nombre le plus grand est : "<<nb2<<endl;
	}
	else
	{
		cout<<"Le nombre le plus petit est : "<<nb2<<endl;
		cout<<"Le nombre le plus grand est : "<<nb1<<endl;
	}

	return 0;

}

