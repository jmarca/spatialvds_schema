use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::AirbasinView;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::AirbasinView

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.airbasin_view>

=cut

__PACKAGE__->table("public.airbasin_view");

=head1 ACCESSORS

=head2 gid

  data_type: 'integer'
  is_nullable: 1

=head2 area

  data_type: 'numeric'
  is_nullable: 1

=head2 perimiter

  data_type: 'numeric'
  is_nullable: 1

=head2 basin_name

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 the_geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "gid",
  { data_type => "integer", is_nullable => 1 },
  "area",
  { data_type => "numeric", is_nullable => 1 },
  "perimiter",
  { data_type => "numeric", is_nullable => 1 },
  "basin_name",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "the_geom",
  { data_type => "geometry", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T74mWPrEf2YDGuJK0RPV/Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
