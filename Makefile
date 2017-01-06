CXX = g++-5
CXXFLAGS = -std=c++14 -Wall -MMD -Werror=vla 
EXEC = cc3k
OBJECTS = main.o cell.o grid.o textdisplay.o graphicsdisplay.o character.o player.o enemy.o decorator.o item.o potion.o gold.o stair.o
DEPENDS = ${OBJECTS:.o=.d}

${EXEC}: ${OBJECTS}
	${CXX} ${CXXFLAGS} ${OBJECTS} -o ${EXEC} -lncurses -lX11

-include ${DEPENDS}

.PHONY: clean

clean:
	rm ${OBJECTS} ${EXEC} ${DEPENDS}
