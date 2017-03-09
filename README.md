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


##### Citation
If you use this program, please cite:

Loewe K, Donohue SE, Schoenfeld MA, Kruse R, Borgelt C (2016).<br>
Memory-efficient analysis of dense functional connectomes.<br>
_Frontiers in Neuroinformatics_ 10:50.<br>
[doi](http://dx.doi.org/10.3389/fninf.2016.00050)

Loewe K, Grueschow M, Stoppel C, Kruse R, and Borgelt C (2014).<br>
Fast construction of voxel-level functional connectivity graphs.<br>
_BMC Neuroscience_ 15:78.<br>
[doi](http://dx.doi.org/10.1186/1471-2202-15-78)
