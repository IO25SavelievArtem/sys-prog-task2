# Variables
CXX = g++
CXXFLAGS = -std=c++11 -Wall
LDFLAGS = -L. -lCalculator

# Source files
SRCS = main.cpp calculator.cpp
OBJS = $(SRCS:.cpp=.o)
TARGET = CalculatorApp

# Default target
all: libCalculator.so $(TARGET)

# Build the shared library
libCalculator.so: calculator.o
	$(CXX) -shared -o libCalculator.so calculator.o

# Build the executable
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) $(LDFLAGS) -o $(TARGET)

# Clean up
clean:
	rm -f $(OBJS) $(TARGET) libCalculator.so

.PHONY: clean