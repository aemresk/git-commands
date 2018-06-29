for /f "tokens=2*" %%i in ('svn status %1 ^| find "?"') do svn add "%%i"  
for /f "tokens=2*" %%i in ('svn status %1 ^| find "!"') do svn delete "%%i" 

svn commit -F *.txt
svn commit -m "Auto commit " %1 