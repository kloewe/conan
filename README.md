# conan
#### CONnectivity ANalysis tools in Matlab


##### Prerequisites
* 64-bit Linux
* 64-bit Matlab
* The GCC C compiler
* A working MEX setup that uses GCC to compile the MEX files


##### Download
Clone the repository.
```
$ git clone --recursive https://github.com/kloewe/conan.git
```


##### Installation
Change to the root directory of the cloned repository and run `make` to compile the MEX files.
Then, run `make install` to add the relevant directories to the Matlab path.
```
$ cd conan
$ make
$ make install
```


##### Documentation
A description of each function can be displayed in Matlab using
```
>> help <function-name>
```


##### Bugs
If you run into problems, please send an email to kl@kristianloewe.com.
