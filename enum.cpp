/* This program must be compiled with -std=c++11 and -fpermissive.
 * C++11 is required for the list-initialization of newtm.  Permissive
 * is required to remediate "passing map as 'this' arg of mapped
 * type.. discards qualifiers".  I have no idea what that means.
 *
 * Tested with the following compilers:
 *  gcc (GCC) 4.7.2 20120921 (Red Hat 4.7.2-2) F17, F18
 *  gcc (GCC) 4.6.3 20120306 (Red Hat 4.6.3-2) F16        (use -std=c++0x)
 *  gcc (GCC) 4.4.6 20120305 (Red Hat 4.4.6-4) CentOS 6.2 (use -std=c++0x)
 */
#include <iostream>
#include <map>
#include <string>

using namespace std;

enum newt { eye, ear, nose };

const map<newt, string> newtm = {
	{eye, "The Eye"},
	{ear, "The Ear"},
};


string func(newt &n) {
	return newtm[n];
}

int main() 
{
//	string e = newtm[eye];
	newt e = ear;

	cout << "eye: " << newtm[eye] << endl;
	cout << "ear: " << func(e) << endl;
}
