CXX = g++
CXXFLAGS = -std=c++11 -Wall -O2

# Source & Objects
SRCS = main.cpp task.cpp manager.cpp
OBJS = $(SRCS:.cpp=.o)

# Target
TARGET = task_manager.exe

# Default target
all: $(TARGET)

# Link
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compile
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Run
run: $(TARGET)
	./$(TARGET)

# Clean
clean:
	rm -f *.o *.exe

# Phony targets (so files named 'clean', 'all', etc. won't conflict)
.PHONY: all clean run