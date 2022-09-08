package Schema::Data::Commons::Vote;

use base qw(Schema::Data);
use strict;
use warnings;

use File::Share ':all';

our $VERSION = 0.01;

sub _versions_file {
	my $self = shift;

	my $versions_file = dist_file('Schema-Data-Commons-Vote', 'versions.txt');

	return $versions_file;
}

1;

__END__
