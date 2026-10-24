#include <stdio.h>
#include <cargs.h>

int main(void) {
    ArgDef def = newArgDef("hello", STRING, false);

    printf("Name to the argument definition is: %s\n", def.name);

    return 0;
}
