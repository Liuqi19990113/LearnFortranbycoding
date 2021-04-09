!array and struct
PROGRAM array_program

    IMPLICIT NONE
    INTEGER , DIMENSION(5,5) :: matrix
    INTEGER :: integer_array(3) = (/2 ,3 ,5 /)   !另一种定义数组的方法，定义的同时为数组赋值
    INTEGER :: i,j,K
    REAL , DIMENSION(2:6) :: real_array   !定义一个实数数组，其下标为2到6 
    
    
    outer : DO i = 1,5
        inner : DO j = 1,5
                    matrix(i,j) = 10    !为矩阵赋值
        END DO inner
    END DO outer

    DO k = 2,6
        real_array(k) = k + 1
        WRITE(*,*) real_array(k)      
    END DO

    


END PROGRAM array_program