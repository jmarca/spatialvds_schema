use utf8;
package Testbed::Spatial::VDS::Schema::Result::Tempseg::Mostusedroadbit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Tempseg::Mostusedroadbit

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<tempseg.mostusedroadbits>

=cut

__PACKAGE__->table("tempseg.mostusedroadbits");

=head1 ACCESSORS

=head2 year

  data_type: 'integer'
  is_nullable: 1

=head2 timeused

  data_type: 'interval'
  is_nullable: 1

=head2 detector_id

  data_type: 'text'
  is_nullable: 1

=head2 components

  data_type: 'text[]'
  is_nullable: 1

=head2 refnum

  data_type: 'integer'
  is_nullable: 1

=head2 direction

  data_type: 'text'
  is_nullable: 1

=head2 seggeom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "year",
  { data_type => "integer", is_nullable => 1 },
  "timeused",
  { data_type => "interval", is_nullable => 1 },
  "detector_id",
  { data_type => "text", is_nullable => 1 },
  "components",
  { data_type => "text[]", is_nullable => 1 },
  "refnum",
  { data_type => "integer", is_nullable => 1 },
  "direction",
  { data_type => "text", is_nullable => 1 },
  "seggeom",
  { data_type => "geometry", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bUpHUfFmm0vMBmOvXANKYQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
