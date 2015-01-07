use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::I405dir;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::I405dir

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.i405dir>

=cut

__PACKAGE__->table("public.i405dir");

=head1 ACCESSORS

=head2 ggid

  data_type: 'integer'
  is_nullable: 1

=head2 route_id

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 segment_id

  data_type: 'integer'
  is_nullable: 1

=head2 geom

  data_type: 'geometry'
  is_nullable: 1

=head2 ns_dir

  data_type: 'text'
  is_nullable: 1

=head2 ew_dir

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ggid",
  { data_type => "integer", is_nullable => 1 },
  "route_id",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "segment_id",
  { data_type => "integer", is_nullable => 1 },
  "geom",
  { data_type => "geometry", is_nullable => 1 },
  "ns_dir",
  { data_type => "text", is_nullable => 1 },
  "ew_dir",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xGJlLDoigTfDVy4ZIQtx7A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
