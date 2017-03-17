Installation
============

Prerequisites
-------------

- 64-bit Linux
- 64-bit Matlab
- The GCC C compiler
- A working MEX setup that uses GCC to compile the MEX files

Download
--------
Clone the repository.
::

$ git clone --recursive https://github.com/kloewe/conan.git

Build
-----
Change to the root directory of the cloned repository and build the MEX files.

::

$ cd conan
$ make

Set up
------
Add the relevant directories to the Matlab path.
::

$ make install
