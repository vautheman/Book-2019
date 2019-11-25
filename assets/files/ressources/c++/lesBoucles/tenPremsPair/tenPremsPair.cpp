#include <iostream>
using namespace std;

int main(){
	int nbTenPremsPair;

	nbTenPremsPair = 10;

	cout<<"Les dix premier nombre pair"<<endl;

	for( int noTenPremsPair = 0; noTenPremsPair<nbTenPremsPair; noTenPremsPair+=2)
	{
		cout<<noTenPremsPair<<endl;
	}
	cout<<endl;
	
	return 0;
}

