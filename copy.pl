#!/usr/bin/perl -w

use feature ':5.18';

use File::Copy;
system("diskutil list");

say "What is the source?";
$source = <STDIN>;
chomp $source;

say "What is the Destination";
$dest = <STDIN>;
chomp $dest;
if(copy_that_shit()){

	say "Restart press Y to Stop press N"; #do you mean to copy the same file again or want to repeat the whole process including what to copy
	$cancel = <STDIN>;
	chomp $cancel;
	if( $cancel eq "N") { 
		say "Canceling";
		#no need for exit cause it will just leave the logic block and exit on it's own.  leaving random exits around can get you in bigger programs cause you'll lose track of them
	}else {
		copy_that_shit();
	}
} else {
	#oh noes, shit went bad.  we might want to log/warn/do some corrective action
}




sub copy_that_shit{
	if(-d $dest){
		copy($source, $dest) or die "THIS FAILED! \n";
	}
	return; #maybe have some success/fail return state (depends on what copy gives you)
}

1;