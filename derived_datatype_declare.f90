!derived data type declare
PROGRAM derived_data_program

    TYPE man                                    !定义结构体
        CHARACTER(LEN = 20) :: name 
        CHARACTER(LEN = 20) :: country
        CHARACTER(LEN = 20) :: sex 
        INTEGER :: age
        REAL :: height
    END TYPE man

    TYPE(man) :: LiuQi                           !定义结构体对象

    LiuQi%name = 'LiuQi'
    LiuQi%country = 'China'
    LiuQi%sex = 'male'
    LiuQi%age = 22
    LiuQi%height = 175.0
    
    WRITE(*,*) "LiuQi 's age is " , LiuQi%age

END PROGRAM derived_data_program