FC=crun.intel mpiifort
FFLAGS=-O3 -warn -check bounds
SRC=volume_calculator.f90 radius_calculator.f90 parametrization.f90 



OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<
main: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	rm *.o
