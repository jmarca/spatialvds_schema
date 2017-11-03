use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamNodesGeom2230;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamNodesGeom2230

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_nodes_geom_2230>

=cut

__PACKAGE__->table("public.octam_nodes_geom_2230");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "geom",
  { data_type => "geometry", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 octamnode

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamNode>

=cut

__PACKAGE__->belongs_to(
  "octamnode",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamNode",
  { id => "id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r08ZOrQomOv8dNtDRH/7Yg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
