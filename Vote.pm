package Schema::Data::Commons::Vote;

use strict;
use warnings;

our $VERSION = 0.01;

sub data {
	return {
		'role' => [
			[1, 'admin', 'Admin role.', undef],
			[2, 'jury_member', 'Jury member role.', undef],
		],
		'vote_type' => [
			[1, 'jury_marking', 'Voting type for jury marking.', undef],
			[2, 'public_voting', 'Voting type for public voting.', undef],
		],
	};
}

1;

__END__
