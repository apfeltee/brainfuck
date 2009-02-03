FC=ifort
LANG=C
FCFLAGS=-g -O0
LDFLAGS=-O0

OBJS=mod_brainfuck.o brainfuck.o

brainfuck: $(OBJS)
	$(FC) $(LDFLAGS) -o $(@) $(^)

%.o: %.f90
	$(FC) $(FCFLAGS) -c -o $(@) $(<)

clean:
	rm -f *.o *.mod brainfuck

test: brainfuck
	./brainfuck