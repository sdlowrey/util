#include <stdio.h>
#include <unistd.h>

int main() {
	long sz;
	sz = sysconf(_SC_PAGE_SIZE);
	printf("%d bytes\n", sz);
}
