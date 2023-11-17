CC=g++
CFLAGS=--std=c++11
EXE=tictactoe

# The all target builds the complete project
all: main.o board.o
	$(CC) $(CFLAGS) -o $(EXE) obj/*.o

# The main.o target compiles the main.cpp file
main.o: obj src/main.cpp inc/main.hpp
	$(CC) $(CFLAGS) -c src/main.cpp -o obj/main.o

# The board.o target compiles the board.cpp file
board.o: obj src/board.cpp inc/board.hpp
	$(CC) $(CFLAGS) -c src/board.cpp -o obj/board.o

# The obj target creates the obj directory if it does not exist
obj:
	mkdir -p obj

# The clean target deletes the compiled executable and obj directory
clean:
	rm -f $(EXE)
	rm -rf obj
