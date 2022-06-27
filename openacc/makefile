 # compiler
# use PGI compiler for OpenACC
FC = mpif90
FCFLAG = -fast
FCFLAG_EXTRA = -acc -Minfo=acc 
#FCFLAGS2 = -mp
FCFLAGS  = $(FCFLAG) $(FCFLAG_EXTRA)

CC = mpicc 
CCFLAGS = -fast -gopt -Mipa=fast -Mlist

 # source files and objects
SRCF90= data.f90                        \
        definitions.f90                 \
        pack_kernel.f90                 \
        tea.f90                         \
        report.f90                      \
        timer.f90                       \
        parse.f90                       \
        read_input.f90                  \
        initialise_chunk_kernel.f90     \
        initialise_chunk.f90            \
        build_field.f90                 \
        update_halo_kernel.f90          \
        update_halo.f90                 \
        start.f90                       \
        generate_chunk_kernel.f90       \
        generate_chunk.f90              \
        initialise.f90                  \
        field_summary_kernel.f90        \
        field_summary.f90               \
        calc_dt_kernel.f90              \
        calc_dt.f90                     \
        timestep.f90                    \
        set_field_kernel.f90            \
        set_field.f90                   \
        tea_leaf_jacobi.f90             \
        tea_leaf_cg.f90                 \
        tea_leaf_cheby.f90              \
        tea_leaf_ppcg.f90               \
        tea_solve.f90                   \
        visit.f90                       \
        tea_leaf.f90                    \
        diffuse.f90                      \
	helper.f90

SRCS = $(patsubst %.f90, %.o, $(SRCF90)) 
#	$(patsubst %.h, %.mod, $(wildcard *.h))

$(info "test test")
$(info "SRC list" $(SRCS))

 # program name
PROGRAM = tea_leaf

all: $(PROGRAM)

$(PROGRAM): $(SRCS) c_lover 
	$(FC) $(FCFLAGS) -o $@ $^

# $@ file name of the target of the rule 
# $< name of the first prerequiresite 
# $% target member name
# $^ name of all reprequisites

%.o: %.f90 makefile
	$(FC) $(FCFLAGS) -c -o $@ $<

#%.mod: %.h
#	$(FC) $(FCFLAGS) -o $@ $<

# %.o: %.c
#    $(FC) $(FCFLAGS) -o $@ $<

c_lover: *.c makefile
	$(CC) $(CCFLAGS) -c -o $@     \
	timer_c.c
makefile: 

clean:
	rm -f *.o *.mod $(PROGRAM)

