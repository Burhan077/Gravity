# Gravity

This repository contains a simulation of Gravity showcasing how physics works.

##  Technologies Used

- C++
- OpenGL

##  Project Highlights

- A real mathematics and physics based innovation that showcases gravity in space.
- Completely modular and reproducible code that can be used to teach and learn. 

##  Compiling
The code above needs to be compiled using the GCC Complier
For the tldr users just run make in the root project folder, but you need to install the gcc compiler.

     make
But For those who want to compile and feel the satisfaction of doing it, follow these instructions.
You can get it for windows [msys2](www.msys2.org), or [winlibs](https://winlibs.com/) if you're after a more bare bones version. 
Grab the installer, x86_64 or arm, based on your system and install it to C:/msys64/
Search for MSYS and run 

     pacman -Syu

This updates the system and then install g++ using

     pacman -S mingw-w64-x86_64-gcc

If you need the GNU Debugger install

     pacman -S mingw-w64-x86_64-gdb

To confirm, run 

     g++ --version

Also, for easier workflow with MSYS2, add C:\msys64\mingw64\bin to PATH.
If you're not after the whole MSYS2 stuff, install gcc from [here](https://winlibs.com)
To compile, run

    g++ -std=c++20 3DTest.cpp gravity_sim.cpp gravity_sim_3Dgrid.cpp -o GravitySim.exe \
    -I./include \
    -L./lib -lglfw3 -lopengl32

To install on MacOS, use Homebrew or you can get another C++ compiler by running 

    xcode-select --install
To use homebrew, do this to install Homebrew.

     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  # installs Homebrew
   
Then 

       brew install gcc
You also need glfw and openGL

       brew install glfw

To compile run,

     clang++ -std=c++20 3DTest.cpp gravity_sim.cpp gravity_sim_3Dgrid.cpp -o GravitySim \
    -I/usr/local/include \
    -L/usr/local/lib -lglfw -framework OpenGL


For the Linux people,
1. Arch Linux

       sudo pacman -S gcc

2.Fedora and other Fedora based distros

      sudo dnf install gcc gcc-c++

3.Ubuntu and other Ubuntu based distros

      sudo dnf install gcc gcc-c++

To compile, run 

     g++ -std=c++20 3DTest.cpp gravity_sim.cpp gravity_sim_3Dgrid.cpp -o GravitySim \
    -I/usr/include \
    -L/usr/lib -lglfw -lGL -lGLU -lX11 -lpthread -lXrandr -lXi -ldl


## Additional Notes

This repository is intended to increase knowledge, it was also an experiment I was doing to see whether we can measure the one-way speed of light without breaking physics. That video was by [Veritasium](https://youtu.be/pTn6Ewhb27k?si=1qDU7xZn21-IXhDc)


