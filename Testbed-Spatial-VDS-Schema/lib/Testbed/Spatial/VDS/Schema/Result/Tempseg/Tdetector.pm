use utf8;
package Testbed::Spatial::VDS::Schema::Result::Tempseg::Tdetector;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Tempseg::Tdetector

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<tempseg.tdetector>

=cut

__PACKAGE__->table("tempseg.tdetector");

=head1 ACCESSORS

=head2 refnum

  data_type: 'integer'
  is_nullable: 1

=head2 direction

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 detector_id

  data_type: 'text'
  is_nullable: 1

=head2 geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "refnum",
  { data_type => "integer", is_nullable => 1 },
  "direction",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "detector_id",
  { data_type => "text", is_nullable => 1 },
  "geom",
  { data_type => "geometry", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sIraQas9itR0GdaskAArnQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
