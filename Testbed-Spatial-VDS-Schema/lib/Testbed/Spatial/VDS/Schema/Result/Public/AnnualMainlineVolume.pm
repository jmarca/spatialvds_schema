use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::AnnualMainlineVolume;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::AnnualMainlineVolume

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.annual_mainline_volumes>

=cut

__PACKAGE__->table("public.annual_mainline_volumes");

=head1 ACCESSORS

=head2 obs_year

  data_type: 'double precision'
  is_nullable: 1

=head2 annual_truck_vmt

  data_type: 'double precision'
  is_nullable: 1

=head2 annual_veh_vmt

  data_type: 'double precision'
  is_nullable: 1

=head2 vds_id

  data_type: 'integer'
  is_nullable: 1

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 vdstype

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 district

  data_type: 'integer'
  is_nullable: 1

=head2 facility

  data_type: 'text'
  is_nullable: 1

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

=head2 gid

  data_type: 'integer'
  is_nullable: 1

=head2 geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "obs_year",
  { data_type => "double precision", is_nullable => 1 },
  "annual_truck_vmt",
  { data_type => "double precision", is_nullable => 1 },
  "annual_veh_vmt",
  { data_type => "double precision", is_nullable => 1 },
  "vds_id",
  { data_type => "integer", is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "vdstype",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "district",
  { data_type => "integer", is_nullable => 1 },
  "facility",
  { data_type => "text", is_nullable => 1 },
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
  "gid",
  { data_type => "integer", is_nullable => 1 },
  "geom",
  { data_type => "geometry", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:82UYsANbG8yncsp3E/X/6w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
