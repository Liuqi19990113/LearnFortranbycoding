!   two ways to judge
    
    
!   If(expression) Then
!       .....
!       .....
!   End If


!   If(expression) ...


!  Muti judgment
!  If(expression) Then
!    .....
!  Else If(expression) Then
!    .....  
!  Else
!    .....
!  End If
Program process_control
    Implicit none
    Real :: key_value
    integer :: option
    Real, Parameter :: pi = 3.1415926
    Write(*,*) 'input your option, 1 is circle and 2 is square'
    Read(*,*) option
    Write(*,*) 'input your key value'
    Read(*,*) key_value
    Outer :If(option == 1) Then                    !name if to make it easy to read
        Write(*,*) "The areas is ", pi*(key_value**2)
    Else If(option == 2) Then
        Write(*,*) "The areas is ", (key_value**2)         
    Else
        Write(*,*) "Output error"
    End If Outer         
End Program process_control