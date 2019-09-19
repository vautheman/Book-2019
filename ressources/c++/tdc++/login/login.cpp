#include <iostream>
using namespace std;

int main(){
	string user;
	getchar pwd;

	cout<<"Authentification requise"<<endl;
	// User
	cout<<"User :"<<endl;
	cin>>user;
	//Password
	cout<<"password :"<<endl;
	cin>>pwd;

	if (user=="root" && pwd=="123"){
		cout<<"Bonjour admin"<<endl;
	}
	else
	{
		cout<<"Erreur d'authentification"<<endl;
	}
	
	return 0;
}
