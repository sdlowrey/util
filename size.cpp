#include <iostream>

using namespace std;

#define bitsize(t) sizeof(t) * 8

int main() 
{
	cout << "bool: " << bitsize(bool) << " bits" << endl;
	cout << "char: " << bitsize(char) << " bits" << endl;
	cout << "char16_t: " << bitsize(char16_t) << " bits" << endl;
	cout << "wchar_t: " << bitsize(wchar_t) << " bits" << endl;
	cout << "short: " << bitsize(short) << " bits" << endl;
	cout << "int: " << bitsize(int) << " bits" << endl;
	cout << "long: " << bitsize(long) << " bits" << endl;
	cout << "long long: " << bitsize(long long) << " bits" << endl;
	cout << "double: " << bitsize(double) << " bits" << endl;
	cout << "long double: " << bitsize(long double) << " bits" << endl;
}
