Program my_first_fortran_code  !结构语句，表示开始
    Implicit None              !显式声明
    integer :: i
    Real :: j = 0.5
    integer , Parameter :: k = 30    !定义常量
    Character(len = 10) :: cp
    cp = 'hello'                          !声明语句要在计算和输出之前
    Do i = 1 , 20
        Write(*,*) i, Selected_int_kind(i)  !输出能够表示十进制位数为i的整形kind
    End Do 
    Write(*,*) k+j
    Write(*,*) cp

End Program my_first_fortran_code   !结构语句，表示结束