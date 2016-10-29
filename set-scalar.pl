#!/usr/bin/env perl

use strict;
use warnings;
use Set::Scalar;

my $a = Set::Scalar->new('a'..'z');
my $b = Set::Scalar->new('a'..'z');
my $c = Set::Scalar->new('a'..'z');
my $d = Set::Scalar->new('a'..'z');
my $e = Set::Scalar->new('a'..'z');

#my $f = $a->cartesian_product($b);
my $iter = Set::Scalar->cartesian_product($a, $b, $c, $d, $e);

while(my @list = $iter->()) {
  process(@list);
}

exit 0;
