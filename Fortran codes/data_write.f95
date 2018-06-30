
! Author: Mohammad Asif Zaman

SUBROUTINE data_write(str,fname, data1_size, data1)
! -> CSV file operation 17th Aug., 2012. (M -> 18th Aug., 2012) (edited on June 29, 2018)
	CHARACTER(len=*), INTENT(in) :: str
	CHARACTER(len=*), INTENT(in) :: fname
	
		
	integer, INTENT(in) :: data1_size
	real(kind(1.0d0)), INTENT(in) :: data1(data1_size)
	
	
	
	integer :: loop1
	character(len=11 + len(str)) :: command_Make  ! usual length = 29
	character(len=24 + len(fname)) ::command_File ! usual length = 35
	
	command_Make = 'mkdir ' // 'Data_' // str
	call system(Command_Make)
	command_File =   'Data_' // str // '\' // fname 	! the file name must be 11 characters, including . and extension
	open  (20, file = command_File)
		do loop1 = 1, data1_size
			write (20,*) loop1, ",", data1(loop1)  ! add more columns by inserting "," and a data variable.
		end do
	close (20)

! <- CSV file operation 17th Aug., 2012.



! -> Log file operation
	command_File =   'Data_' // str // '\' // 'logfile.txt'
	open  (11, file = command_File)

	write (11,*) "======================================================"
	write (11,*) "Time stamp = ", str
	write (11,*) "======================================================"

	write (11,*) "======================================================"
	write (11,*) "Header"
	write (11,*) "--------------------------------------------------------------------------------------------"
	write (11,*) ".."
	write (11,*) ".."
	write (11,*) "======================================================"

	write (11,*)

	write (11,*) "======================================================"
	write (11,*) "Performance parameters"
	write (11,*) "--------------------------------------------------------------------------------------------"
	write (11,*) "Total CPU time = ", time_end - time_start, "seconds"
	write (11,*) ".."
	write (11,*) ".."
	write (11,*) "======================================================"


	write (11,*) "Results ="
	write (11,*) "--------------------------------------------------------------------------------------------"


	do loop1 = 1, data1_size
		write (11,*) data1(loop1)
	end do

	write (11,*) "======================================================"
	close(11)

! <- Log file operation

END SUBROUTINE data_write