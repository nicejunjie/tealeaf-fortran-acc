subroutine helper(sflag) 

use tea_module 

implicit none

character(len=8)::sflag

if (sflag=="copy") then 

!$acc data & 
!$acc copy(chunks(1)%field%density)  &
!$acc copy(chunks(1)%field%energy0)  &
!$acc copy(chunks(1)%field%energy1)  &
!$acc copy(chunks(1)%field%u)  &
!$acc copy(chunks(1)%field%u0)  &
!$acc copy(chunks(1)%field%vector_p)  &
!$acc copy(chunks(1)%field%vector_r)  &
!$acc copy(chunks(1)%field%vector_Mi)  &
!$acc copy(chunks(1)%field%vector_w)  &
!$acc copy(chunks(1)%field%vector_z)  &
!$acc copy(chunks(1)%field%vector_Kx)  &
!$acc copy(chunks(1)%field%vector_Ky)  &
!$acc copy(chunks(1)%field%vector_sd)  &
!$acc copy(chunks(1)%field%cellx)  &
!$acc copy(chunks(1)%field%celly)  &
!$acc copy(chunks(1)%field%vertexx)  &
!$acc copy(chunks(1)%field%vertexy)  &
!$acc copy(chunks(1)%field%celldx)  &
!$acc copy(chunks(1)%field%celldy)  &
!$acc copy(chunks(1)%field%vertexdx)  &
!$acc copy(chunks(1)%field%vertexdy)  &
!$acc copy(chunks(1)%field%volume)  &
!$acc copy(chunks(1)%field%xarea)  &
!$acc copy(chunks(1)%field%yarea)  

!$acc end data


else if (sflag == "self") then 

!$acc update & 
!$acc self(chunks(1)%field%density)  &
!$acc self(chunks(1)%field%energy0)  &
!$acc self(chunks(1)%field%energy1)  &
!$acc self(chunks(1)%field%u)  &
!$acc self(chunks(1)%field%u0)  &
!$acc self(chunks(1)%field%vector_p)  &
!$acc self(chunks(1)%field%vector_r)  &
!$acc self(chunks(1)%field%vector_Mi)  &
!$acc self(chunks(1)%field%vector_w)  &
!$acc self(chunks(1)%field%vector_z)  &
!$acc self(chunks(1)%field%vector_Kx)  &
!$acc self(chunks(1)%field%vector_Ky)  &
!$acc self(chunks(1)%field%vector_sd)  &
!$acc self(chunks(1)%field%cellx)  &
!$acc self(chunks(1)%field%celly)  &
!$acc self(chunks(1)%field%vertexx)  &
!$acc self(chunks(1)%field%vertexy)  &
!$acc self(chunks(1)%field%celldx)  &
!$acc self(chunks(1)%field%celldy)  &
!$acc self(chunks(1)%field%vertexdx)  &
!$acc self(chunks(1)%field%vertexdy)  &
!$acc self(chunks(1)%field%volume)  &
!$acc self(chunks(1)%field%xarea)  &
!$acc self(chunks(1)%field%yarea)  

else if (sflag =="device")  then

!$acc update & 
!$acc device(chunks(1)%field%density)  &
!$acc device(chunks(1)%field%energy0)  &
!$acc device(chunks(1)%field%energy1)  &
!$acc device(chunks(1)%field%u)  &
!$acc device(chunks(1)%field%u0)  &
!$acc device(chunks(1)%field%vector_p)  &
!$acc device(chunks(1)%field%vector_r)  &
!$acc device(chunks(1)%field%vector_Mi)  &
!$acc device(chunks(1)%field%vector_w)  &
!$acc device(chunks(1)%field%vector_z)  &
!$acc device(chunks(1)%field%vector_Kx)  &
!$acc device(chunks(1)%field%vector_Ky)  &
!$acc device(chunks(1)%field%vector_sd)  &
!$acc device(chunks(1)%field%cellx)  &
!$acc device(chunks(1)%field%celly)  &
!$acc device(chunks(1)%field%vertexx)  &
!$acc device(chunks(1)%field%vertexy)  &
!$acc device(chunks(1)%field%celldx)  &
!$acc device(chunks(1)%field%celldy)  &
!$acc device(chunks(1)%field%vertexdx)  &
!$acc device(chunks(1)%field%vertexdy)  &
!$acc device(chunks(1)%field%volume)  &
!$acc device(chunks(1)%field%xarea)  &
!$acc device(chunks(1)%field%yarea)  


end if


end subroutine helper
