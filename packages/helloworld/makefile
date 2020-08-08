CC=gcc
CFLAGS=-I.
RM = rm -rf
OBJ = helloworld.o
APP = helloworld
%.o: %.c)
		$(CC) -c -o $@ $< $(CFLAGS)
helloworld: $(OBJ)
		$(CC) -o $@ $^ $(CFLAGS)
clean:
		$(RM) $(OBJ) $(APP)
