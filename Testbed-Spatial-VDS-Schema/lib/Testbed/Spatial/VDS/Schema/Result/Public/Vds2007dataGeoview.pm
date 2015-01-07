use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Vds2007dataGeoview;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Vds2007dataGeoview

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.vds_2007data_geoview>

=cut

__PACKAGE__->table("public.vds_2007data_geoview");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 1

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 type_id

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 district_id

  data_type: 'integer'
  is_nullable: 1

=head2 freeway_dir

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 lanes

  data_type: 'integer'
  is_nullable: 1

=head2 cal_pm

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 abs_pm

  data_type: 'double precision'
  is_nullable: 1

=head2 length

  data_type: 'numeric'
  is_nullable: 1

=head2 latitude

  data_type: 'numeric'
  is_nullable: 1

=head2 longitude

  data_type: 'numeric'
  is_nullable: 1

=head2 last_modified

  data_type: 'date'
  is_nullable: 1

=head2 gid

  data_type: 'integer'
  is_nullable: 1

=head2 geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "type_id",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "district_id",
  { data_type => "integer", is_nullable => 1 },
  "freeway_dir",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "lanes",
  { data_type => "integer", is_nullable => 1 },
  "cal_pm",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "abs_pm",
  { data_type => "double precision", is_nullable => 1 },
  "length",
  { data_type => "numeric", is_nullable => 1 },
  "latitude",
  { data_type => "numeric", is_nullable => 1 },
  "longitude",
  { data_type => "numeric", is_nullable => 1 },
  "last_modified",
  { data_type => "date", is_nullable => 1 },
  "gid",
  { data_type => "integer", is_nullable => 1 },
  "geom",
  { data_type => "geometry", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kowYAcf/pmkaeI9ztFF3oQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
