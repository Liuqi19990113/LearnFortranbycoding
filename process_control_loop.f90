! two ways to do loop


! Do i = start , end , step
!        .....
! End Do


! Do While(expression)
!        .....
!End Do

Program process_control
    Implicit None
    integer :: i , sum = 0
    integer :: j, k
    Do i = 1, 100 , 2
        sum = sum + i
    End Do
    Write(*,*) 'sum = ', sum

    outer: Do while(sum < 3000)
                sum = sum + 2
           End Do outer
    Write(*,*) 'SUM = ', sum

    !cycle and exit
    outerr : Do j = 1 , 10
        inner : Do k = 1 , 10
           innerif : If(k == 5) Then
                Write(*,*)'j = ' , j , 'k = ', k
                Exit
            Else If(j == 2) Then 
                Write(*,*)'j = ' , j , 'k = ', k
                Exit outerr
            End If innerif
        End Do inner
    End Do outerr

End program process_control
