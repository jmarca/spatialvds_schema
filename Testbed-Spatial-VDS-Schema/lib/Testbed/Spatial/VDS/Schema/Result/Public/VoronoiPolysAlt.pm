use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VoronoiPolysAlt;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VoronoiPolysAlt

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.voronoi_polys_alt>

=cut

__PACKAGE__->table("public.voronoi_polys_alt");

=head1 ACCESSORS

=head2 gid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'voronoi_polys_alt_gid_seq'

=head2 vds_id

  data_type: 'integer'
  is_nullable: 1

=head2 type_id

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 freeway_dir

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 geom_4326

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "gid",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "voronoi_polys_alt_gid_seq",
  },
  "vds_id",
  { data_type => "integer", is_nullable => 1 },
  "type_id",
  { data_type => "char", is_nullable => 1, size => 2 },
  "freeway_dir",
  { data_type => "char", is_nullable => 1, size => 1 },
  "geom_4326",
  { data_type => "geometry", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</gid>

=back

=cut

__PACKAGE__->set_primary_key("gid");

=head1 UNIQUE CONSTRAINTS

=head2 C<voronoi_polys_alt_uniq>

=over 4

=item * L</vds_id>

=item * L</type_id>

=item * L</freeway_dir>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "voronoi_polys_alt_uniq",
  ["vds_id", "type_id", "freeway_dir"],
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yfEpAwkROmEyWTXx5BgHTA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
