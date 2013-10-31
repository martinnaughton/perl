#!/usr/bin/perl

###############################
# shows delta of files between 2 folders.
# shows delta of of files if they are in both folders.
# Useful if you have to merge folders to be the same.
###############################

use strict;
use warnings;

use File::DirCompare;
use File::Basename;

compare_dirs("old_folder","new_folder");

sub compare_dirs
{
  my ($old_folder, $new_folder) = @_;
  my $equal = 1;

  File::DirCompare->compare($old_folder, $new_folder, sub {
    my ($old,$new) = @_;
    $equal = 0; # if the callback was called even once, the dirs are not equal

    if ( !$new )
    {
      printf "%s\n", basename($old), dirname($old);
    }
    elsif ( !$old ) {
      printf "File '%s' only exists in dir '%s'.\n", basename($new), dirname($new);
    }
    else
    {
      printf "$old\n";
    }
  });

  return $equal;
}
