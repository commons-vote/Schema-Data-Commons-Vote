package Schema::Data::Commons::Vote;

use base qw(Schema::Data);
use strict;
use warnings;

use Class::Utils qw(set_params);
use English;
use Error::Pure qw(err);
use Schema::Commons::Vote;

our $VERSION = 0.01;

sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# db user password.
	$self->{'db_password'} = undef;

	# db user name.
	$self->{'db_user'} = undef;

	# db options.
	$self->{'db_options'} = {};

	# DSN.
	$self->{'dsn'} = undef;

	# Process parameters.
	set_params($self, @params);

	if (! defined $self->{'dsn'}) {
		err "Parameter 'dsn' is required.";
	}
	$self->{'_schema'} = eval {
		Schema::Commons::Vote->connect(
			$self->{'dsn'},
			$self->{'user'},
			$self->{'password'},
			$self->{'db_options'},
		);
	};
	if ($EVAL_ERROR) {
		err 'Cannot connect to Schema database.',
			'Error', $EVAL_ERROR,
		;
	}

	return $self;
}

sub insert {
	my $self = shift;

	my $data_hr = $self->data;
	foreach my $source ($self->{'_schema'}->sources) {
		my $rs = $self->{'_schema'}->source($source);

		# Skip source table without data.
		if (! exists $data_hr->{$rs->name}) {
			next;
		}

		# Insert.
		foreach my $data_hr (@{$data_hr->{$rs->name}}) {
			$self->{'_schema'}->resultset($source)->create($data_hr);
		}
	}

	return;
}

sub data {
	return {
		'hash_type' => [{
			'hash_type_id' => 1,
			'name' => 'sha_384',
			'active' => 1,
		}],

		'role' => [{
			'role_id' => 1,
			'name' => 'admin',
			'description' => 'Admin role.',
		}, {
			'role_id' => 2,
			'name' => 'jury_member',
			'description' => 'Jury member role.'
		}],

		'vote_type' => [{
			'vote_type_id' => 1,
			'type' => 'jury_marking',
			'description' => 'Voting type for jury marking.',
		}, {
			'vote_type_id' => 2,
			'type' => 'public_voting',
			'description' => 'Voting type for public voting.',
		}],
	};
}

1;

__END__
