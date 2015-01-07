use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimLaneByHourReport;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimLaneByHourReport

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_lane_by_hour_report>

=cut

__PACKAGE__->table("public.wim_lane_by_hour_report");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 direction

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 lane_no

  data_type: 'integer'
  is_nullable: 0

=head2 wim_lane_no

  data_type: 'integer'
  is_nullable: 0

=head2 ts_hour

  data_type: 'timestamp'
  is_nullable: 0

=head2 volume

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "direction",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "lane_no",
  { data_type => "integer", is_nullable => 0 },
  "wim_lane_no",
  { data_type => "integer", is_nullable => 0 },
  "ts_hour",
  { data_type => "timestamp", is_nullable => 0 },
  "volume",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_no>

=item * L</wim_lane_no>

=item * L</ts_hour>

=back

=cut

__PACKAGE__->set_primary_key("site_no", "wim_lane_no", "ts_hour");

=head1 RELATIONS

=head2 site_no

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimStation>

=cut

__PACKAGE__->belongs_to(
  "site_no",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimStation",
  { site_no => "site_no" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZPbk5jyMi+Ev5IN1ceKG7A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
