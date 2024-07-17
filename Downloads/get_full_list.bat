echo off
del "get__full_list.txt" 
for /d %%a in (*.*) do dir /on "%%a" >> get__full_list.txt



forfiles /S /M "* *" /C "cmd /C echo @PATH" >> get__full_list.txt


