PROJECT 	:= $(shell pwd)
SRC 		:= $(wildcard $(PROJECT)/src/*.cpp)
CXX 		:= g++
TARGET 		:= Jarvis
FLAGS		:= -O3 -Wall -pg -std=c++11

all : $(TARGET)

$(TARGET) : $(SRC)
	$(CXX) -o $@ $^ $(FLAGS)

.PHONY :

clean :
	rm -f $(TARGET)

help :
	@echo "make : ...create this project..."
	@echo "make clean : ...clean this project workdir..."
	@echo "target will create to current dir bin ..."
