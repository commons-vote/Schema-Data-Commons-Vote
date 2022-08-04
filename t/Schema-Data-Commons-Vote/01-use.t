use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Schema::Data::Commons::Vote');
}

# Test.
require_ok('Schema::Data::Commons::Vote');
