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
INPUT:copy("$source", "$dest") or die "THIS FAILED! \n"; 

say "Restart press Y to Stop press N";

$cancel = <STDIN>;
chomp $cancel;

if( $cancel eq "N") { 

say "Canceling";
exit;
}else {
	if ( $cancel eq "Y"){
goto INPUT;}
}
