use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Schema::Data::Commons::Vote', 'Schema::Data::Commons::Vote is covered.');
