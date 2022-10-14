package Schema::Data::Commons::Vote::0_1_0;

use base qw(Schema::Data::Data);
use strict;
use warnings;

use Unicode::UTF8 qw(decode_utf8);

our $VERSION = 0.01;

sub new {
	my ($class, %params) = @_;

	$params{'schema_module'} = 'Schema::Commons::Vote::0_1_0';
	my $self = $class->SUPER::new(%params);

	return $self;
}

sub data {
	my ($self, $variables_hr) = @_;

	return {
		'_order' => [
			'person',
		],

		'hash_type' => [{
			'active' => 1,
			'name' => 'sha_384',
			'created_by_id' => 1,
		}],

		'log_type' => [{
			'description' => 'Load images to competition.',
			'type' => 'load_competition',
			'created_by_id' => 1,
		}, {
			'description' => 'Create competition.',
			'type' => 'create_competition',
			'created_by_id' => 1,
		}],

		'person' => [{
			'email' => $variables_hr->{'creator_email'},
			'name' => $variables_hr->{'creator_name'},
			'wm_username' => $variables_hr->{'creator_wm_username'},
		}],

		'role' => [{
			'description' => 'Admin role.',
			'name' => 'admin',
			'created_by_id' => 1,
		}, {
			'description' => 'Jury member role.',
			'name' => 'jury_member',
			'created_by_id' => 1,
		}],

		'validation_type' => [{
			'description' => 'Checks number of photos by author.',
			'type' => 'check_author_photos',
			'created_by_id' => 1,
		}, {
			'description' => 'Checks if the dimensions are greater than defined.',
			'type' => 'check_image_dimension',
			'created_by_id' => 1,
		}, {
			'description' => 'Checks if the smaller dimension is greater than defined.',
			'type' => 'check_image_dimensions_short',
			'created_by_id' => 1,
		}, {
			'description' => 'Checks if each image is in one section.',
			'type' => 'check_image_in_one_section',
			'created_by_id' => 1,
		}, {
			'description' => 'Checks if image size is greater than defined.',
			'type' => 'check_image_size',
			'created_by_id' => 1,
		}, {
			'description' => 'Checks if image was created between defined dates.',
			'type' => 'check_image_created',
			'created_by_id' => 1,
		}, {
			'description' => 'Checks if image was uploaded between defined dates.',
			'type' => 'check_image_uploaded',
			'created_by_id' => 1,
		}],

		'vote_type' => [{
			'description' => 'Voting type for jury marking.',
			'type' => 'jury_marking',
			'created_by_id' => 1,
		}, {
			'description' => 'Voting type for public voting.',
			'type' => 'public_voting',
			'created_by_id' => 1,
		}],
	};
}

sub required_variables {
	my $self = shift;

	return (
		'creator_name',
		'creator_email',
	);
}

1;

__END__
