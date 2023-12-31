#!/usr/bin/perl
#
# Write a program that reads a list of numbers (on separate lines) until end-of-
# input and then prints for each number the corresponding person’s name from the
# list shown below. (Hardcode this list of names into your program. That is, it should
# appear in your program’s source code.) For example, if the input numbers were
# 1, 2, 4, and 2, the output names would be fred, betty, dino, and betty:
# fred betty barney dino wilma pebbles bamm-bamm
#

@names = qw( fred betty barney dino wilma pebbles bamm-bamm );

chomp(@lines = <STDIN>);

foreach $line (@lines) {
	print $names[$line-1];
	print "\n";
}

