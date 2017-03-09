.. conan documentation master file, created by
   sphinx-quickstart on Thu Mar  9 16:41:32 2017.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

*conan*
=======

is a toolbox for functional CONnectivity ANalysis in Matlab





Installation
------------

Prerequisites
`````````````

- 64-bit Linux
- 64-bit Matlab
- The GCC C compiler
- A working MEX setup that uses GCC to compile the MEX files

Download
````````
Clone the repository.
::

$ git clone --recursive https://github.com/kloewe/conan.git

Build
`````
Change to the root directory of the cloned repository and build the MEX files.

::

$ cd conan
$ make

Set up
``````
Add the relevant directories to the Matlab path.
::

$ make install


Documentation
-------------

A description of each function can be displayed in Matlab using
::

>> help <function-name>


Bugs
----

If you run into problems, please send an email to kl@kristianloewe.com.


Citation
--------

If you use this program, please cite:

| Loewe K, Donohue SE, Schoenfeld MA, Kruse R, Borgelt C (2016).
| Memory-efficient analysis of dense functional connectomes.
| *Frontiers in Neuroinformatics* 10:50.
| `doi <http://dx.doi.org/10.3389/fninf.2016.00050>`__

| Loewe K, Grueschow M, Stoppel C, Kruse R, and Borgelt C (2014).
| Fast construction of voxel-level functional connectivity graphs.
| *BMC Neuroscience* 15:78.
| `doi <http://dx.doi.org/10.1186/1471-2202-15-78>`__
