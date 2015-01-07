use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Design;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Design

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.design>

=cut

__PACKAGE__->table("public.design");

=head1 ACCESSORS

=head2 trial_id

  data_type: 'integer'
  is_nullable: 1

=head2 obs_id

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "trial_id",
  { data_type => "integer", is_nullable => 1 },
  "obs_id",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fPqIk/Ju3u5xqUmZeHj6vQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
