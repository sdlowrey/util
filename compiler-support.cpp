#include <iostream>
#include <string>

using namespace std;

#define xstr(s) str(s)
#define str(s) #s

int main() 
{
	cout << "Compiler C++ standard: " << xstr(__cplusplus) << endl;
}
