#!/bin/ksh
rm -f test/ver4lib.c
rm -f test/ver4bin.c
bin/rev2c.pl -I test -r include/genlib.rev src/file.rev src/fork.rev src/string.rev -o test/ver4lib.c -e libsome.so somebin
bin/rev2c.pl -I test -r include/genlib.rev src/file.rev src/fork.rev src/string.rev -o test/ver4bin.c -e libsome.so somebin
cat test/ver4lib.c
cat test/ver4bin.c
