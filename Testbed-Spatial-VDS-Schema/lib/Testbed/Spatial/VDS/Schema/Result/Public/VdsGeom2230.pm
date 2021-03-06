use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsGeom2230;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsGeom2230

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_geom_2230>

=cut

__PACKAGE__->table("public.vds_geom_2230");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_nullable: 0

=head2 geom_2230

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_nullable => 0 },
  "geom_2230",
  { data_type => "geometry", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</vds_id>

=back

=cut

__PACKAGE__->set_primary_key("vds_id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pBiZNbRBo6CtoPY/KCqueQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
