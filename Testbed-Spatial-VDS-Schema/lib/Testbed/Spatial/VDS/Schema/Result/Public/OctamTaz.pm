use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamTaz;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamTaz

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_taz>

=cut

__PACKAGE__->table("public.octam_taz");

=head1 ACCESSORS

=head2 taz_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns("taz_id", { data_type => "integer", is_nullable => 0 });

=head1 PRIMARY KEY

=over 4

=item * L</taz_id>

=back

=cut

__PACKAGE__->set_primary_key("taz_id");

=head1 RELATIONS

=head2 octam_sed_2000

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamSed2000>

=cut

__PACKAGE__->might_have(
  "octam_sed_2000",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamSed2000",
  { "foreign.taz_id" => "self.taz_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 octam_taz_geom

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamTazGeom>

=cut

__PACKAGE__->might_have(
  "octam_taz_geom",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamTazGeom",
  { "foreign.taz_id" => "self.taz_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_taz_intersections

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersection>

=cut

__PACKAGE__->has_many(
  "vds_taz_intersections",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersection",
  { "foreign.taz_id" => "self.taz_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_taz_intersections_alts

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersectionsAlt>

=cut

__PACKAGE__->has_many(
  "vds_taz_intersections_alts",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersectionsAlt",
  { "foreign.taz_id" => "self.taz_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_taz_intersections_simples

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersectionsSimple>

=cut

__PACKAGE__->has_many(
  "vds_taz_intersections_simples",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersectionsSimple",
  { "foreign.taz_id" => "self.taz_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:z/PAXKOH5tUDzNRpWUlPFQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
