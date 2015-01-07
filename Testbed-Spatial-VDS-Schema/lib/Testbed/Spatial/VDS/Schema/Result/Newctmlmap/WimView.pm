use utf8;
package Testbed::Spatial::VDS::Schema::Result::Newctmlmap::WimView;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Newctmlmap::WimView

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<newctmlmap.wim_view>

=cut

__PACKAGE__->table("newctmlmap.wim_view");

=head1 ACCESSORS

=head2 wim_sequence_id

  data_type: 'integer'
  is_nullable: 1

=head2 site_no

  data_type: 'integer'
  is_nullable: 1

=head2 loc

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 wim_type

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cal_pm

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 cal_pm_numeric

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

=head2 freeway_id

  data_type: 'integer'
  is_nullable: 1

=head2 direction

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 geom

  data_type: 'geometry'
  is_nullable: 1

=head2 refnum

  data_type: 'integer'
  is_nullable: 1

=head2 seg_geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "wim_sequence_id",
  { data_type => "integer", is_nullable => 1 },
  "site_no",
  { data_type => "integer", is_nullable => 1 },
  "loc",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "wim_type",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cal_pm",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "cal_pm_numeric",
  { data_type => "numeric", is_nullable => 1 },
  "latitude",
  { data_type => "numeric", is_nullable => 1 },
  "longitude",
  { data_type => "numeric", is_nullable => 1 },
  "last_modified",
  { data_type => "date", is_nullable => 1 },
  "freeway_id",
  { data_type => "integer", is_nullable => 1 },
  "direction",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "geom",
  { data_type => "geometry", is_nullable => 1 },
  "refnum",
  { data_type => "integer", is_nullable => 1 },
  "seg_geom",
  { data_type => "geometry", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:i/or5EGWP6RPUM9Oali8WQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
