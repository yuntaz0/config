function mcd
	if test (count $argv) -eq 0
		echo "Please provide a directory neme"
		return 1
	end
	mkdir -p $argv[1]
	cd $argv[1]
end
