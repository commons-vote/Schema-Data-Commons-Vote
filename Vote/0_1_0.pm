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
			'validation_type',
			'validation_option',
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
		}, {
			'description' => 'Update competition.',
			'type' => 'update_competition',
			'created_by_id' => 1,
		}, {
			'description' => 'Delete section images.',
			'type' => 'delete_competition_images',
			'created_by_id' => 1,
		}, {
			'description' => 'Validation for number of author photos.',
			'type' => 'validation_check_author_photos',
			'created_by_id' => 1,
		}, {
			'description' => 'Validation for photo dimension.',
			'type' => 'validation_check_image_dimension',
			'created_by_id' => 1,
		}, {
			'description' => 'Validation for photo short dimension.',
			'type' => 'validation_check_image_dimensions_short',
			'created_by_id' => 1,
		}, {
			'description' => 'Validation for photo check if is in one section.',
			'type' => 'validation_check_image_in_one_section',
			'created_by_id' => 1,
		}, {
			'description' => 'Validation for photo size.',
			'type' => 'validation_check_image_size',
			'created_by_id' => 1,
		}, {
			'description' => 'Validation for photo dates of creation.',
			'type' => 'validation_check_image_created',
			'created_by_id' => 1,
		}, {
			'description' => 'Validation for photo dates of upload.',
			'type' => 'validation_check_image_uploaded',
			'created_by_id' => 1,
		}],

		'person' => [{
			'email' => $variables_hr->{'creator_email'},
			'name' => $variables_hr->{'creator_name'},
			'wm_username' => $variables_hr->{'creator_wm_username'},
		}],

		'role' => [{
			'description' => 'Competition admin role.',
			'name' => 'competition_admin',
			'created_by_id' => 1,
		}, {
			'description' => 'Admin role.',
			'name' => 'admin',
			'created_by_id' => 1,
		}, {
			'description' => 'Jury member role.',
			'name' => 'jury_member',
			'created_by_id' => 1,
		}],

		'validation_option' => [{
			'created_by_id' => 1,
			'description' => 'Number of photos by author.',
			'option' => 'number_of_photos',
			'option_type' => 'number',
			'validation_type_id' => 1,
		}, {
			'created_by_id' => 1,
			'description' => 'Image minimal width to check.',
			'option' => 'image_width',
			'option_type' => 'number',
			'validation_type_id' => 2,
		}, {
			'created_by_id' => 1,
			'description' => 'Image minimal height to check.',
			'option' => 'image_height',
			'option_type' => 'number',
			'validation_type_id' => 2,
		}, {
			'created_by_id' => 1,
			'description' => 'Image minimal smaller dimension to check.',
			'option' => 'image_dimension',
			'option_type' => 'number',
			'validation_type_id' => 3,
		}, {
			'created_by_id' => 1,
			'description' => 'Image size to check.',
			'option' => 'image_size',
			'option_type' => 'number',
			'validation_type_id' => 5,
		}, {
			'created_by_id' => 1,
			'description' => 'Image created date from to check.',
			'option' => 'created_from',
			'option_type' => 'date',
			'validation_type_id' => 6,
		}, {
			'created_by_id' => 1,
			'description' => 'Image created date to to check.',
			'option' => 'created_to',
			'option_type' => 'date',
			'validation_type_id' => 6,
		}, {
			'created_by_id' => 1,
			'description' => 'Image uploaded date from to check.',
			'option' => 'uploaded_from',
			'option_type' => 'date',
			'validation_type_id' => 7,
		}, {
			'created_by_id' => 1,
			'description' => 'Image uploaded date to to check.',
			'option' => 'uploaded_to',
			'option_type' => 'date',
			'validation_type_id' => 7,
		}],

		'validation_type' => [{
			'description' => 'Checks number of photos by author.',
			'type' => 'check_author_photos',
			'created_by_id' => 1,
			'validation_type_id' => 1,
		}, {
			'description' => 'Checks if the dimensions are greater than defined.',
			'type' => 'check_image_dimension',
			'created_by_id' => 1,
			'validation_type_id' => 2,
		}, {
			'description' => 'Checks if the smaller dimension is greater than defined.',
			'type' => 'check_image_dimensions_short',
			'created_by_id' => 1,
			'validation_type_id' => 3,
		}, {
			'description' => 'Checks if each image is in one section.',
			'type' => 'check_image_in_one_section',
			'created_by_id' => 1,
			'validation_type_id' => 4,
		}, {
			'description' => 'Checks if image size is greater than defined.',
			'type' => 'check_image_size',
			'created_by_id' => 1,
			'validation_type_id' => 5,
		}, {
			'description' => 'Checks if image was created between defined dates.',
			'type' => 'check_image_created',
			'created_by_id' => 1,
			'validation_type_id' => 6,
		}, {
			'description' => 'Checks if image was uploaded between defined dates.',
			'type' => 'check_image_uploaded',
			'created_by_id' => 1,
			'validation_type_id' => 7,
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
