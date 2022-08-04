use strict;
use warnings;

use Schema::Data::Commons::Vote;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Data::Commons::Vote::VERSION, 0.01, 'Version.');
