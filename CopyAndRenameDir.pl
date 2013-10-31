#############################
# Will copy and a directory contents
# and rename the directory using a 
# a file with directories new name
#############################
use File::Copy::Recursive qw(dircopy);

$directory = "directory";
open(FILE,"new_directory_names.config");

while(<FILE>){
	chomp;
	dircopy($directory,$_);
}

close(FILE);
