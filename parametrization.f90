program main
use volume_calculator
use radius_calculator
implicit none
integer,parameter::dp=kind(1.d0)
real(dp) radius,pi,volume,A,center(3),coeff(4)
character(len=15) user_input
pi=3.1415d0
print*,'please enter the input character. Type rgiven,sgiven,cgiven'
      !if radius is explictly given type 'rgiven'  and follow the prompts
      !if surface area of circle is given type 'sgiven' and follow the prompts
      !if center and tangent plane of the sphere is given type 'cgiven' and follow the prompts
      
read*, user_input

 if(user_input=='rgiven')  then
   print*, 'please enter the radius' 
   read*,radius  
   call volume_routine(pi,radius,volume)
   print*,'the volume of the sphere with explicitly given radius is', volume
 
 elseif(user_input=='sgiven') then
 print*,'please enter the surface area of sphere'
 read*,A
  call radius_routine(user_input,A,pi,center,coeff,radius)
  call volume_routine(pi,radius,volume)
  print*,'the volume of the sphere with given surface area is', volume

   
   
 elseif(user_input=='cgiven') then 
    print*,'please enter the center of sphere h,k,l'
    read*,center
    print*,'please enter a,b,c,d for the tangent line ax+by+cz+d=0'
    read*,coeff    
    call radius_routine(user_input,A,pi,center,coeff,radius) ! this calculates the radius    
    call volume_routine(pi,radius,volume)  ! this routine gives volume
    print*, 'the volume of the sphere tangent with given plane with given center is', volume
   
  else
  print*,'Please make your own separate routine according to your target goal'
   
 endif

end program main
