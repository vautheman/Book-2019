#include <iostream>
using namespace std;

int main(){
	int nbTenPremsPair = 10;
	int nbAfficher = 18;

	cout<<"Les dix premier nombre pair"<<endl;

	for( int noTenPremsPair = 0; noTenPremsPair<nbTenPremsPair; noTenPremsPair++)
	{
		cout<<nbAfficher-(noTenPremsPair*2)<<endl;
	}
	cout<<endl;
	
	return 0;
}

