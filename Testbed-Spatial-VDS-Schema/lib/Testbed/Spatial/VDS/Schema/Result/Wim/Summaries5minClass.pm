use utf8;
package Testbed::Spatial::VDS::Schema::Result::Wim::Summaries5minClass;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Wim::Summaries5minClass

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<wim.summaries_5min_class>

=cut

__PACKAGE__->table("wim.summaries_5min_class");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 ts

  data_type: 'timestamp'
  is_nullable: 0

=head2 wim_lane_no

  data_type: 'integer'
  is_nullable: 0

=head2 veh_class

  data_type: 'integer'
  is_nullable: 0

=head2 veh_count

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "ts",
  { data_type => "timestamp", is_nullable => 0 },
  "wim_lane_no",
  { data_type => "integer", is_nullable => 0 },
  "veh_class",
  { data_type => "integer", is_nullable => 0 },
  "veh_count",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_no>

=item * L</ts>

=item * L</wim_lane_no>

=item * L</veh_class>

=back

=cut

__PACKAGE__->set_primary_key("site_no", "ts", "wim_lane_no", "veh_class");

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CiFYnCvlYns0rLLq6QnHMg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
