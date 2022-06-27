# TeaLeaf
This is my OpenACC porting for TeaLeaf mini-app.   

This particular version of TeaLeaf is written in Fortran, 
and is derived from https://github.com/UK-MAC/TeaLeaf_ref.
The code has been ported to many different programming models, and turns out OpenACC was missing. 
I ported this as a candidate for an ongoing benchmark development.  


Note that TeaLeaf is also available in C : https://github.com/UoB-HPC/TeaLeaf  


## Performance: 

`Hardware:`   dual Xeon E5-2640 v2 + Tesla K20   <br/>
`Software:`   PGI/19.4 + OpenMPI/3.1.4      <br/>

`CPU Rpeak` about 0.25 Tflops,  `GPU Rpeak` about 1.1 Tflops   <br/>
`GPU/CPU Rpeak ratio` about 4x

### profile: 

Sampling profile for serial run is provided in profile.txt

### -- problem 6 (small problem) : 

**MPI 1 rank :**   

real	1m13.791s   <br/>
user	1m12.640s    <br/>
sys	0m0.228s      <br/>

**MPI 16 ranks:**      

real	0m7.688s   <br/>
user	1m59.308s   <br/>
sys	0m0.820s   <br/>

**OpenACC single K20:** 

real	0m13.389s    <br/>
user	0m5.536s   <br/>
sys	0m2.320s   <br/>


### -- problem 7 (medium size problem):   Speed up 3.3x  

**MPI 16 ranks:**  

real	5m21.711s    <br/>
user	85m23.308s   <br/>
sys	0m7.508s   <br/>


**OpenACC single K20: GPU mem high watermark ~2GB**  

real	1m37.851s    <br/>
user	0m58.652s    <br/>
sys	0m27.748s    <br/> 

