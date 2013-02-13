#include <iostream>

using namespace std;

// Cannot figure out how to pass types without using a macro
#define bitsize(t) to_string(sizeof(t) * 8)

void log(string msg)
{
	cout << msg << endl;
};

int main() 
{
	log("Primitive types");
	log("---------------");
	log("bool:         " + bitsize(bool) + " bits");
	log("char:         " + bitsize(char) + " bits");
	log("char16_t:     " + bitsize(char16_t) + " bits");
	log("wchar_t:      " + bitsize(wchar_t) + " bits");
	log("short:        " + bitsize(short) + " bits");
	log("int:          " + bitsize(int) + " bits");
	log("long:         " + bitsize(long) + " bits");
	log("long long:    " + bitsize(long long) + " bits");
	log("double:       " + bitsize(double) + " bits");
	log("long double:  " + bitsize(long double) + " bits");
	log("");
	log("System Things");
	log("-------------");
#ifdef _SC_PAGESIZE
	log("_SC_PAGESIZE: " + to_string(sysconf(_SC_PAGESIZE)));
#endif
}
