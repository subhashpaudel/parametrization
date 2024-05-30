module volume_calculator
 contains
 subroutine volume_routine(pi,radius,volume)
 implicit none
 integer,parameter::dp=kind(1.d0)
 real(dp),intent(in)::radius,pi
 real(dp),intent(out)::volume
 
   volume=4.d0/3.d0*pi*radius**3
  
   
   
end subroutine volume_routine
end module volume_calculator
