!declare dynamic array
!The dynamic array is the array whose size is not known at compile time but known in execution time
!INTEGER , DEMINSION(:,:) , ALLOCATALBE :: dynamic_array
!allocate(dynamic_array(size_1,size_2))
!deallocate(dynamic_array)  


PROGRAM dynamic_array_program
    
    INTEGER , DIMENSION(:,:) , ALLOCATABLE :: dynamic_array   !声明定义动态数组
    INTEGER s1 , s2 ,i ,j
    WRITE(*,*) 'input your size1 and size2: '
    READ(*,*) s1 ,s2
    ALLOCATE(dynamic_array(s1,s2))               !分配空间       

    DO i = 1 , s1
        DO j = 1 , s2
            dynamic_array(i,j) = i*j
            WRITE(*,*) dynamic_array(i,j)
        END DO 
    END DO

    DEALLOCATE(dynamic_array)               !解除占有的空间

END PROGRAM dynamic_array_program