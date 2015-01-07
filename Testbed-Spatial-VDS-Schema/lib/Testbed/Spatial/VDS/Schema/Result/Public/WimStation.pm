use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimStation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimStation

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_stations>

=cut

__PACKAGE__->table("public.wim_stations");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_nullable: 0

=head2 loc

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 lanes

  data_type: 'integer'
  is_nullable: 0

=head2 vendor

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 wim_type

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 cal_pm

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 abs_pm

  data_type: 'double precision'
  is_nullable: 1

=head2 latitude

  data_type: 'numeric'
  is_nullable: 1

=head2 longitude

  data_type: 'numeric'
  is_nullable: 1

=head2 last_modified

  data_type: 'date'
  default_value: ('now'::text)::date
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_nullable => 0 },
  "loc",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "lanes",
  { data_type => "integer", is_nullable => 0 },
  "vendor",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "wim_type",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "cal_pm",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "abs_pm",
  { data_type => "double precision", is_nullable => 1 },
  "latitude",
  { data_type => "numeric", is_nullable => 1 },
  "longitude",
  { data_type => "numeric", is_nullable => 1 },
  "last_modified",
  {
    data_type     => "date",
    default_value => \"('now'::text)::date",
    is_nullable   => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_no>

=back

=cut

__PACKAGE__->set_primary_key("site_no");

=head1 RELATIONS

=head2 summaries_5min_classes

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Wim::Summaries5minClass>

=cut

__PACKAGE__->has_many(
  "summaries_5min_classes",
  "Testbed::Spatial::VDS::Schema::Result::Wim::Summaries5minClass",
  { "foreign.site_no" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 summaries_5min_speeds

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Wim::Summaries5minSpeed>

=cut

__PACKAGE__->has_many(
  "summaries_5min_speeds",
  "Testbed::Spatial::VDS::Schema::Result::Wim::Summaries5minSpeed",
  { "foreign.site_no" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 summaries_daily_speed_classes

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Wim::SummariesDailySpeedClass>

=cut

__PACKAGE__->has_many(
  "summaries_daily_speed_classes",
  "Testbed::Spatial::VDS::Schema::Result::Wim::SummariesDailySpeedClass",
  { "foreign.site_no" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_wim_distances

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsWimDistance>

=cut

__PACKAGE__->has_many(
  "vds_wim_distances",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsWimDistance",
  { "foreign.wim_id" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_counties

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimCounty>

=cut

__PACKAGE__->has_many(
  "wim_counties",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimCounty",
  { "foreign.wim_id" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_districts

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimDistrict>

=cut

__PACKAGE__->has_many(
  "wim_districts",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimDistrict",
  { "foreign.wim_id" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_freeways

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimFreeway>

=cut

__PACKAGE__->has_many(
  "wim_freeways",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimFreeway",
  { "foreign.wim_id" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_lanes_by_hour_report

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimLaneByHourReport>

=cut

__PACKAGE__->has_many(
  "wim_lanes_by_hour_report",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimLaneByHourReport",
  { "foreign.site_no" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_points_4269

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimPoints4269>

=cut

__PACKAGE__->might_have(
  "wim_points_4269",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimPoints4269",
  { "foreign.wim_id" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_points_4326

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimPoints4326>

=cut

__PACKAGE__->might_have(
  "wim_points_4326",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimPoints4326",
  { "foreign.wim_id" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_statuses

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimStatus>

=cut

__PACKAGE__->has_many(
  "wim_statuses",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimStatus",
  { "foreign.site_no" => "self.site_no" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2Y+6JJWUbWhpwVl2IAkV6A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
