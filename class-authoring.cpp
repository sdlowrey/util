#include <iostream>
#include "class-authoring.h"

using namespace std;

int main() 
{
	Derived d(3);
	cout << "d.B = " << d.B() << endl;
}
