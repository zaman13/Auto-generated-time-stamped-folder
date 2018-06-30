
! Author: Mohammad Asif Zaman
! Original codes: August, 2012
! Edit: June, 2018

program main1


! -> File operation parameters
CHARACTER(len=18) :: str                ! usual length = 18

! <- File operation parameters


integer, parameter :: psize = 30

real(kind(1.0d0)) :: x(psize) = 0
real(kind(1.0d0)) :: time_start, time_end
integer :: loop1


call cpu_time(time_start)
	! Main code goes here
	
	call random_number(x)


call cpu_time(time_end)



call timestamp(str)



print *, "======================================================"
print *, "Time stamp = ", str
print *, "======================================================"

print *, "======================================================"
print *, "Header"
print *, "--------------------------------------------------------------------------------------------"
print *, ".."
print *, ".."
print *, "======================================================"

print *,


print *, "======================================================"
print *, "Performance parameters"
print *, "--------------------------------------------------------------------------------------------"
print *, "Total CPU time = ", time_end - time_start, "seconds"
print *, ".."
print *, ".."
print *, "======================================================"


print *, "Results ="
print *, "--------------------------------------------------------------------------------------------"


do loop1 = 1, psize
	print *, x(loop1)
end do

print *, "======================================================"



call data_write(str,'data_01.csv',psize, x)






contains

	include 'timestamp.f95'
	include 'data_write.f95'

	
	
	
end program main1

