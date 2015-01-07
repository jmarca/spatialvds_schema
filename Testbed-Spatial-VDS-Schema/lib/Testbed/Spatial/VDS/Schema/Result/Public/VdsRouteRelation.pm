use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsRouteRelation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsRouteRelation

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_route_relation>

=cut

__PACKAGE__->table("public.vds_route_relation");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 adj_pm

  data_type: 'double precision'
  is_nullable: 1

=head2 rel

  data_type: 'integer'
  is_nullable: 1

=head2 vdssnap

  data_type: 'geometry'
  is_nullable: 1

=head2 dist

  data_type: 'double precision'
  is_nullable: 1

=head2 line

  data_type: 'geometry'
  is_nullable: 1

=head2 vds_sequence_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'vds_route_relation_vds_sequence_id_seq'

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "adj_pm",
  { data_type => "double precision", is_nullable => 1 },
  "rel",
  { data_type => "integer", is_nullable => 1 },
  "vdssnap",
  { data_type => "geometry", is_nullable => 1 },
  "dist",
  { data_type => "double precision", is_nullable => 1 },
  "line",
  { data_type => "geometry", is_nullable => 1 },
  "vds_sequence_id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "vds_route_relation_vds_sequence_id_seq",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MvY+0Kf2pzKoqyLi6C5cGQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
