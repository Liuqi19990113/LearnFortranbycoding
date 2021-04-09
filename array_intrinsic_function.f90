! array_intrinsic_function

PROGRAM array_intrinsic_function

    IMPLICIT NONE
    INTEGER , DIMENSION(5) :: vector_a = (/1 , 2 , 3 , 4 ,5/)
    INTEGER , DIMENSION(5) :: vector_b
    INTEGER i,j
    REAL , DIMENSION(3 , 2) :: matrix_a = reshape((/ 2.5 , 3.6 , 4.2 , 3.7 , 2.3 , 4.6 /) , (/3,2/))!reshape可以赋初值，这里相当于把第一个数组分成三行两列 
    REAL , DIMENSION(2 , 3) :: matrix_b
    REAL , DIMENSION(3 , 3) :: results_matrix

    DO i = 1 , size(vector_b)
        vector_b(i) = 6-i
    END DO 
    
    DO i = 1 , 2
        DO j = 1 , 3
            matrix_b(i,j) = i*j              !变量赋初值
        END DO 
    END DO

    results_matrix = matmul(matrix_a,matrix_b)         !矩阵乘法

    WRITE(*,*) dot_product(vector_a,vector_b)           !矢量点乘

    WRITE(*,*) all(vector_a > 4)               

    WRITE(*,*) any(vector_a > 4)

    WRITE(*,*) count(vector_a > 3)

    WRITE(*,*) sum(vector_a)



END PROGRAM array_intrinsic_function
