#!/usr/bin/env perl
#

use strict;
use warnings;
use Math::Cartesian::Product;
my @r = [ 'a'..'z' ];

cartesian { print "@_\n"; } (@r, @r, @r, @r, @r);
