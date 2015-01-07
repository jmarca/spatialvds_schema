use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::GeomId;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::GeomId

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.geom_ids>

=cut

__PACKAGE__->table("public.geom_ids");

=head1 ACCESSORS

=head2 gid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'geom_ids_gid_seq'

=head2 dummy

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "gid",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "geom_ids_gid_seq",
  },
  "dummy",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</gid>

=back

=cut

__PACKAGE__->set_primary_key("gid");

=head1 RELATIONS

=head2 geom_points_4269

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::GeomPoints4269>

=cut

__PACKAGE__->might_have(
  "geom_points_4269",
  "Testbed::Spatial::VDS::Schema::Result::Public::GeomPoints4269",
  { "foreign.gid" => "self.gid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 geom_points_4326

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::GeomPoints4326>

=cut

__PACKAGE__->might_have(
  "geom_points_4326",
  "Testbed::Spatial::VDS::Schema::Result::Public::GeomPoints4326",
  { "foreign.gid" => "self.gid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pDA0+N24cETvPUVgu6w12Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
