#!/usr/bin/env perl
#

use strict;
use warnings;
use Benchmark;

my $t1 = Benchmark->new();

use Math::Cartesian::Product;

my @r = [ 'a'..'z' ];

cartesian { print "@_\n"; } (@r) x int($ARGV[0]);

my $t2 = Benchmark->new();
my $td = timediff( $t2, $t1 );

print(STDERR "$0 @ARGV " . timestr( $td ) . qq[\n]);

exit(0);
