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
	del /f /q *.o *.exe
#	rm -f *.o *.exe
#rm 은 리눅스용 
#del 윈도우용
#하지만 실제 cmd 창이 어떤 운영체제에 기반이냐에 따라 다를수 있음 

# Phony targets (so files named 'clean', 'all', etc. won't conflict)
.PHONY: all clean run