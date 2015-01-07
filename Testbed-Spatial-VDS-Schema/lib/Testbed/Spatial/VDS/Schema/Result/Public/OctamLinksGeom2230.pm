use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamLinksGeom2230;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamLinksGeom2230

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.octam_links_geom_2230>

=cut

__PACKAGE__->table("public.octam_links_geom_2230");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 1

=head2 frnode

  data_type: 'integer'
  is_nullable: 1

=head2 tonode

  data_type: 'integer'
  is_nullable: 1

=head2 link_geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 1 },
  "frnode",
  { data_type => "integer", is_nullable => 1 },
  "tonode",
  { data_type => "integer", is_nullable => 1 },
  "link_geom",
  { data_type => "geometry", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+AJZ2f/0+0R1TAXKUWT6eg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
