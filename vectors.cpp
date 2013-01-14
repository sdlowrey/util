#include <iostream>
#include <vector>

using namespace std;

int func1(int foo)
{
	cout << "func1 foo = " << foo << endl;
	return 1;
};

int func2(int bar)
{
	cout << "func2 bar = " << bar << endl;
	return 0;
};

int main()
{
	vector<int (*)(int)> ops;

	ops.push_back(&func1);
	ops.push_back(&func2);

	cout << "ops vector size: " << ops.size() << endl;

	for (auto it = ops.begin(); it != ops.end(); it++) {
		(*it)(3);
	}
};
