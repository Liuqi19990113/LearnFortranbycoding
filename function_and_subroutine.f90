! function and subroutine

PROGRAM use_and_define_function_and_subroutine

    IMPLICIT NONE
    INTEGER :: add   !函数在主程序中要先声明
    INTEGER :: number_1, number_2, number_sum
    PRINT *,'input ur number1 and number2 :'
    READ(*,*) number_1, number_2                          !要注意fortran是默认传地址的，所以要想改变参数值可以用子例程，要想得到返回值用函数，要想传值可以在函数或例程中声明变量时额外加参数
    number_sum = add(number_1,number_2)
    WRITE(*,*) 'sum is ', number_sum
    call max(number_1,number_2)                           !调用子例程要用call
    call min(number_1,number_2)



CONTAINS
    SUBROUTINE min(e_in,f_in)    !可以在程序中最后加入contains实现子例程和函数
        IMPLICIT NONE            
        INTEGER e_in , f_in
        judgement : IF(e_in > f_in) THEN
            WRITE(*,*) e_in, ' is larger than ', f_in 
        ELSE
            WRITE(*,*) f_in, ' is larger than ', e_in 
        END IF judgement
    END SUBROUTINE min
    

END PROGRAM use_and_define_function_and_subroutine



INTEGER FUNCTION add(a_in,b_in)   !函数可以声明在程序之外
    implicit None                  !每个函数都要独自 implicit none一遍
    INTEGER a_in                !对输入参数进行声明
    INTEGER b_in
    add = a_in + b_in          !返回值就是函数名
    RETURN                         !不返回的话就不写return语句
END FUNCTION add 


SUBROUTINE max(c_in,d_in)     !子例程没有返回值
    IMPLICIT NONE            !仍要声明
    INTEGER c_in , d_in
    judgement : IF(c_in > d_in) THEN
        WRITE(*,*) c_in, ' is larger than ', d_in 
    ELSE
        WRITE(*,*) d_in, ' is larger than ', c_in 
    END IF judgement
END SUBROUTINE max