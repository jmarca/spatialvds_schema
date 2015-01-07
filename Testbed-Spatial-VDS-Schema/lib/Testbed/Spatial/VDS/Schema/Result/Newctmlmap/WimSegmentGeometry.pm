use utf8;
package Testbed::Spatial::VDS::Schema::Result::Newctmlmap::WimSegmentGeometry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Newctmlmap::WimSegmentGeometry

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<newctmlmap.wim_segment_geometry>

=cut

__PACKAGE__->table("newctmlmap.wim_segment_geometry");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_nullable: 0

=head2 wim_sequence_id

  data_type: 'integer'
  is_nullable: 0

=head2 refnum

  data_type: 'integer'
  is_nullable: 1

=head2 direction

  data_type: 'text'
  is_nullable: 0

=head2 seggeom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_nullable => 0 },
  "wim_sequence_id",
  { data_type => "integer", is_nullable => 0 },
  "refnum",
  { data_type => "integer", is_nullable => 1 },
  "direction",
  { data_type => "text", is_nullable => 0 },
  "seggeom",
  { data_type => "geometry", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_no>

=item * L</direction>

=back

=cut

__PACKAGE__->set_primary_key("site_no", "direction");

=head1 UNIQUE CONSTRAINTS

=head2 C<wim_segment_geometry_wim_sequence_id_key>

=over 4

=item * L</wim_sequence_id>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "wim_segment_geometry_wim_sequence_id_key",
  ["wim_sequence_id"],
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bYUhX+Oen0d16GCP5/S0Qg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
