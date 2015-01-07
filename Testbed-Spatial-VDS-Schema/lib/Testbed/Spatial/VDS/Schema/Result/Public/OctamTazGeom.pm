use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamTazGeom;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamTazGeom

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_taz_geom>

=cut

__PACKAGE__->table("public.octam_taz_geom");

=head1 ACCESSORS

=head2 gid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'octam_taz_gid_seq'

=head2 taz_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 area

  data_type: 'double precision'
  is_nullable: 1

=head2 id1

  data_type: 'integer'
  is_nullable: 1

=head2 area1

  data_type: 'double precision'
  is_nullable: 1

=head2 perimeter

  data_type: 'double precision'
  is_nullable: 1

=head2 octam3_reg

  data_type: 'integer'
  is_nullable: 1

=head2 octam3_re1

  data_type: 'integer'
  is_nullable: 1

=head2 taz

  data_type: 'integer'
  is_nullable: 1

=head2 caa_

  data_type: 'integer'
  is_nullable: 1

=head2 rsa_

  data_type: 'integer'
  is_nullable: 1

=head2 tier1_

  data_type: 'integer'
  is_nullable: 1

=head2 the_geom

  data_type: 'geometry'
  is_nullable: 1

=head2 geom_2771

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "gid",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "octam_taz_gid_seq",
  },
  "taz_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "area",
  { data_type => "double precision", is_nullable => 1 },
  "id1",
  { data_type => "integer", is_nullable => 1 },
  "area1",
  { data_type => "double precision", is_nullable => 1 },
  "perimeter",
  { data_type => "double precision", is_nullable => 1 },
  "octam3_reg",
  { data_type => "integer", is_nullable => 1 },
  "octam3_re1",
  { data_type => "integer", is_nullable => 1 },
  "taz",
  { data_type => "integer", is_nullable => 1 },
  "caa_",
  { data_type => "integer", is_nullable => 1 },
  "rsa_",
  { data_type => "integer", is_nullable => 1 },
  "tier1_",
  { data_type => "integer", is_nullable => 1 },
  "the_geom",
  { data_type => "geometry", is_nullable => 1 },
  "geom_2771",
  { data_type => "geometry", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</gid>

=back

=cut

__PACKAGE__->set_primary_key("gid");

=head1 UNIQUE CONSTRAINTS

=head2 C<taz_id_unique>

=over 4

=item * L</taz_id>

=back

=cut

__PACKAGE__->add_unique_constraint("taz_id_unique", ["taz_id"]);

=head1 RELATIONS

=head2 taz

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamTaz>

=cut

__PACKAGE__->belongs_to(
  "taz",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamTaz",
  { taz_id => "taz_id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8HRtbWde/dWSCLRI9aPbVA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
