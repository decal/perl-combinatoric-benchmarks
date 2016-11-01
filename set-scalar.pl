#!/usr/bin/env perl

use strict;
use warnings;
use Benchmark;

my $t0 = Benchmark->new();

use Set::Scalar;

my @x = qw[];

for(my $k = 1;$k <= int($ARGV[0]);++$k) {
  my $s = Set::Scalar->new('a' .. 'z');

  push(@x, $s);
}

my $iter = Set::Scalar->cartesian_product_iterator(@x);

while(my @list = $iter->()) {
  print "@list\n";
}

my $t1 = Benchmark->new();
my $td = timediff( $t1, $t0 );

print(STDERR "$0 $ARGV[0] " . timestr( $td ) . "\n");

exit 0;
