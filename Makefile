cc=g++
cflags = -W -g
target = Array

objects = array.o rangearray.o main.o 

$(target) : $(objects)
	$(cc) $(cflags) -o $(target) $(objects)

%.o : %.c
	$(cc) $(cflags) -c -o $@ $<

array.o rangearray.o main.o : Array.h

.PHONY : clean
clean :
	rm $(target) $(objects)

