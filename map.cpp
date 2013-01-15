#include <iostream>
#include <map>
#include <string>

using namespace std;

int main() {
	map<const int, const string> m = { 
		{12, "varg"},
		{28, "plonk"},
	};

	cout << m[12]<< endl;
	cout << m[28]<< endl;
	cout << m[9]<< endl;
}
