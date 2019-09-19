
#include <iostream>
using namespace std;

int main(){
	string name1;
	string name2;

	cout<<"Indiquez un nom"<<endl;
	getline(cin, name1);
	cout<<"Indiquez un deuxième nom"<<endl;
	getline(cin, name2);

	if (name1 < name2){
	cout<<name1<<endl<<name2<<endl;
	}
	else
	{
	cout<<name2<<endl<<name1<<endl;
	}
		
	return 0;
}

