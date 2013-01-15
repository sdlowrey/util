#include <iostream>

using namespace std;

int main() 
{
	string msg = "size of ";
	cout << msg << "bool: " << sizeof(bool) * 8 << " bits" << endl;
	cout << msg << "char: " << sizeof(char) * 8 << " bits" << endl;
	cout << msg << "char16_t: " << sizeof(char16_t) * 8 << " bits" << endl;
	cout << msg << "wchar_t: " << sizeof(wchar_t) * 8 << " bits" << endl;
	cout << msg << "short: " << sizeof(short) * 8 << " bits" << endl;
	cout << msg << "int: " << sizeof(int) * 8 << " bits" << endl;
	cout << msg << "long: " << sizeof(long) * 8 << " bits" << endl;
	cout << msg << "long long: " << sizeof(long long) * 8 << " bits" << endl;
	cout << msg << "double: " << sizeof(double) * 8 << " bits" << endl;
	cout << msg << "long double: " << sizeof(long double) * 8 << " bits" << endl;
}
