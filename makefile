CC= gcc
CFLAGS= -Wall -Wextra -Wpedantic -O3 -I.

all: test
ex: ashio.c examples/example.c
ex_str: ashio.c examples/struct_example.c

.PHONY:
test:
	$(CC) $(CFLAGS) ashio.c examples/example.c -o ex
	$(CC) $(CFLAGS) ashio.c examples/struct_example.c -o ex_str

.PHONY:
clean:
	rm ex ex_str
