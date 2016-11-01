#!/usr/bin/env perl
#

use strict;
use warnings;
use Benchmark;

my $t0 = Benchmark->new();

use Set::CartesianProduct::Lazy;

my @range = ('a' .. 'z');
my @aset = ( );

for(my $i = 1;$i <= int($ARGV[0]);++$i) {
  push(@aset, \@range);

  my $cpl = Set::CartesianProduct::Lazy->new( @aset );

  for(my $j = 0;$j < $cpl->count;++$j) {
    print(STDOUT join(q[ ], @{$cpl->get($j)}) . "\n");
  }
}

my $t1 = Benchmark->new();
my $td = timediff( $t1, $t0 );

print(STDERR "$0 $ARGV[0] " . timestr( $td ) . qq[\n]);

exit(0);
