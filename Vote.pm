package Schema::Data::Commons::Vote;

use base qw(Schema::Data::Data);
use strict;
use warnings;

use Unicode::UTF8 qw(decode_utf8);

our $VERSION = 0.01;

sub new {
	my ($class, %params) = @_;

	$params{'schema_module'} = 'Schema::Commons::Vote';
	my $self = $class->SUPER::new(%params);

	return $self;
}

sub data {
	return {
		'hash_type' => [{
			'active' => 1,
			'hash_type_id' => 1,
			'name' => 'sha_384',
		}],

		'role' => [{
			'description' => 'Admin role.',
			'name' => 'admin',
			'role_id' => 1,
		}, {
			'description' => 'Jury member role.',
			'name' => 'jury_member',
			'role_id' => 2,
		}],

		'validation_type' => [{
			'description' => 'Checks number of photos by author.',
			'type' => 'check_author_photos',
			'validation_type_id' => 1,
		}, {
			'description' => 'Checks if the dimensions are greater than defined.',
			'type' => 'check_image_dimension',
			'validation_type_id' => 2,
		}, {
			'description' => 'Checks if the smaller dimension is greater than defined.',
			'type' => 'check_image_dimensions_short',
			'validation_type_id' => 3,
		}, {
			'description' => 'Checks if each image is in one section.',
			'type' => 'check_image_in_one_section',
			'validation_type_id' => 4,
		}, {
			'description' => 'Checks if image size is greater than defined.',
			'type' => 'check_image_size',
			'validation_type_id' => 5,
		}, {
			'description' => 'Checks if image was created between defined dates.',
			'type' => 'check_image_created',
			'validation_type_id' => 6,
		}, {
			'description' => 'Checks if image was uploaded between defined dates.',
			'type' => 'check_image_uploaded',
			'validation_type_id' => 7,
		}],

		'vote_type' => [{
			'description' => 'Voting type for jury marking.',
			'type' => 'jury_marking',
			'vote_type_id' => 1,
		}, {
			'description' => 'Voting type for public voting.',
			'type' => 'public_voting',
			'vote_type_id' => 2,
		}],
	};
}

1;

__END__
