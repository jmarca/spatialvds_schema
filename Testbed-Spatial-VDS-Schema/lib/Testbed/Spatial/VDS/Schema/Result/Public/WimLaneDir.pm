use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimLaneDir;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimLaneDir

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_lane_dir>

=cut

__PACKAGE__->table("public.wim_lane_dir");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
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
  is_nullable: 1

=head2 facility

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_nullable => 0 },
  "direction",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "lane_no",
  { data_type => "integer", is_nullable => 0 },
  "wim_lane_no",
  { data_type => "integer", is_nullable => 1 },
  "facility",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_no>

=item * L</direction>

=item * L</lane_no>

=back

=cut

__PACKAGE__->set_primary_key("site_no", "direction", "lane_no");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zzMle7DG299suhbKTQKxfA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
