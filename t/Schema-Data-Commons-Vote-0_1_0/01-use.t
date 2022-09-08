use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Schema::Data::Commons::Vote::0_1_0');
}

# Test.
require_ok('Schema::Data::Commons::Vote::0_1_0');
