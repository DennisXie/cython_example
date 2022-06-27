files := file1 file2	# variables can use either ${} or $()
some_file: $(files)
	echo "Look at this variable: " ${files}
	touch some_file

only_depend: file1 file2	# only file1 and file2

file1:
	touch file1
	echo $@		# $@ contains the target name
file2:
	touch file2

print: $(wildcard *.c)	# * searches filesystem for mathcing filenames
	ls -la $?	# $? the result of last command

clean:
	rm -f ${files}
