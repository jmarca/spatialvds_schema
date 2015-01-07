use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersection;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersection

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_taz_intersections>

=cut

__PACKAGE__->table("public.vds_taz_intersections");

=head1 ACCESSORS

=head2 gid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'vds_taz_intersections_gid_seq'

=head2 vds_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 taz_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 fraction

  data_type: 'real'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "gid",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "vds_taz_intersections_gid_seq",
  },
  "vds_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "taz_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "fraction",
  { data_type => "real", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</gid>

=back

=cut

__PACKAGE__->set_primary_key("gid");

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

=head2 vd

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::Vd>

=cut

__PACKAGE__->belongs_to(
  "vd",
  "Testbed::Spatial::VDS::Schema::Result::Public::Vd",
  { id => "vds_id" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1I3M22oAzUj4b4S/BvFXDQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
