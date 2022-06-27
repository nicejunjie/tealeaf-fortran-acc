program hello

use MPI 

integer :: ierror, irank, nrank

call MPI_INIT(ierror) 
call MPI_COMM_SIZE(MPI_COMM_WORLD, nrank, ierror) 
call MPI_COMM_RANK(MPI_COMM_WORLD, irank, ierror)


print *, "hello from rank ", irank


call MPI_FINALIZE(ierror)



end program hello
