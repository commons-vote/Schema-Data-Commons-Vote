use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Schema data for application Commons vote.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0.05;
author_requires 'Test::More' => 0;
author_requires 'Test::NoWarnings' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
license 'bsd';
name 'Schema-Data-Commons-Vote';
perl_version 5.006002;
readme_from 'Vote.pm';
recursive_author_tests('xt');
resources 'bugtracker' => 'https://github.com/michal-josef-spacek/Schema-Data-Commons-Vote/issues';
resources 'homepage' => 'https://github.com/michal-josef-spacek/Schema-Data-Commons-Vote';
resources 'repository' => 'git://github.com/michal-josef-spacek/Schema-Data-Commons-Vote';
test_requires 'English' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
