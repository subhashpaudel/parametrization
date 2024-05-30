module radius_calculator
 contains
 subroutine radius_routine(user_input,A,pi,center,coeff,radius)
 implicit none
 integer,parameter::dp=kind(1.d0)
 real(dp),intent(in),dimension(3)::center
 real(dp),intent(in),dimension(4)::coeff
 real(dp),intent(out)::radius
 real(dp),intent(in)::pi,A
 character(len=15),intent(in)::user_input
 
 if(user_input=='cgiven') then
  radius=abs(coeff(1)*center(1)+coeff(2)*center(2)+coeff(3)*center(3)+coeff(4))/sqrt(coeff(1)**2+coeff(2)**2+coeff(3)**2)
 elseif (user_input=='sgiven') then
  radius=sqrt(A/(4.d0*pi))
 endif
   
end subroutine radius_routine
end module radius_calculator
