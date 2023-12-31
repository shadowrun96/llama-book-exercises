#!/usr/bin/perl
#
# Write a program that asks the user to enter a list of strings on separate lines,
# printing each string in a right-justified, 20-character column. To be certain that the
# output is in the proper columns, print a “ruler line” of digits as well. (This is simply
# a debugging aid.) Make sure that you’re not using a 19-character column by mis-
# take! For example, entering hello, good-bye should give output something like this:
# 123456789012345678901234567890123456789012345678901234567890
#                hello
#             good-bye
my @mystrings;

while(<STDIN>) {
	push @mystrings, $_;
}

$rulerwidth = 60; 

for ($rulertick = 0; $rulertick < ($rulerwidth/10); $rulertick++) {print 0..9;} # ruler
print "\n";

foreach $string (@mystrings) {
	chomp($string);
	
	printf "%20s\n", "$string";
}


