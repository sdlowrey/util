#include <iostream>
#include <string>

void log(std::string msg) {
	std::cout << msg << std::endl;
}

class Base
{
public:
	Base() { log("Base ctor"); };
	Base(int a) : baseA(a) { log("Base ctor with param"); };
	virtual ~Base() = default;
	int A() { return baseA; };
private:
	int baseA;
};

class Derived : public Base
{
public:
	Derived(int b) : derivedB(b) { log("Derived ctor"); };

	// throw() required to avoid "looser throw specifier for virtual" err
	~Derived() throw() { log("Derived dtor"); };
	int B() { return derivedB; };
private:
	const int derivedB;
};
