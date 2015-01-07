use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamNode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamNode

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_nodes>

=cut

__PACKAGE__->table("public.octam_nodes");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 x

  data_type: 'integer'
  is_nullable: 1

=head2 y

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "x",
  { data_type => "integer", is_nullable => 1 },
  "y",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 octam_links_frnodes

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamLink>

=cut

__PACKAGE__->has_many(
  "octam_links_frnodes",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamLink",
  { "foreign.frnode" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 octam_links_tonodes

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamLink>

=cut

__PACKAGE__->has_many(
  "octam_links_tonodes",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamLink",
  { "foreign.tonode" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 octam_nodes_geom_2230

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamNodesGeom2230>

=cut

__PACKAGE__->might_have(
  "octam_nodes_geom_2230",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamNodesGeom2230",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 octam_nodes_geom_2875

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamNodesGeom2875>

=cut

__PACKAGE__->might_have(
  "octam_nodes_geom_2875",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamNodesGeom2875",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Q/gbcPKOMAjvci/wajcJYg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
