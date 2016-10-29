#!/usr/bin/env perl

use strict;
use warnings;
use List::Gen qw( cartesian );

my @range = ( 'a' .. 'z' );
my @aset = ( );

for(my $k = 0;$k < 4;++$k) {
  push(@aset, \@arange);
}

my $product = cartesian { $_[0] . $_[1] . $_[2] . $_[3] . $_[4] } @aset;

print $product;

exit(0);
#@$product == qw( a1 a2 b1 b2 );
