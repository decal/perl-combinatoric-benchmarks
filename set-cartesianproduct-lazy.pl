#!/usr/bin/env perl
#
#

use strict;
use warnings;
use Set::CartesianProduct::Lazy;

my @a = ('a' .. 'z');
my @anarr = ( );

for(my $i = 0;$i <= 4;++$i) {
  push(@anarr, \@a);

  my $cpl = Set::CartesianProduct::Lazy->new( @anarr );

  for(my $i = 0;$i <= $cpl->last_idx;++$i) {
    print(STDERR join(" ", @{$cpl->get($i)}) . qq[\n]);
  }
}

exit 0;
