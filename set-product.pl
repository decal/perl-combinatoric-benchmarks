#!/usr/bin/env perl

use strict;
use warnings;
use Set::Product qw(product);

my @range = ( 'a' .. 'z' );

product { print(STDOUT "@_\n"); } \@range, \@range, \@range, \@range, \@range;

exit(0);
