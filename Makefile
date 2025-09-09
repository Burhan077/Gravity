# Compiler and flags
CXX := g++
CXXFLAGS := -std=c++20 -O2

# Source files
SOURCES := 3DTest.cpp gravity_sim.cpp gravity_sim_3Dgrid.cpp
TARGET := GravitySim

# Detect OS
UNAME_S := $(shell uname -s)
ifeq ($(OS),Windows_NT)
    OS_TYPE := Windows
else
    ifeq ($(UNAME_S),Darwin)
        OS_TYPE := macOS
    else
        OS_TYPE := Linux
    endif
endif

# OS-specific libraries and include paths
ifeq ($(OS_TYPE),Windows)
    TARGET := $(TARGET).exe
    LIBS := -lglfw3 -lopengl32
    INC := -I./include
    LDIR := -L./lib
endif

ifeq ($(OS_TYPE),macOS)
    LIBS := -lglfw -framework OpenGL
    INC := -I/usr/local/include
    LDIR := -L/usr/local/lib
    # For Apple Silicon Homebrew users, uncomment these:
    # INC := -I/opt/homebrew/include
    # LDIR := -L/opt/homebrew/lib
endif

ifeq ($(OS_TYPE),Linux)
    LIBS := -lglfw -lGL -lGLU -lX11 -lpthread -lXrandr -lXi -ldl
    INC := -I/usr/include
    LDIR := -L/usr/lib
endif

# Default target
all: $(TARGET)

# Compile rule
$(TARGET):
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET) $(INC) $(LDIR) $(LIBS)

# Clean rule
clean:
	rm -f $(TARGET)
