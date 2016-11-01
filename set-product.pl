#!/usr/bin/env perl
#


use strict;
use warnings;
use Benchmark;

my $t0 = Benchmark->new();

use Set::Product qw(product);

my @range = ( 'a' .. 'z' );
my @aset = ( );

for(my $k = 1;$k <= int($ARGV[0]);++$k) {
  push(@aset, \@range);
}

product { print(STDOUT "@_\n"); } @aset;

my $t1 = Benchmark->new();
my $td = timediff( $t1, $t0 );

print(STDERR "$0 $ARGV[0] ", timestr( $td ) . qq[\n]);

exit(0);
