


PROGRAM Mytriangle

    IMPLICIT NONE

    REAL        :: a, b, c          ! the 3 sides of the triangle
    REAL        :: p                ! half perimeter
    REAL        :: Area             ! area
    LOGICAL     :: Cond1, Cond2     ! Some logical conditions 

    PRINT *, 'Welcome, please enter the lenghts of the 3 sides: '

    READ(*,*) a, b, c 

    PRINT *, 'Okay, these are the lenghts of the 3 sides: '

    WRITE(*,*) "a = ", a 
    WRITE(*,*) "b = ", b
    WRITE(*,*) "c = ", c
    WRITE(*,*) 


    Cond1 = (a > 0.) .AND. (b > 0.) .AND. (c > 0.0) 
    Cond2 = (a + b > c) .AND. (a + c > b) .AND. (b + c > a) 

    IF (Cond1 .AND. Cond2) THEN 

        p = (a + b +c) / 2.0
        Area = SQRT(p * (p - a) * (p- b) * (p - c))

        WRITE(*,*) "Triangle area = ", Area

    ELSE

        WRITE(*,*) "ERROR: This is not a triangle ." 

    END IF


END PROGRAM Mytriangle