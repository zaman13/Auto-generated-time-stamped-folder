# Auto-generated-time-stamped-folder
Fortran code for auto generating a time-stamped folder, log file, and data file (csv) to store results of each run of the code. The submodules can be easily incorporated in any program. Useful for cases when the same program must be run many times and the corresponding data must be saved in files. Every time the code is run, a new folder and corresponding files are created.


## Use
The timestamp.f95 and data_write.f95 files are the main submodules. The timestamp.f95 submodule returns a string with data and time information edited in a compact form. The format can be changed by modifying the code. The data_write.f95 submodule creates the directory and writes the files. The data to be written is passed as in inpur arguments. These two submodules can be included in any program and called to save the desired data. The code test_file.f95 is an example of how to use the two submodules. Run the test_file.f95 to test the code.

## Compiling
The test file can be compiled using gfortran:

```
gfortran -c test_file.f95
gfortran test_file.f95 -o test_file.exe
./test_file.exe
```
